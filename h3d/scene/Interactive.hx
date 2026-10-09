package h3d.scene;

/**
	A 3D object receiving mouse, touch and keyboard events through a collision shape.

	The `Scene` casts a ray from the cursor through the camera and sends the events to the interactives whose `shape`
	is hit, nearest first (see `Scene.rayCastEventTargets` and `priority`).

	The shape is expressed in the interactive local space. `Object.getCollider()` returns a world space snapshot of
	an object shape, so such an interactive is added at the scene root (it will not follow the object if it moves).
	To follow a moving object, add the interactive as its child with a shape in the object local space
	(for instance a `h3d.col.Sphere` or `h3d.col.Bounds`), or keep it at the scene root with a `h3d.col.ObjectCollider(obj, localShape)`,
	which applies the current object transform to its shape.

	```haxe
	var mesh = new h3d.scene.Mesh(prim, s3d);
	var i = new h3d.scene.Interactive(mesh.getCollider(), s3d); // world space shape, at the scene root
	i.onClick = function(e) trace("clicked at local position " + e.relX + "," + e.relY + "," + e.relZ);
	```
**/
class Interactive extends Object implements hxd.SceneEvents.Interactive {

	var debugObj : Object;

	/**
		The collision shape tested against the mouse ray, relative to this interactive transform (or in world space if `isAbsoluteShape` is set).
	**/
	public var shape : h3d.col.Collider;

	/**
		If several interactive conflicts, the preciseShape (if defined) can be used to distinguish between the two.
	**/
	public var preciseShape : Null<h3d.col.Collider>;

	/**
		In case of conflicting shapes, usually the one in front of the camera is prioritized, unless you set an higher priority.
	**/
	public var priority : Int;

	/**
		Cursor used when the Interactive is under the mouse cursor (`Button` by default).
	**/
	public var cursor(default,set) : Null<hxd.Cursor>;
	/**
		Set the default `cancel` mode (see `hxd.Event`), default to false.
	**/
	public var cancelEvents : Bool = false;
	/**
		Set the default `propagate` mode (see `hxd.Event`), default to false.
	**/
	public var propagateEvents : Bool = false;

	/**
		When enabled, interacting with secondary mouse buttons (right button/wheel) will cause `onPush`, `onClick`, `onRelease` and `onReleaseOutside` callbacks.
		Otherwise those callbacks will only be triggered with primary mouse button (left button).
	**/
	public var enableRightButton : Bool = false;

	/**
	 	When enabled, allows to receive several onClick events the same frame.
	**/
	public var allowMultiClick : Bool = false;

	/**
		Is it required to find the best hit point in a complex mesh or any hit possible point will be enough (default = false, faster).
	**/
	public var bestMatch : Bool;

	/**
	 	When set, will display the debug object of the shape (using makeDebugObj)
	**/
	public var showDebug(get, set) : Bool;

	/**
	 *  Tells if our shapes are in absolute space (for example ObjectCollider) or relative to the interactive transform.
	 */
	public var isAbsoluteShape : Bool = false;

	/**
		Set to `true` when the interactive was emitted (visible and not culled) during the last rendered frame.
	**/
	public var emittedLastFrame : Bool = false;

	var scene : Scene;
	var mouseDownButton : Int = -1;
	var lastClickFrame : Int = -1;

	@:allow(h3d.scene.Scene)
	var hitPoint = new h3d.Vector4();

	/**
		Creates an interactive using the given collision shape.
		@param shape The collision shape, see `shape`.
		@param parent An optional parent object.
	**/
	public function new(shape, ?parent) {
		super(parent);
		this.shape = shape;
		cursor = Button;
	}

	/**
		Returns the world position where `ray` (in world space) hits the shape, or `null` if it does not hit it.
		@param bestMatch If `true`, finds the nearest hit point on complex shapes instead of any hit point (slower).
	**/
	public function getPoint( ray : h3d.col.Ray, bestMatch : Bool ) {
		var rold = ray.clone();
		ray.transform(getInvPos());
		var d = shape.rayIntersection(ray, bestMatch);
		if( d < 0 ) {
			ray.load(rold);
			return null;
		}
		var pt = ray.getPoint(d);
		pt.transform(getAbsPos());
		ray.load(rold);
		return pt;
	}

	inline function get_showDebug() return debugObj != null;

	public function set_showDebug(val) {
		if( !val ) {
			if( debugObj != null )
				debugObj.remove();
			debugObj = null;
			return false;
		}
		if( debugObj != null )
			return true;
		debugObj = shape.makeDebugObj();
		if( debugObj != null ) {
			setupDebugMaterial(debugObj);
			debugObj.ignoreParentTransform = isAbsoluteShape;
			this.addChild(debugObj);
		}
		return debugObj != null;
	}

	/**
		Sets up the materials of the debug object displayed by `showDebug`: semi transparent, without shadows,
		and in wireframe when the driver supports it. Can be replaced to customize the debug display.
	**/
	public static dynamic function setupDebugMaterial(debugObj: Object) {
		var materials = debugObj.getMaterials();
		for( m in materials ) {
			var engine = h3d.Engine.getCurrent();
			if( engine.driver.hasFeature(Wireframe) )
				m.mainPass.wireframe = true;
			m.castShadows = false;
			m.receiveShadows = false;
			m.color.a = 0.7;
			m.blendMode = Alpha;
			// m.mainPass.depth(false, Always);
		}
	}

	override function onAdd() {
		this.scene = getScene();
		if( scene != null ) scene.addEventTarget(this);
		super.onAdd();
	}

	override function onRemove() {
		if( scene != null ) {
			scene.removeEventTarget(this);
			scene = null;
		}
		super.onRemove();
	}

	override function sync(ctx){
		super.sync(ctx);
		emittedLastFrame = false;
	}

	override function emit(ctx){
		super.emit(ctx);
		emittedLastFrame = true;
	}

	/**
		This can be called during or after a push event in order to prevent the release from triggering a click.
	**/
	public function preventClick() {
		mouseDownButton = -1;
	}

	@:noCompletion public function getInteractiveScene() : hxd.SceneEvents.InteractiveScene {
		return scene;
	}

	@:noCompletion public function handleEvent( e : hxd.Event ) {
		if( propagateEvents ) e.propagate = true;
		if( cancelEvents ) e.cancel = true;
		switch( e.kind ) {
		case EMove:
			onMove(e);
		case EPush:
			if( enableRightButton || e.button == 0 ) {
				mouseDownButton = e.button;
				onPush(e);
				if( e.cancel ) mouseDownButton = -1;
			}
		case ERelease:
			if( enableRightButton || e.button == 0 ) {
				onRelease(e);
				var frame = hxd.Timer.frameCount;
				if( mouseDownButton == e.button && (lastClickFrame != frame || allowMultiClick) ) {
					onClick(e);
					lastClickFrame = frame;
				}
			}
			mouseDownButton = -1;
		case EReleaseOutside:
			if( enableRightButton || e.button == 0 ) {
				onRelease(e);
				if ( mouseDownButton == e.button )
					onReleaseOutside(e);
			}
			mouseDownButton = -1;
		case EOver:
			onOver(e);
		case EOut:
			onOut(e);
		case EWheel:
			onWheel(e);
		case EFocusLost:
			onFocusLost(e);
		case EFocus:
			onFocus(e);
		case EKeyUp:
			onKeyUp(e);
		case EKeyDown:
			onKeyDown(e);
		case ECheck:
			onCheck(e);
		case ETextInput:
			onTextInput(e);
		}
	}

	function set_cursor(c) {
		this.cursor = c;
		if ( scene != null && scene.events != null )
			scene.events.updateCursor(this);
		return c;
	}

	/**
		Sets focus on this `Interactive`.
		If Interactive was not already focused and it receives focus - `onFocus` event is sent.
		Interactive won't become focused if during `onFocus` call it will set `Event.cancel` to `true`.
	**/
	public function focus() {
		if( scene == null || scene.events == null )
			return;
		scene.events.focus(this);
	}

	/**
		Removes focus from interactive if it's focused.
		If Interactive is currently focused - `onFocusLost` event will be sent.
		Interactive won't lose focus if during `onFocusLost` call it will set `Event.cancel` to `true`.
	**/
	public function blur() {
		if( hasFocus() ) scene.events.blur();
	}

	/**
		Checks if Interactive is currently hovered by the mouse.
	**/
	public function isOver() {
		return scene != null && scene.events != null && @:privateAccess scene.events.overList.indexOf(this) != -1;
	}

	/**
		Checks if Interactive is currently focused.
	**/
	public function hasFocus() {
		return scene != null && scene.events != null && @:privateAccess scene.events.currentFocus == this;
	}

	/**
		Sent when mouse enters Interactive hitbox area.
		`event.propagate` and `event.cancel` are ignored during `onOver`.
		Propagation can be set with `onMove` event, as well as cancelling `onMove` will prevent `onOver`.
	**/
	public dynamic function onOver( e : hxd.Event ) {
	}

	/** Sent when mouse exits Interactive hitbox area.
		`event.propagate` and `event.cancel` are ignored during `onOut`.
	**/
	public dynamic function onOut( e : hxd.Event ) {
	}

	/** Sent when Interactive is pressed by user. **/
	public dynamic function onPush( e : hxd.Event ) {
	}

	/**
		Sent on multiple conditions.
		A. Always sent if user releases mouse while it is inside Interactive hitbox area.
			This happends regardless if that Interactive was pressed prior or not.
		B. Sent before `onReleaseOutside` if this Interactive was pressed, but released outside it's bounds.
		For first case `event.kind` will be `ERelease`, for second case - `EReleaseOutside`.
		See `onClick` and `onReleaseOutside` functions for separate events that trigger only when user interacts with this particular Interactive.
	**/
	public dynamic function onRelease( e : hxd.Event ) {
	}

	/**
		Sent when user presses Interactive, moves mouse outside and releases it.
		This event fired only on Interactive that user pressed, but released mouse after moving it outside of Interactive hitbox area.
	**/
	public dynamic function onReleaseOutside( e : hxd.Event ) {
	}

	/**
		Sent when Interactive is clicked by user.
		This event fired only on Interactive that user pressed and released when mouse is inside Interactive hitbox area.
	**/
	public dynamic function onClick( e : hxd.Event ) {
	}

	/**
		Sent when user moves within the Interactive hitbox area.
		See `Interactive.onCheck` for event when user does not move the mouse.

		Cancelling the `Event` will prevent interactive from becoming overed,
		causing `Interactive.onOut` if it was overed previously.
		Interactive would be treated as not overed as long as event is cancelled even if mouse is within the hitbox area.
	**/
	public dynamic function onMove( e : hxd.Event ) {
	}

	/**
		Sent when user scrolls mouse wheel above the Interactive. Wheel delta can be obtained through the `Event.wheelDelta`.
	**/
	public dynamic function onWheel( e : hxd.Event ) {
	}

	/**
		Sent when Interactive receives focus during `Interactive.focus` call.

		Cancelling the `Event` will prevent the Interactive from becoming focused.
	**/
	public dynamic function onFocus( e : hxd.Event ) {
	}

	/**
		Sent when Interactive lost focus either via `Interactive.blur` call or when user clicks on another Interactive/outside this Interactive hitbox area.

		Cancelling the `Event` will prevent the Interactive from losing focus.
	**/
	public dynamic function onFocusLost( e : hxd.Event ) {
	}

	/**
		Sent when this Interactive is focused and user unpressed a keyboard key.
		Unpressed key can be accessed through `Event.keyCode`.
	**/
	public dynamic function onKeyUp( e : hxd.Event ) {
	}

	/**
		Sent when this Interactive is focused and user pressed a keyboard key.
		Pressed key can be accessed through `Event.keyCode`.
	**/
	public dynamic function onKeyDown( e : hxd.Event ) {
	}

	/**
		Sent every frame when user hovers an Interactive but does not move the mouse.
		See `Interactive.onMove` for event when user moves the mouse.

		Cancelling the `Event` will prevent interactive from becoming overed,
		causing `Interactive.onOut` if it was overed previously.
		Interactive would be treated as not overed as long as event is cancelled even if mouse is within the hitbox area.
	**/
	public dynamic function onCheck( e : hxd.Event ) {
	}

	/**
		Sent when this Interactive is focused and user inputs text. Character added can be accessed through `Event.charCode`.
	**/
	public dynamic function onTextInput( e : hxd.Event ) {
	}

}
