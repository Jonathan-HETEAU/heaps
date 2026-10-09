package h3d.scene;

/**
	Base class of the mouse/keyboard camera controllers. Add a controller to the scene to drive `Scene.camera`:
	it listens to the scene events and moves the camera smoothly towards the wanted position every frame.

	The camera position is expressed in spherical coordinates around `target`: `distance`, `theta` (horizontal angle)
	and `phi` (vertical angle, from the Z axis). Use `set` to change them and `loadFromCamera` to start from the
	current camera.
	See `OrbitCameraController` and `FPSCameraController`.
**/
abstract class CameraController extends h3d.scene.Object {
	/**
		The current distance between the camera and its target.
	**/
	public var distance(get, never) : Float;
	inline function get_distance() return curPos.x / curOffset.w;
	/**
		The distance the camera is moving to.
	**/
	public var targetDistance(get, never) : Float;
	inline function get_targetDistance() return targetPos.x / targetOffset.w;
	/**
		The current horizontal angle of the camera around the target, in radians.
	**/
	public var theta(get, never) : Float;
	inline function get_theta() return curPos.y;
	/**
		The current vertical angle of the camera, in radians, from `0` (looking down from above) to `PI` (looking up from below).
	**/
	public var phi(get, never) : Float;
	inline function get_phi() return curPos.z;
	/**
		The current vertical field of view, in degrees.
	**/
	public var fovY(get, never) : Float;
	inline function get_fovY() return curOffset.w;
	/**
		The current position the camera is looking at.
	**/
	public var target(get, never) : h3d.col.Point;
	inline function get_target() return curOffset.toVector();

	/**
		The minimum distance reachable by zooming.
	**/
	public var minDistance : Float = 0.1;
	/**
		The maximum distance reachable by zooming.
	**/
	public var maxDistance : Float = 1e20;
	/**
		If `true`, the mouse wheel changes the distance to the target. Otherwise it moves the camera forward and backward.
	**/
	public var enableZoom = true;
	/**
		The distance multiplier applied for each mouse wheel step.
	**/
	public var zoomAmount = 1.15;
	/**
		The inertia damping of rotations, between `0` (rotation keeps going) and `1` (stops immediately).
	**/
	public var friction = 0.4;
	/**
		The rotation speed multiplier.
	**/
	public var rotateSpeed = 1.;
	/**
		The panning speed multiplier.
	**/
	public var panSpeed = 1.;
	/**
		The smoothing of the camera movement, between `0` (immediate) and `1` (never reaches the target).
	**/
	public var smooth = 0.6;
	/**
		If `false`, the camera `zNear` and `zFar` are adjusted to the distance to the target.
	**/
	public var lockZPlanes = false;
	/**
		The vertical field of view, in degrees, applied by `OrbitCameraController` and `FPSCameraController` every frame.
	**/
	public var wantedFOV = 60.0;
	/**
		The speed of the keyboard movements.
	**/
	public var moveSpeed = 1.0;

	var scene : h3d.scene.Scene;
	var pushing = -1;
	var pushX = 0.;
	var pushY = 0.;
	var pushStartX = 0.;
	var pushStartY = 0.;
	var absStartMouseX = 0;
	var absStartMouseY = 0;
	var moveX = 0.;
	var moveY = 0.;
	var curPos = new h3d.Vector();
	var curOffset = new h3d.Vector4();
	var targetPos = new h3d.Vector(10. / 25., Math.PI / 4, Math.PI * 5 / 13);
	var targetOffset = new h3d.Vector4(0, 0, 0, 0);
	var pushTime : Float;
	var startPush : h2d.col.Point;

	/**
		Creates a controller. It must be added to the scene (directly or through `parent`) to control its camera.
		@param distance The initial distance to the target.
	**/
	public function new(?distance: Float, ?parent : h3d.scene.Object) {
		super(parent);
		set(distance);
		curPos.load(targetPos);
		curOffset.load(targetOffset);
	}

	/**
		Returns the available controller classes (used by editors to let the user pick one).
	**/
	public static function getCameraControllersClass() : Array<Class<h3d.scene.CameraController>>{
		return [OrbitCameraController, FPSCameraController];
	}

	/**
		Returns the index of the class of `ctrl` in `getCameraControllersClass()`, or `-1`.
	**/
	public static function getCameraControllerClassIdx(ctrl : h3d.scene.CameraController) {
		return h3d.scene.CameraController.getCameraControllersClass().indexOf(Type.getClass(ctrl));
	}

	override function onAdd() {
		super.onAdd();
		scene = getScene();
		scene.addEventListener(onEvent);
		if( curOffset.w == 0 )
			curPos.x *= scene.camera.fovY;
		curOffset.w = scene.camera.fovY; // load
		targetPos.load(curPos);
		targetOffset.load(curOffset);
	}

	override function onRemove() {
		super.onRemove();
		scene.removeEventListener(onEvent);
		scene = null;
	}

	override function sync(ctx: h3d.scene.RenderContext) {
		// Disable Camera Sync during bake
		if( ctx.scene.renderer.renderMode == LightProbe )
			return;

		if( !ctx.visibleFlag && !alwaysSyncAnimation ) {
			super.sync(ctx);
			return;
		}

		if( moveX != 0 ) {
			targetPos.y += moveX * 0.003 * rotateSpeed;
			moveX *= 1 - friction;
			if( Math.abs(moveX) < 1 ) moveX = 0;
		}

		if( moveY != 0 ) {
			targetPos.z -= moveY * 0.003 * rotateSpeed;
			var E = 2e-5;
			var bound = Math.PI - E;
			if( targetPos.z < E ) targetPos.z = E;
			if( targetPos.z > bound ) targetPos.z = bound;
			moveY *= 1 - friction;
			if( Math.abs(moveY) < 1 ) moveY = 0;
		}

		var dt = hxd.Math.min(1, 1 - Math.pow(smooth, ctx.elapsedTime * 60));
		curOffset.lerp(curOffset, targetOffset, dt);
		curPos.lerp(curPos, targetPos, dt );

		syncCamera();

		super.sync(ctx);
	}

	/**
		Set the controller parameters.
		Distance is ray distance from target.
		Theta and Phi are the two spherical angles
		Target is the target position
	**/
	public function set(?distance:Float, ?theta:Float, ?phi:Float, ?target:h3d.col.Point, ?fovY:Float) {
		if( theta != null )
			targetPos.y = theta;
		if( phi != null )
			targetPos.z = phi;
		if( target != null )
			targetOffset.set(target.x, target.y, target.z, targetOffset.w);
		if( fovY != null )
			targetOffset.w = fovY;
		if( distance != null )
			targetPos.x = distance * (targetOffset.w == 0 ? 1 : targetOffset.w);
	}

	/**
		Load current position from current camera position and target.
		Call if you want to modify manually the camera.
	**/
	public function loadFromCamera( animate = false ) {
		var scene = if( scene == null ) getScene() else scene;
		if( scene == null ) throw "Not in scene";
		targetOffset.set(scene.camera.target.x, scene.camera.target.y, scene.camera.target.z);
		targetOffset.w = scene.camera.fovY;

		var pos = scene.camera.pos.sub(scene.camera.target);
		var r = pos.length();
		targetPos.set(r, Math.atan2(pos.y, pos.x), Math.acos(pos.z / r));
		targetPos.x *= targetOffset.w;

		curOffset.w = scene.camera.fovY;

		if( !animate )
			toTarget();
		else
			syncCamera(); // reset camera to current
	}

	/**
		Initialize to look at the whole scene, based on reported scene bounds.
	**/
	public function initFromScene() {
		var scene = getScene();
		if( scene == null ) throw "Not in scene";
		var bounds = scene.getBounds();
		var center = bounds.getCenter();
		scene.camera.target.load(center.toVector());
		var d = bounds.getMax().sub(center);
		d.scale(5);
		d.z *= 0.5;
		d = d.add(center);
		scene.camera.pos.load(d.toVector());
		loadFromCamera();
	}

	/**
		Stop animation by directly moving to end position.
		Call after set() if you don't want to animate the change
	**/
	public function toTarget() {
		curPos.load(targetPos);
		curOffset.load(targetOffset);
		syncCamera();
	}

	function fov(delta) {
		targetOffset.w += delta;
		if( targetOffset.w >= 179 )
			targetOffset.w = 179;
		if( targetOffset.w < 1 )
			targetOffset.w = 1;
	}

	function offset(pt:h3d.Vector) {
		targetOffset.x -= pt.x;
		targetOffset.y -= pt.y;
		targetOffset.z -= pt.z;
	}

	function pan(dx, dy, dz = 0.) {
		var v = new h3d.Vector4(dx, dy, dz);
		scene.camera.update();
		v.transform3x3(scene.camera.getInverseView());
		v.w = 0;
		targetOffset = targetOffset.add(v);
	}

	function rot(dx, dy) {
		moveX += dx;
		moveY += dy;
	}

	function zoom(delta : Float) {
		if ( enableZoom ) {
			var dist = targetDistance;
			if( (dist > minDistance && delta < 0) || (dist < maxDistance && delta > 0) ) {
				targetPos.x *= Math.pow(zoomAmount, delta);
				var expectedDist = targetDistance;
				if( expectedDist < minDistance ) {
					targetPos.x = minDistance * targetOffset.w;
				}
				if( expectedDist > maxDistance ) {
					targetPos.x = maxDistance * targetOffset.w;
				}
			}
		} else {
			pan(0.0, 0.0, -panSpeed * delta);
		}
	}

	function syncCamera() {
		var cam = getScene().camera;
		var distance = distance;
		cam.target.load(curOffset.toVector());
		cam.pos.set(
			distance * Math.cos(theta) * Math.sin(phi) + cam.target.x,
			distance * Math.sin(theta) * Math.sin(phi) + cam.target.y,
			distance * Math.cos(phi) + cam.target.z
		);
		if( !lockZPlanes ) {
			cam.zNear = Math.max(distance * 0.01, 0.1);
			cam.zFar = Math.max(distance * 100, 1000);
		}
		cam.fovY = curOffset.w;
		cam.update();
	}

	function onEvent( e : hxd.Event ) {
		var p : h3d.scene.Object = this;
		while( p != null ) {
			if( !p.visible ) {
				e.propagate = true;
				return;
			}
			p = p.parent;
		}

		onCustomEvent(e);
		if (e.propagate == false)
			return;

		onEventInternal(e);
	}

	function onEventInternal(e: hxd.Event) {

	}

	/**
		Called for each scene event before the controller handles it. Set `e.propagate = false` to prevent the controller
		from handling the event.
	**/
	public dynamic function onCustomEvent(e: hxd.Event) {}
	/**
		Called when the user clicks (presses and releases quickly without moving) with the button used to move the camera.
	**/
	public dynamic function onClick( e : hxd.Event ) {}
}

/**
	A camera controller orbiting around a target, as in 3D editors:
	- right button drag: pans the target;
	- middle button drag (or Alt + left button drag): rotates around the target;
	- mouse wheel: zooms (see `enableZoom`);
	- arrow keys, WASD or ZQSD while dragging: move the target horizontally.

	```haxe
	new h3d.scene.CameraController.OrbitCameraController(s3d).loadFromCamera();
	```
**/
class OrbitCameraController extends CameraController {
	var moveCount = 0;

	/**
		Creates an orbit controller.
		@param distance The initial distance to the target.
		@param parent The parent object, usually the scene.
	**/
	public function new(?distance: Float, ?parent : h3d.scene.Object) {
		super(distance, parent);
		name = "OrbitCameraController";
	}

	override function onEventInternal( e : hxd.Event ) {
		switch( e.kind ) {
		case EWheel:
			zoom(e.wheelDelta);
		case EPush:
			pushing = e.button;
			if (pushing == 0 && hxd.Key.isDown(hxd.Key.ALT)) pushing = 2;
			pushTime = haxe.Timer.stamp();
			pushStartX = pushX = e.relX;
			pushStartY = pushY = e.relY;
			startPush = new h2d.col.Point(pushX, pushY);
			moveCount = 0;
			@:privateAccess scene.events.startCapture(onEvent);

			@:privateAccess scene.window.mouseMode = AbsoluteUnbound(true);
		case ERelease, EReleaseOutside:
			if( pushing == e.button || pushing == 2) {
				pushing = -1;
				startPush = null;
				if( e.kind == ERelease && haxe.Timer.stamp() - pushTime < 0.2 && hxd.Math.distance(e.relX - pushStartX,e.relY - pushStartY) < 5 )
					onClick(e);
				@:privateAccess scene.window.mouseMode = Absolute;
				@:privateAccess scene.events.stopCapture();
			}

		case EMove:
			// Windows bug that jumps movementX/Y on all browsers
			if( moveCount < 10 && hxd.Math.distanceSq(pushX - e.relX, pushY - e.relY) > 100000 ) {
				pushX = e.relX;
				pushY = e.relY;
				return;
			}
			moveCount++;

			switch( pushing ) {
				case 1:
					if(startPush != null && startPush.distance(new h2d.col.Point(e.relX, e.relY)) > 3) {
						var m = 0.001 * curPos.x * panSpeed / 25;
						pan(-(e.relX - pushX) * m, (e.relY - pushY) * m);
					}
					pushX = e.relX;
					pushY = e.relY;
				case 2:
					rot(e.relX - pushX, e.relY - pushY);
					pushX = e.relX;
					pushY = e.relY;
				default:
			}

		case EFocus:
			@:privateAccess hxd.Window.inst.mouseMode = Absolute;
		default:
		}
	}

	function moveKeys() {
		var mov = new h3d.Vector();
		if( hxd.Key.isDown(hxd.Key.UP) || hxd.Key.isDown(hxd.Key.Z) || hxd.Key.isDown(hxd.Key.W) )
			mov.x += 1;
		if( hxd.Key.isDown(hxd.Key.DOWN) || hxd.Key.isDown(hxd.Key.S) )
			mov.x -= 1;
		if( hxd.Key.isDown(hxd.Key.LEFT) || hxd.Key.isDown(hxd.Key.Q) || hxd.Key.isDown(hxd.Key.A) )
			mov.y -= 1;
		if( hxd.Key.isDown(hxd.Key.RIGHT) || hxd.Key.isDown(hxd.Key.D) )
			mov.y += 1;

		if( mov.x == 0 && mov.y == 0 )
			return;
		var dir = new h3d.Vector(
			mov.x * Math.cos(theta) + mov.y * Math.cos(Math.PI / 2 + theta),
			mov.x * Math.sin(theta) + mov.y * Math.sin(Math.PI / 2 + theta)
		);

		var delta = dir.scaled(0.01 * moveSpeed * (distance + scene.camera.zNear));
		offset(delta);
	}

	override function sync(ctx : h3d.scene.RenderContext) {
		if( pushing == 2 || pushing == 1) {
			moveKeys();
		}

		var cam = getScene().camera;
		cam.orthoBounds = null;
		curOffset.w = wantedFOV;
		targetOffset.w = wantedFOV;

		var old = ctx.elapsedTime;
		ctx.elapsedTime = hxd.Timer.dt;
		super.sync(ctx);
		ctx.elapsedTime = old;
	}
}

/**
	A free flying "first person" camera controller:
	- right button drag: looks around;
	- while holding the right or middle button: arrow keys or ZQSD move forward/backward/sideways (W, S and D also work),
	  A moves down and E moves up;
	- mouse wheel while holding a button: changes `moveSpeed`.
**/
class FPSCameraController extends CameraController {
	/**
		The camera near plane distance, applied every frame.
	**/
	public var zNear = 0.1;
	/**
		The camera far plane distance, applied every frame.
	**/
	public var zFar = 10000.0;
	/**
		Currently unused.
	**/
	public var snapToGround = true;

	/**
		Creates a first person controller.
		@param distance The initial distance between the camera and the point it looks at.
		@param parent The parent object, usually the scene.
	**/
	public function new(?distance: Float, ?parent : h3d.scene.Object) {
		super(distance, parent);
		name = "FPSCameraController";
	}

	override function sync(ctx : h3d.scene.RenderContext) {
		var cam = getScene().camera;
		cam.orthoBounds = null;
		curOffset.w = wantedFOV;
		targetOffset.w = wantedFOV;

		var old = ctx.elapsedTime;
		ctx.elapsedTime = hxd.Timer.dt;
		lockZPlanes = true;
		super.sync(ctx);
		cam.fovY = wantedFOV;
		cam.zNear = zNear;
		cam.zFar = zFar;

		if( pushing == 2 || pushing == 1)
			moveKeys();

		ctx.elapsedTime = old;
	}

	override function onEventInternal(e : hxd.Event) {
		switch( e.kind ) {
		case EWheel:
			if (pushing == 2 || pushing == 1) {
				if (e.wheelDelta > 0) {
					moveSpeed /= 1.1;
				}
				else {
					moveSpeed *= 1.1;
				}
			}
		case EPush:
			pushing = e.button;
			if (pushing == 0 && hxd.Key.isDown(hxd.Key.ALT)) pushing = 2;
			pushTime = haxe.Timer.stamp();
			pushStartX = pushX = e.relX;
			pushStartY = pushY = e.relY;
			startPush = new h2d.col.Point(pushX, pushY);
			@:privateAccess scene.window.mouseMode = AbsoluteUnbound(true);
		case ERelease, EReleaseOutside:
			if( pushing == e.button || pushing == 2) {
				pushing = -1;
				startPush = null;
				if( e.kind == ERelease && haxe.Timer.stamp() - pushTime < 0.2 && hxd.Math.distance(e.relX - pushStartX,e.relY - pushStartY) < 5 )
					onClick(e);
				@:privateAccess scene.window.mouseMode = Absolute;
			}
		case EMove:
			switch( pushing ) {
				case 1:
					var m = 0.1 * panSpeed / 25;
					lookAround(-(e.relX - pushX) * m, (e.relY - pushY) * m);
					pushX = e.relX;
					pushY = e.relY;
				case 2:
					pushX = e.relX;
					pushY = e.relY;
				default:
			}
		case EFocus:
			@:privateAccess scene.window.mouseMode = Absolute;
		default:
		}
	}

	function moveKeys() {
		var cam = getScene().camera;
		var mov = new h3d.Vector();
		if( hxd.Key.isDown(hxd.Key.UP) || hxd.Key.isDown(hxd.Key.Z) || hxd.Key.isDown(hxd.Key.W) )
			mov += cam.getForward() * -1;
		if( hxd.Key.isDown(hxd.Key.DOWN) || hxd.Key.isDown(hxd.Key.S) )
			mov += cam.getForward() * 1;
		if( hxd.Key.isDown(hxd.Key.LEFT) || hxd.Key.isDown(hxd.Key.Q) )
			mov += cam.getRight() * 1;
		if( hxd.Key.isDown(hxd.Key.RIGHT) || hxd.Key.isDown(hxd.Key.D) )
			mov += cam.getRight() * -1;
		if ( hxd.Key.isDown(hxd.Key.A) )
			mov += cam.getUp() * -1;
		if ( hxd.Key.isDown(hxd.Key.E) )
			mov += cam.getUp() * 1;

		if( mov.x == 0 && mov.y == 0 && mov.z == 0 )
			return;

		var delta = mov.scaled(moveSpeed * (hxd.Timer.dt * 60.0));
		offset(delta);
	}

	function lookAround(dtheta : Float, dphi : Float) {
		var tx = targetOffset.x + distance * Math.cos(theta) * Math.sin(phi) ;
		var ty = targetOffset.y + distance * Math.sin(theta) * Math.sin(phi);
		var tz = targetOffset.z + distance * Math.cos(phi);

		targetPos.y = theta - dtheta;
		var min = hxd.Math.PI*0.01;
		targetPos.z = hxd.Math.clamp(phi - dphi, 0 + min, hxd.Math.PI - min);

		curOffset.x = curOffset.w;
		targetOffset.x = tx - distance * Math.cos(targetPos.y) * Math.sin(targetPos.z);
		targetOffset.y = ty - distance * Math.sin(targetPos.y) * Math.sin(targetPos.z);
		targetOffset.z = tz - distance * Math.cos(targetPos.z);
		curOffset.load(targetOffset);
		curPos.load(targetPos);
	}
}