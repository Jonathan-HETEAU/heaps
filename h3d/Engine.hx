package h3d;
import h3d.mat.Data;

private class TargetTmp {
	public var t : h3d.mat.Texture;
	public var textures : Array<h3d.mat.Texture>;
	public var next : TargetTmp;
	public var layer : Int;
	public var mipLevel : Int;
	public var depthBinding : DepthBinding;
	public function new(t, n, l, m, db) {
		this.t = t;
		this.next = n;
		this.layer = l;
		this.mipLevel = m;
		this.depthBinding = db;
	}
}

/**
	How the depth buffer is bound when rendering to a target (see `Engine.pushTarget`).
**/
enum DepthBinding {
	/**
		The depth buffer of the target is tested and written.
	**/
	ReadWrite;
	/**
		The depth buffer of the target is tested but not written.
	**/
	ReadOnly;
	/**
		Only a depth buffer is bound, without color target.
	**/
	DepthOnly;
	/**
		No depth buffer is bound.
	**/
	NotBound;
}

/**
	The 3D engine: it owns the graphics driver and the GPU memory manager, and manages the render targets and the frame.

	There is a single engine, created by `hxd.App` and accessible with `h3d.Engine.getCurrent()` (or `engine` in an `hxd.App`).
	It renders the scenes each frame with `render`, and offers render target management with `pushTarget` / `popTarget`.

	```haxe
	var engine = h3d.Engine.getCurrent();
	engine.backgroundColor = 0xFF202040;
	trace(engine.width + "x" + engine.height + " " + engine.drawCalls + " draw calls");
	```
**/
class Engine {
	#if multidriver
	static var ID = 0;
	/**
		The identifier of the engine (with `-D multidriver`).
	**/
	public var id(default, null) : Int;
	#end

	/**
		The graphics driver (OpenGL, DirectX, WebGL...).
	**/
	public var driver(default,null) : h3d.impl.Driver;

	/**
		The GPU memory manager.
	**/
	public var mem(default,null) : h3d.impl.MemoryManager;

	/**
		`true` if the driver is hardware accelerated.
	**/
	public var hardware(default, null) : Bool;
	/**
		The width of the output, in pixels.
	**/
	public var width(default, null) : Int;
	/**
		The height of the output, in pixels.
	**/
	public var height(default, null) : Int;
	/**
		Enables the debug mode of the driver (more checks and error reports, slower).
	**/
	public var debug(default, set) : Bool;

	/**
		The number of triangles drawn during the last frame.
	**/
	public var drawTriangles(default, null) : Float;
	/**
		The number of draw calls during the last frame.
	**/
	public var drawCalls(default, null) : Int;
	/**
		The number of compute shader dispatches during the last frame.
	**/
	public var dispatches(default, null) : Int;
	/**
		The number of shader changes during the last frame.
	**/
	public var shaderSwitches(default, null) : Int;

	/**
		The color (`0xAARRGGBB`) the output is cleared with at the beginning of each frame, or `null` to not clear it.
	**/
	public var backgroundColor : Null<Int> = 0xFF000000;
	/**
		If `true` (default), the output follows the window size.
	**/
	public var autoResize : Bool;
	/**
		Displays the window in full screen (borderless) mode, on platforms with windows.
	**/
	public var fullScreen(default, set) : Bool;

	/**
		The smoothed number of frames rendered per second.
	**/
	public var fps(get, never) : Float;

	var realFps : Float;
	var lastTime : Float;
	var antiAlias : Int;
	var tmpVector = new h3d.Vector4();
	var window : hxd.Window;

	var targetTmp : TargetTmp;
	var targetStack : TargetTmp;
	var currentTargetTex : h3d.mat.Texture;
	var currentTargetLayer : Int;
	var currentTargetMip : Int;
	var currentDepthBinding : DepthBinding;
	var needFlushTarget : Bool;
	var nullTexture : h3d.mat.Texture;
	var textureColorCache = new Map<Int,h3d.mat.Texture>();
	var inRender = false;
	/**
		`true` once the driver is initialized.
	**/
	public var ready(default,null) = false;
	@:allow(hxd.res) var resCache = new Map<{},Dynamic>();

	/**
		If `true`, the engine is created with a software driver (set before creating the engine).
	**/
	public static var SOFTWARE_DRIVER = false;
	/**
		The number of samples of the multisampling antialiasing of the output (set before creating the engine).
	**/
	public static var ANTIALIASING = 0;

	@:access(hxd.Window)
	function new() {
		#if multidriver
		this.id = ID;
		ID++;
		#end
		this.hardware = !SOFTWARE_DRIVER;
		this.antiAlias = ANTIALIASING;
		this.autoResize = true;
		fullScreen = !hxd.System.getValue(IsWindowed);
		window = hxd.Window.getInstance();
		realFps = hxd.System.getDefaultFrameRate();
		lastTime = haxe.Timer.stamp();
		window.addResizeEvent(onWindowResize);
		setCurrent();
		#if macro
		driver = new h3d.impl.NullDriver();
		#elseif (js || hlsdl || usegl)
		#if (hlsdl && heaps_vulkan)
		if( hxd.Window.USE_VULKAN )
			driver = new h3d.impl.VulkanDriver();
		else
		#end
		#if js
		driver = js.Browser.supported ? new h3d.impl.GlDriver(antiAlias) : new h3d.impl.NullDriver();
		#else
		driver = new h3d.impl.GlDriver(antiAlias);
		#end
		#elseif (hldx && dx12)
		driver = new h3d.impl.DX12Driver();
		#elseif hldx
		driver = new h3d.impl.DirectXDriver();
		#elseif usesys
		driver = new haxe.GraphicsDriver(antiAlias);
		#else
		#if sys Sys.println #else trace #end("No output driver available." #if hl + " Compile with -lib hlsdl or -lib hldx" #end);
		#end
	}

	static var CURRENT : Engine = null;

	/**
		Replaces the graphics driver.
	**/
	public function setDriver(d) {
		driver = d;
		if( mem != null ) mem.driver = d;
	}

	/**
		Returns the current engine.
	**/
	public static inline function getCurrent() {
		return CURRENT;
	}

	/**
		Makes this engine the current one.
	**/
	public inline function setCurrent() {
		CURRENT = this;
		window.setCurrent();
	}

	/**
		Initializes the driver. `onReady` is called when it is ready. Done by `hxd.App`.
	**/
	public function init() {
		driver.init(onCreate, !hardware);
	}

	/**
		Returns the name of the driver (and details such as the GPU name if `details` is set).
	**/
	public function driverName(details=false) {
		return driver.getDriverName(details);
	}

	/**
		Low level: selects the shader used by the next draw calls.
	**/
	public function selectShader( shader : hxsl.RuntimeShader ) {
		flushTarget();
		if( driver.selectShader(shader) )
			shaderSwitches++;
	}

	/**
		Low level: applies the render states of `pass` for the next draw calls.
	**/
	public function selectMaterial( pass : h3d.mat.Pass ) {
		driver.selectMaterial(pass);
	}

	/**
		Low level: uploads the per-object parameters, textures and buffers of the current shader.
	**/
	public function uploadInstanceShaderBuffers(buffers) {
		driver.flushShaderBuffers();
		driver.uploadShaderBuffers(buffers, Params);
		driver.uploadShaderBuffers(buffers, Textures);
		driver.uploadShaderBuffers(buffers, Buffers);
	}

	/**
		Low level: uploads a kind of shader buffers (globals, parameters, textures or buffers) of the current shader.
	**/
	public function uploadShaderBuffers(buffers, which) {
		driver.uploadShaderBuffers(buffers, which);
	}

	function selectBuffer( buf : Buffer ) {
		if( buf.isDisposed() )
			return false;
		flushTarget();
		driver.selectBuffer(buf);
		return true;
	}

	/**
		Low level: draws a buffer of independent triangles (3 vertexes each).
		@param start The first triangle.
		@param max The number of triangles, or `-1` for all.
	**/
	public inline function renderTriBuffer( b : Buffer, start = 0, max = -1 ) {
		return renderBuffer(b, mem.getTriIndexes(b.vertices), 3, start, max);
	}

	/**
		Low level: draws a buffer of quads (4 vertexes each, as 2 triangles).
		@param start The first triangle.
		@param max The number of triangles, or `-1` for all.
	**/
	public inline function renderQuadBuffer( b : Buffer, start = 0, max = -1 ) {
		return renderBuffer(b, mem.getQuadIndexes(b.vertices), 2, start, max);
	}

	// we use preallocated indexes so all the triangles are stored inside our buffers
	function renderBuffer( b : Buffer, indexes : Indexes, vertPerTri : Int, startTri = 0, drawTri = -1 ) {
		if( indexes.isDisposed() )
			return;
		var ntri = Std.int(b.vertices / vertPerTri);
		if( drawTri < 0 )
			drawTri = ntri - startTri;
		if( startTri < 0 || drawTri < 0 || startTri + drawTri > ntri )
			throw "Invalid vertices count";
		if( drawTri > 0 && selectBuffer(b) ) {
			// *3 because it's the position in indexes which are always by 3
			driver.draw(indexes, startTri * 3, drawTri);
			drawTriangles += drawTri;
			drawCalls++;
		}
	}

	// we use custom indexes, so the number of triangles is the number of indexes/3
	/**
		Low level: draws the triangles of a vertex buffer using an index buffer.
		@param startTri The first triangle.
		@param drawTri The number of triangles, or `-1` for all.
	**/
	public function renderIndexed( b : Buffer, indexes : Indexes, startTri = 0, drawTri = -1 ) {
		if( indexes.isDisposed() )
			return;
		var maxTri = Std.int(indexes.count / 3);
		if( drawTri < 0 ) drawTri = maxTri - startTri;
		if( drawTri > 0 && selectBuffer(b) ) {
			// *3 because it's the position in indexes which are always by 3
			driver.draw(indexes, startTri * 3, drawTri);
			drawTriangles += drawTri;
			drawCalls++;
		}
	}

	/**
		Low level: draws triangles whose vertex inputs come from several buffers.
	**/
	public function renderMultiBuffers( format : hxd.BufferFormat.MultiFormat, buffers : Array<Buffer>, indexes : Indexes, startTri = 0, drawTri = -1 ) {
		var maxTri = Std.int(indexes.count / 3);
		if( maxTri <= 0 ) return;
		flushTarget();
		driver.selectMultiBuffers(format, buffers);
		if( indexes.isDisposed() )
			return;
		if( drawTri < 0 ) drawTri = maxTri - startTri;
		if( drawTri > 0 ) {
			// render
			driver.draw(indexes, startTri * 3, drawTri);
			drawTriangles += drawTri;
			drawCalls++;
		}
	}

	/**
		Low level: draws instances with the given draw commands.
	**/
	public function renderInstanced( indexes : Indexes, commands : h3d.impl.InstanceBuffer ) {
		if( indexes.isDisposed() )
			return;
		if( commands.commandCount > 0 ) {
			driver.drawInstanced(indexes, commands);
			drawTriangles += commands.triCount;
			drawCalls++;
		}
	}

	function set_debug(d) {
		debug = d;
		driver.setDebug(debug);
		return d;
	}

	function onCreate( disposed ) {
		setCurrent();
		if( autoResize ) {
			width = window.width;
			height = window.height;
		}
		if( disposed ) {
			hxd.impl.Allocator.get().onContextLost();
			mem.onContextLost();
		} else {
			mem = new h3d.impl.MemoryManager(driver);
			mem.init();
			nullTexture = new h3d.mat.Texture(0, 0, [NoAlloc]);
		}
		hardware = driver.hasFeature(HardwareAccelerated);
		set_debug(debug);
		set_fullScreen(fullScreen);
		resize(width, height);
		if( disposed )
			onContextLost();
		else
			onReady();
		ready = true;
	}

	/**
		Called when the GPU context was lost and recreated: GPU resources without `realloc` must be recreated.
	**/
	public dynamic function onContextLost() {
	}

	/**
		Called when the driver is initialized.
	**/
	public dynamic function onReady() {
	}

	function onWindowResize() {
		if( autoResize && !driver.isDisposed() ) {
			var w = window.width, h = window.height;
			if( w != width || h != height )
				resize(w, h);
			onResized();
		}
	}

	function set_fullScreen(v) {
		fullScreen = v;
		if( mem != null && hxd.System.getValue(IsWindowed) ) {
			window.displayMode = v ? Borderless : Windowed;
		}
		return v;
	}

	/**
		Called after the output was resized to follow the window.
	**/
	public dynamic function onResized() {
	}

	/**
		Resizes the output (32x32 minimum).
	**/
	public function resize(width, height) {
		// minimum 32x32 size
		if( width < 32 ) width = 32;
		if( height < 32 ) height = 32;
		this.width = width;
		this.height = height;
		if( !driver.isDisposed() ) driver.resize(width, height);
	}

	/**
		Starts a frame: resets the statistics and clears the output with `backgroundColor`. Returns `false` if the driver
		cannot render. Called by `render`.
	**/
	public function begin() {
		if( driver.isDisposed() )
			return false;
		// init
		inRender = true;
		drawTriangles = 0;
		shaderSwitches = 0;
		drawCalls = 0;
		dispatches = 0;
		targetStack = null;
		needFlushTarget = currentTargetTex != null;
		#if (usesys && !macro)
		haxe.System.beginFrame();
		#end
		mem.beginFrame();
		driver.upscaling.latencyMarker(SimulationEnd);
		driver.begin(hxd.Timer.frameCount);
		if( backgroundColor != null ) clear(backgroundColor, 1, 0);
		return true;
	}

	/**
		Tells if the driver supports the feature `f` (see `h3d.impl.Driver.Feature`).
	**/
	public function hasFeature(f) {
		return driver.hasFeature(f);
	}

	/**
		Ends the frame and presents it. Called by `render`.
	**/
	public function end() {
		inRender = false;
		driver.end();
	}

	/**
		Returns the current render target, or `null` when rendering to the screen.
	**/
	public function getCurrentTarget() {
		return targetStack == null ? null : targetStack.t == nullTexture ? targetStack.textures[0] : targetStack.t;
	}

	/**
		Renders to the texture `tex` until the matching `popTarget`. The texture must have the `Target` flag.
		@param layer The layer (cube face or array layer) to render to.
		@param mipLevel The mip level to render to.
		@param depthBinding How the depth buffer of the texture is used.
	**/
	public function pushTarget( tex : h3d.mat.Texture, layer = 0, mipLevel = 0, depthBinding = ReadWrite ) {
		var c = targetTmp;
		if( c == null )
			c = new TargetTmp(tex, targetStack, layer, mipLevel, depthBinding);
		else {
			targetTmp = c.next;
			c.t = tex;
			c.next = targetStack;
			c.mipLevel = mipLevel;
			c.layer = layer;
			c.depthBinding = depthBinding;
		}
		targetStack = c;
		updateNeedFlush();
	}

	function updateNeedFlush() {
		var t = targetStack;
		if( t == null )
			needFlushTarget = currentTargetTex != null;
		else
			needFlushTarget = currentTargetTex != t.t || currentTargetLayer != t.layer || currentTargetMip != t.mipLevel || t.textures != null || currentDepthBinding != t.depthBinding;
	}

	/**
		Renders to several textures at once (multiple render targets) until the matching `popTarget`.
	**/
	public function pushTargets( textures : Array<h3d.mat.Texture>, depthBinding = ReadWrite ) {
		pushTarget(nullTexture, depthBinding);
		targetStack.textures = textures;
		needFlushTarget = true;
	}

	/**
		Renders only to a depth texture until the matching `popTarget`.
	**/
	public function pushDepth( depthBuffer : h3d.mat.Texture, layer = 0 ) {
		pushTarget(depthBuffer, layer, 0, DepthOnly);
	}

	/**
		Restores the render target active before the last `pushTarget`.
	**/
	public function popTarget() {
		var c = targetStack;
		if( c == null )
			throw "popTarget() with no matching pushTarget()";
		targetStack = c.next;
		updateNeedFlush();
		// recycle
		c.t = null;
		c.textures = null;
		c.next = targetTmp;
		targetTmp = c;
	}

	inline function flushTarget() {
		if( needFlushTarget ) doFlushTarget();
	}

	function doFlushTarget() {
		var t = targetStack;
		if( t == null ) {
			driver.setRenderTarget(null);
			currentTargetTex = null;
		} else {
			if ( t.depthBinding == DepthOnly )
				driver.setDepth(t.t, t.layer);
			else if( t.textures != null )
				driver.setRenderTargets(t.textures, t.depthBinding);
			else
				driver.setRenderTarget(t.t, t.layer, t.mipLevel, t.depthBinding);
			currentTargetTex = t.t;
			currentTargetLayer = t.layer;
			currentTargetMip = t.mipLevel;
			currentDepthBinding = t.depthBinding;
		}
		needFlushTarget = false;
	}

	/**
		Clears the current target with a float color, and optionally the depth and stencil.
	**/
	public function clearF( color : h3d.Vector4, ?depth : Float, ?stencil : Int ) {
		flushTarget();
		driver.clear(color, depth, stencil);
	}

	/**
		Clears the current target.
		@param color The color in `0xAARRGGBB` format, or `null` to keep the color.
		@param depth The depth value, or `null` to keep the depth.
		@param stencil The stencil value, or `null` to keep the stencil.
	**/
	public function clear( ?color : Int, ?depth : Float, ?stencil : Int ) {
		if( color != null )
			tmpVector.setColor(color);
		flushTarget();
		driver.clear(color == null ? null : tmpVector, depth, stencil);
	}

	/**
	 * Sets up a scissored zone to eliminate pixels outside the given range.
	 * Call with no parameters to reset to full viewport.
	 */
	public function setRenderZone( x = 0, y = 0, width = -1, height = -1 ) : Void {
		flushTarget();
		driver.setRenderZone(x, y, width, height);
	}

	/**
		Renders a frame: calls `begin`, `obj.render(this)` and `end`, and updates `fps`. Done every frame by `hxd.App`.
	**/
	public function render( obj : { function render( engine : Engine ) : Void; } ) {
		if( !begin() ) return false;
		obj.render(this);
		end();

		var delta = haxe.Timer.stamp() - lastTime;
		lastTime += delta;
		if( delta > 0 ) {
			var curFps = 1. / delta;
			if( curFps > realFps * 2 ) curFps = realFps * 2 else if( curFps < realFps * 0.5 ) curFps = realFps * 0.5;
			var f = delta / .5;
			if( f > 0.3 ) f = 0.3;
			realFps = realFps * (1 - f) + curFps * f; // smooth a bit the fps
		}
		return true;
	}

	/**
		Enables the depth clamping of the next draw calls.
	**/
	public function setDepthClamp( enabled : Bool ) {
		driver.setDepthClamp(enabled);
	}

	/**
		Sets the depth bias of the next draw calls (used against shadow acne).
	**/
	public function setDepthBias( depthBias : Float, slopeScaledBias : Float ) {
		driver.setDepthBias( depthBias, slopeScaledBias );
	}

	/**
		Releases the driver and all the GPU resources.
	**/
	public function dispose() {
		driver.dispose();
		window.removeResizeEvent(onWindowResize);
		if ( mem != null )
			mem.dispose();
		#if multidriver
		for ( r in resCache ) {
			var resource = Std.downcast(r, hxd.res.Resource);
			if ( resource != null ) {
				resource.entry.unwatch(id);
			}
		}
		#end
	}

	function get_fps() {
		return Math.ceil(realFps * 100) / 100;
	}

}
