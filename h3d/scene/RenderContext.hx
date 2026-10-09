package h3d.scene;

import h3d.mat.Texture;
import h3d.col.Frustum;

private class SharedGlobal {
	public var gid : Int;
	public var value : Dynamic;
	public function new(gid, value) {
		this.gid = gid;
		this.value = value;
	}
}

/**
	A rendering view: the frustum used to cull objects for the current view (see `RenderContext.currentView`).
	Renderers drawing several views (for instance shadow cascades) change it temporarily.
**/
class View {
	/**
		The index of the view.
	**/
	public var idx : Int;
	/**
		The frustum used to cull the objects of this view.
	**/
	public var frustum : Frustum;
	/**
		Creates a view with the given index.
	**/
	public function new(idx) {
		this.idx = idx;
	}
}

/**
	The per-frame state of a 3D `Scene` rendering, shared by the scene objects, the `Renderer` and the render passes.

	Each frame, `Scene.render` calls `start`, syncs the objects (which `emit` the passes of their materials and their lights),
	hands the emitted passes to the renderer and calls `done`.
	It also holds the shader globals (`camera.*`, `global.*`), which can be read and changed with `getGlobal` and `setGlobal`.
	Accessible from objects in `Object.sync`, `Object.emit` and `Object.draw`, and from the scene as `s3d.ctx`.
**/
@:build(hxsl.Macros.buildGlobals())
class RenderContext extends h3d.impl.RenderContext {

	/**
		The camera used for the current frame: a copy of `Scene.camera` made in `start`. Use `setCamera` to change it.
	**/
	public var camera(default,null) : h3d.Camera;
	/**
		The scene being rendered.
	**/
	public var scene(default,null) : Scene;
	/**
		The pass currently being drawn, set by the render passes before calling `Object.draw`.
	**/
	public var drawPass : h3d.pass.PassObject;
	/**
		The material pass used by the PBR lights to emit their light volumes. Set by `h3d.scene.pbr.Renderer`.
	**/
	public var pbrLightPass : h3d.mat.Pass;
	/**
		`true` while computing static data, such as static shadow maps (see `Scene.computeStatic`).
	**/
	public var computingStatic : Bool;
	/**
		When set, objects keep their previous frame transform so that a velocity buffer can be rendered
		(used by temporal effects such as TAA or motion blur). Reset to `false` at the end of each frame.
	**/
	public var computeVelocity : Bool;
	/**
		Enables the translucency output of the PBR renderer (an additional G-buffer texture used by translucent materials).
	**/
	public var enableTranslucency : Bool;
	/**
		Uses a reversed depth buffer (1 near, 0 far), which improves depth precision. Applied to the camera in `setCamera`.
	**/
	public var useReverseDepth : Bool;
	/**
		The width of the rendering, in pixels. Set to the engine width in `start`, see `setRenderResolution`.
	**/
	public var renderResolutionWidth : Int;
	/**
		The height of the rendering, in pixels. Set to the engine height in `start`, see `setRenderResolution`.
	**/
	public var renderResolutionHeight : Int;

	/**
		The light system of the scene, used by the render passes to add the light shaders.
	**/
	public var lightSystem : h3d.scene.LightSystem;
	/**
		Shaders added to every object drawn by the render passes, in addition to their material shaders.
	**/
	public var extraShaders : hxsl.ShaderList;
	/**
		`false` while syncing the children of an invisible or culled object. Objects use it to skip work, such as
		updating animations, unless `Object.alwaysSyncAnimation` is set.
	**/
	public var visibleFlag : Bool;
	/**
		Debug flag set by `h3d.impl.Benchmark`. It is not read by Heaps itself and can be used by custom objects to display culling information.
	**/
	public var debugCulling : Bool;
	/**
		`true` during the first frame rendered after the GPU context was lost and restored (see `Scene.onContextLost`).
	**/
	public var wasContextLost : Bool;
	/**
		The culling collider inherited from the parent objects during sync (see `Object.cullingCollider`).
	**/
	public var cullingCollider : h3d.col.Collider;
	/**
		If not negative, the screen ratio used by meshes to select their level of detail instead of computing it.
		Set by a `Mesh` with `inheritLod` so that its children use the same level of detail. Reset at the beginning of each frame.
	**/
	public var forcedScreenRatio : Float = -1;
	/**
		A multiplier applied to the screen ratio of meshes when selecting their level of detail: lower values select
		lower details sooner.
	**/
	public var meshLodScale : Float = 1.0;

	/**
		The hierarchical depth buffer (HZB) built by the PBR renderer, used for GPU occlusion culling.
	**/
	public var hzb : h3d.mat.Texture;

	/**
		The number of views rendered in the current frame. Reset to 1 in `start`.
	**/
	public var numViews : Int = 1;
	/**
		The view currently rendered. Its frustum is the camera frustum, unless a pass renders from another view.
	**/
	public var currentView : View = new h3d.scene.View(0);

	/**
		The camera of the previous frame, used to compute velocities.
	**/
	public var prevCamera : h3d.Camera;
	/**
		If set, the world origin offset between the previous and current frame, used by temporal effects when the world
		is rebased. Reset at the end of each frame.
	**/
	public var prevWorldDelta : h3d.Vector;

	@global("camera.view") var cameraView : h3d.Matrix;
	@global("camera.invView") var cameraInvView : h3d.Matrix;
	@global("camera.zNear") var cameraNear : Float;
	@global("camera.zFar") var cameraFar : Float;
	@global("camera.proj") var cameraProj : h3d.Matrix;
	@global("camera.invProj") var cameraInvProj : h3d.Matrix;
	@global("camera.prevPosition") var cameraPrevPos : h3d.Vector;
	@global("camera.position") var cameraPos : h3d.Vector;
	@global("camera.projDiag") var cameraProjDiag : h3d.Vector4;
	@global("camera.projFlip") var cameraProjFlip : Float;
	@global("camera.reverseDepth") var cameraReverseDepth : Bool;
	@global("camera.viewProj") var cameraViewProj : h3d.Matrix;
	@global("camera.inverseViewProj") var cameraInverseViewProj : h3d.Matrix;
	@global("camera.prevView") var cameraPrevView : h3d.Matrix;
	@global("camera.prevProj") var cameraPrevProj : h3d.Matrix;
	@global("camera.previousViewProj") var cameraPreviousViewProj : h3d.Matrix;
	@global("camera.jitterOffsets") var cameraJitterOffsets : h3d.Vector4;
	@global("global.prevTime") var globalPrevTime : Float;
	@global("global.time") var globalTime : Float;
	@global("global.pixelSize") var pixelSize : h3d.Vector;
	@global("global.modelView") var globalModelView : h3d.Matrix;
	@global("global.modelViewInverse") var globalModelViewInverse : h3d.Matrix;
	@global("global.previousModelView") var globalPreviousModelView : h3d.Matrix;
	@global("global.frame") var globalFrame : Int;

	var allocPool : h3d.pass.PassObject;
	var allocFirst : h3d.pass.PassObject;
	var tmpComputeLink = new hxsl.ShaderList(null,null);
	var computeLink : hxsl.ShaderList;
	var cachedShaderList : Array<hxsl.ShaderList>;
	var cachedPassObjects : Array<Renderer.PassObjects>;
	var cachedPos : Int;
	var passes : Array<h3d.pass.PassObject>;
	var lights : Light;

	var cameraFrustumBuffer : h3d.Buffer = null;
	var cameraFrustumUploaded : Bool = false;

	/**
		Creates the render context of a scene. Done by the `Scene` itself.
	**/
	public function new(scene) {
		super();
		this.scene = scene;
		camera = new h3d.Camera();
		prevCamera = new h3d.Camera();
		renderResolutionWidth = engine.width;
		renderResolutionHeight = engine.height;
		cachedShaderList = [];
		cachedPassObjects = [];
		passes = [];
		initGlobals();
	}

	/**
		Copies `cam` into `camera` and updates the camera shader globals. The previous camera is kept in `prevCamera`.
	**/
	public function setCamera( cam : h3d.Camera ) {
		prevCamera.load(camera);
		camera.load(cam);
		cameraReverseDepth = camera.reverseDepth = useReverseDepth;
		camera.update();
		cameraView = camera.mcam;
		cameraInvView = camera.getInverseView();
		cameraNear = camera.zNear;
		cameraFar = camera.zFar;
		cameraProj = camera.mproj;
		cameraInvProj = camera.getInverseProj();
		cameraPos = camera.pos;
		if(cameraPrevPos == null)
			cameraPrevPos = camera.pos.clone();
		cameraProjDiag = new h3d.Vector4(camera.mproj._11,camera.mproj._22,camera.mproj._33,camera.mproj._44);
		if ( cameraPrevView == null )
			cameraPrevView = camera.mcam.clone();
		if ( cameraPrevProj == null )
			cameraPrevProj = camera.mproj.clone();
		if ( cameraPreviousViewProj == null )
			cameraPreviousViewProj = camera.m.clone();
		if (cameraJitterOffsets == null)
			cameraJitterOffsets = new h3d.Vector4( 0.0, 0.0, 0.0, 0.0 );
		cameraViewProj = camera.m;
		cameraInverseViewProj = camera.getInverseViewProj();
		currentView.frustum = camera.frustum;
	}

	/**
		Sets the rendering resolution and the `global.pixelSize` shader global.
	**/
	public function setRenderResolution( width : Int, height : Int ) {
		renderResolutionWidth = width;
		renderResolutionHeight = height;
		pixelSize = new h3d.Vector(2 / width, 2 / height);
	}

	/**
		Sets the number of views rendered in the current frame.
	**/
	public function updateNumViews( numViews : Int ) {
		this.numViews = numViews;
	}

	/**
		Sets the view currently rendered and its culling frustum.
	**/
	public function setCurrentView( viewIdx : Int, viewFrustum : Frustum ) {
		currentView.idx = viewIdx;
		currentView.frustum = viewFrustum;
	}

	/**
		Updates the `camera.projFlip` global according to the current render target: needed on drivers using
		bottom-left texture coordinates when rendering to a texture.
	**/
	public function setupTarget() {
		var v = engine.driver.hasFeature(BottomLeftCoords) && engine.getCurrentTarget() != null ? -1 : 1;
		if( cameraProjFlip != v ) cameraProjFlip = v;
	}

	function getCurrentPixelSize() {
		var t = engine.getCurrentTarget();
		return new h3d.Vector(2 / (t == null ? engine.width : t.width), 2 / (t == null ? engine.height : t.height));
	}

	/**
		Emits the passes of material `mat` for object `obj`, so that they are drawn this frame.
		Called by objects in their `Object.emit` implementation.
		@param index The index of the material in the object (for instance a material group of a `MultiMaterial`).
	**/
	@:access(h3d.mat.Pass)
	public inline function emit( mat : h3d.mat.Material, obj, index = 0 ) {
		var p = mat.mainPass;
		while( p != null ) {
			if ( !p.culled )
				emitPass(p, obj).index = index;
			p = p.nextPass;
		}
	}

	/**
		Starts a new frame: resets the emitted passes and lights, advances `time` and `frame`, and copies the scene camera.
		Called by `Scene.render`.
	**/
	public function start() {
		drawPass = null;
		passes.resize(0);
		lights = null;
		cachedPos = 0;
		visibleFlag = true;
		forcedScreenRatio = -1;
		globalPrevTime = time;
		time += elapsedTime;
		frame++;
		setCurrent();
		engine = h3d.Engine.getCurrent();
		setRenderResolution(engine.width, engine.height);
		globalTime = time;
		globalFrame = frame;
		pixelSize = getCurrentPixelSize();
		setCamera(scene.camera);
		numViews = 1;
	}

	/**
		Resets the shader list cache before rendering the next pass.
	**/
	public inline function nextPass() {
		cachedPos = 0;
		drawPass = null;
	}

	/**
		Returns the value of the shader global `name` (for instance `"global.time"`).
	**/
	public inline function getGlobal(name) : Dynamic {
		return globals.get(name);
	}

	/**
		Sets the value of the shader global `name`.
	**/
	public inline function setGlobal(name,v:Dynamic) {
		globals.set(name, v);
	}

	/**
		Emits a single material pass for object `obj` and returns the allocated pass object.
	**/
	public function emitPass( pass : h3d.mat.Pass, obj : h3d.scene.Object ) @:privateAccess {
		var o = allocPool;
		if( o == null ) {
			o = new h3d.pass.PassObject();
			o.nextAlloc = allocFirst;
			allocFirst = o;
		} else
			allocPool = o.nextAlloc;
		o.pass = pass;
		o.obj = obj;
		if ( passes.length <= pass.passId )
			passes.resize(pass.passId);
		o.next = passes[pass.passId];
		passes[pass.passId] = o;
		return o;
	}

	/**
		Returns a shader list node from the frame cache (to avoid allocations), holding `s` followed by `next`.
	**/
	public function allocShaderList( s : hxsl.Shader, ?next : hxsl.ShaderList ) {
		var sl = cachedShaderList[cachedPos++];
		if( sl == null ) {
			sl = new hxsl.ShaderList(null);
			cachedShaderList[cachedPos - 1] = sl;
		}
		sl.s = s;
		sl.next = next;
		return sl;
	}

	/**
		Sets the list of compute shaders to run with the next `computeDispatch` called without shader.
	**/
	public function computeList(list : hxsl.ShaderList) {
		if ( computeLink != null )
			throw "Use computeDispatch to dispatch computeList";
		computeLink = list;
	}

	/**
		Inserts a GPU memory barrier, so that the writes of the previous compute dispatches are visible to the next ones.
	**/
	public function memoryBarrier(){
		engine.driver.memoryBarrier();
	}

	/**
		Runs a compute shader, or the shaders set by `computeList`, with the given number of work groups (at most 65535 per axis).
		Can be called outside of a frame rendering: the context is then started and ended around the dispatch.
		@param barrier Inserts a memory barrier after the dispatch.
	**/
	public function computeDispatch( ?shader : hxsl.Shader, x = 1, y = 1, z = 1, barrier : Bool = true) {
		if ( x <= 0 || y <= 0 || z <= 0 )
			throw "Can't use zero or negative work groups count";
		if ( x > 65535 || y > 65535 || z > 65535 )
			throw "Thread group size can't exceed 65535";

		var prev = h3d.impl.RenderContext.get();
		if( prev != this )
			start();

		// compile shader
		globals.resetChannels();
		if ( shader != null ) {
			tmpComputeLink.s = shader;
			computeLink = tmpComputeLink;
		}
		for ( s in computeLink )
			s.updateConstants(globals);
		var rt = hxsl.Cache.get().link(computeLink, Compute);
		// upload buffers
		engine.driver.selectShader(rt);
		var buf = shaderBuffers;
		buf.grow(rt);
		fillGlobals(buf, rt);
		engine.uploadShaderBuffers(buf, Globals);
		fillParams(buf, rt, computeLink, true);
		engine.uploadInstanceShaderBuffers(buf);
		engine.driver.computeDispatch(x,y,z, barrier);
		@:privateAccess engine.dispatches++;
		if ( computeLink == tmpComputeLink )
			tmpComputeLink.s = null;
		computeLink = null;

		if( prev != this ) {
			done();
			if( prev != null ) prev.setCurrent();
		}
	}

	/**
		Adds a light to the lights of the current frame. Called by `Light.emit`.
	**/
	public function emitLight( l : Light ) {
		l.next = lights;
		lights = l;
	}

	/**
		Returns a GPU buffer containing the 6 planes of the camera frustum (left, right, top, bottom, far, near),
		uploaded once per frame. Used for GPU culling.
	**/
	public function getCameraFrustumBuffer() {
		if ( cameraFrustumBuffer == null )
			cameraFrustumBuffer = hxd.impl.Allocator.get().allocBuffer( 6, hxd.BufferFormat.VEC4_DATA, UniformDynamic );

		if ( !cameraFrustumUploaded ) {
			inline function fillBytesWithPlane( buffer : haxe.io.Bytes, startPos : Int, plane : h3d.col.Plane ) {
				buffer.setFloat( startPos, 			@:privateAccess plane.nx );
				buffer.setFloat( startPos + 4, 		@:privateAccess plane.ny );
				buffer.setFloat( startPos + 8, 		@:privateAccess plane.nz );
				buffer.setFloat( startPos + 12, 	@:privateAccess plane.d	);
			}

			var tmp = haxe.io.Bytes.alloc( 16 * 6 );
			var frustum = camera.frustum;
			fillBytesWithPlane( tmp, 0, 	frustum.pleft 	);
			fillBytesWithPlane( tmp, 16, 	frustum.pright 	);
			fillBytesWithPlane( tmp, 32, 	frustum.ptop 	);
			fillBytesWithPlane( tmp, 48, 	frustum.pbottom );
			fillBytesWithPlane( tmp, 64, 	frustum.pfar 	);
			fillBytesWithPlane( tmp, 80, 	frustum.pnear 	);

			cameraFrustumBuffer.uploadBytes(tmp, 0, 6);
			cameraFrustumUploaded = true;
		}

		return cameraFrustumBuffer;
	}

	/**
		Returns the value to clear the depth buffer with: `0` with reverse depth, `1` otherwise.
	**/
	public function getDepthClearValue() : Float {
		return useReverseDepth ? 0.0 : 1.0;
	}

	/**
		Binds bindless texture handles for the next draws (requires a driver supporting them).
	**/
	public function selectTextureHandles(handles : Array<h3d.mat.TextureHandle>) {
		engine.driver.selectTextureHandles(handles);
	}

	/**
		Binds bindless buffer handles for the next draws (requires a driver supporting them).
	**/
	public function selectBufferHandles(handles : Array<h3d.BufferHandle>) {
		engine.driver.selectBufferHandles(handles);
	}

	/**
		Uploads the shader parameters of the current `drawPass`. Call it after changing shader parameters inside `Object.draw`.
	**/
	public function uploadParams() {
		fillParams(shaderBuffers, drawPass.shader, drawPass.shaders);
		engine.uploadInstanceShaderBuffers(shaderBuffers);
	}

	/**
		Ends the frame: recycles the emitted passes and stores the camera matrices for the next frame. Called by `Scene.render`.
	**/
	public function done() {
		drawPass = null;
		// move passes to pool, and erase data
		var p = allocFirst;
		while( p != null && p != allocPool ) {
			p.obj = null;
			p.pass = null;
			p.shader = null;
			p.shaders = null;
			p.next = null;
			p.index = 0;
			p.texture = 0;
			p = @:privateAccess p.nextAlloc;
		}
		// one pooled object was not used this frame, let's gc unused one by one
		if( allocPool != null )
			allocFirst = @:privateAccess allocFirst.nextAlloc;
		allocPool = allocFirst;
		for( c in cachedShaderList ) {
			c.s = null;
			c.next = null;
		}
		passes.resize(0);
		lights = null;

		cameraFrustumUploaded = false;

		cameraPrevPos.load(cameraPos);
		cameraPrevView.load(cameraView);
		cameraPrevProj.load(cameraProj);
		cameraPreviousViewProj.load(cameraViewProj);
		computeVelocity = false;
		prevWorldDelta = null;

		clearCurrent();
	}

	override public function dispose() {
		super.dispose();
		if ( cameraFrustumBuffer != null ) {
			hxd.impl.Allocator.get().disposeBuffer( cameraFrustumBuffer );
			cameraFrustumBuffer = null;
		}
	}

}