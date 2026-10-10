package h3d.impl;

#if macro
/**
	The native GPU buffer of the current driver.
**/
typedef GPUBuffer = {};
/**
	The native texture of the current driver.
**/
typedef Texture = {};
/**
	The native query of the current driver.
**/
typedef Query = {};
/**
	The driver class of the current platform.
**/
typedef DriverImpl = Driver;
#elseif js
/**
	The native GPU buffer of the current driver.
**/
typedef GPUBuffer = js.html.webgl.Buffer;
/**
	The native texture of the current driver.
**/
typedef Texture = {
	/**
		The native texture.
	**/
	var t : js.html.webgl.Texture;
	/**
		The width, in pixels.
	**/
	var width : Int;
	/**
		The height, in pixels.
	**/
	var height : Int;
	/**
		The GL internal format.
	**/
	var internalFmt : Int;
	/**
		The GL pixel type.
	**/
	var pixelFmt : Int;
	/**
		The sampling parameters (filter, wrap, mip map) last applied, to skip unchanged ones (`-1` if none).
	**/
	var bits : Int;
	/**
		The GL binding target (2D, cube, array or 3D texture).
	**/
	var bind : Int;
#if multidriver
	/**
		The driver owning the texture.
	**/
	var driver : Driver;
#end
};
/**
	The native query of the current driver.
**/
typedef Query = {};
/**
	The driver class of the current platform.
**/
typedef DriverImpl = GlDriver;
#elseif hlsdl
/**
	The native GPU buffer of the current driver.
**/
typedef GPUBuffer = sdl.GL.Buffer;
/**
	The native texture of the current driver.
**/
typedef Texture = {
	/**
		The native texture.
	**/
	var t : sdl.GL.Texture;
	/**
		The width, in pixels.
	**/
	var width : Int;
	/**
		The height, in pixels.
	**/
	var height : Int;
	/**
		The GL internal format.
	**/
	var internalFmt : Int;
	/**
		The GL pixel type.
	**/
	var pixelFmt : Int;
	/**
		The sampling parameters (filter, wrap, mip map) last applied, to skip unchanged ones (`-1` if none).
	**/
	var bits : Int;
	/**
		The GL binding target (2D, cube, array or 3D texture).
	**/
	var bind : Int;
#if multidriver
	/**
		The driver owning the texture.
	**/
	var driver : Driver;
#end
};
/**
	The native query of the current driver.
**/
typedef Query = {
	/**
		The native query.
	**/
	var q : sdl.GL.Query;
	/**
		The kind of query.
	**/
	var kind : QueryKind;
};
/**
	The driver class of the current platform.
**/
typedef DriverImpl = GlDriver;
#elseif usegl
/**
	The native GPU buffer of the current driver.
**/
typedef GPUBuffer = haxe.GLTypes.Buffer;
/**
	The native texture of the current driver.
**/
typedef Texture = {
	/**
		The native texture.
	**/
	var t : haxe.GLTypes.Texture;
	/**
		The width, in pixels.
	**/
	var width : Int;
	/**
		The height, in pixels.
	**/
	var height : Int;
	/**
		The GL internal format.
	**/
	var internalFmt : Int;
	/**
		The GL pixel type.
	**/
	var pixelFmt : Int;
	/**
		The sampling parameters (filter, wrap, mip map) last applied, to skip unchanged ones (`-1` if none).
	**/
	var bits : Int;
	/**
		The GL binding target (2D, cube, array or 3D texture).
	**/
	var bind : Int;
};
/**
	The native query of the current driver.
**/
typedef Query = {
	/**
		The native query.
	**/
	var q : haxe.GLTypes.Query;
	/**
		The kind of query.
	**/
	var kind : QueryKind;
};
/**
	The driver class of the current platform.
**/
typedef DriverImpl = GlDriver;
#elseif (hldx && dx12)
/**
	The native GPU buffer of the current driver.
**/
typedef GPUBuffer = DX12Driver.BufferData;
/**
	The native texture of the current driver.
**/
typedef Texture = h3d.impl.DX12Driver.TextureData;
/**
	The native query of the current driver.
**/
typedef Query = h3d.impl.DX12Driver.QueryData;
/**
	The driver class of the current platform.
**/
typedef DriverImpl = DX12Driver;
#elseif hldx
/**
	The native GPU buffer of the current driver.
**/
typedef GPUBuffer = dx.Resource;
/**
	The native texture of the current driver.
**/
typedef Texture = {
	/**
		The native resource.
	**/
	var res : dx.Resource;
	/**
		The shader resource view.
	**/
	var view : dx.Driver.ShaderResourceView;
	/**
		The depth stencil view, for depth textures.
	**/
	var ?depthView : dx.Driver.DepthStencilView;
	/**
		The read only depth stencil view, for depth textures.
	**/
	var ?readOnlyDepthView : dx.Driver.DepthStencilView;
	/**
		The render target views, by layer and mip level.
	**/
	var rt : Array<dx.Driver.RenderTargetView>;
	/**
		The shader resource views starting at each mip level.
	**/
	var ?views : Array<dx.Driver.ShaderResourceView>;
};
/**
	The native query of the current driver.
**/
typedef Query = {};
/**
	The driver class of the current platform.
**/
typedef DriverImpl = Driver;
#elseif usesys
/**
	The native GPU buffer of the current driver.
**/
typedef GPUBuffer = haxe.GraphicsDriver.GPUBuffer;
/**
	The native texture of the current driver.
**/
typedef Texture = haxe.GraphicsDriver.Texture;
/**
	The native query of the current driver.
**/
typedef Query = haxe.GraphicsDriver.Query;
/**
	The driver class of the current platform.
**/
typedef DriverImpl = Driver;
#else
/**
	The native GPU buffer of the current driver.
**/
typedef GPUBuffer = {};
/**
	The native texture of the current driver.
**/
typedef Texture = {};
/**
	The native query of the current driver.
**/
typedef Query = {};
/**
	The driver class of the current platform.
**/
typedef DriverImpl = Driver;
#end

/**
	The optional features of a driver, tested with `Driver.hasFeature`.
**/
enum Feature {
	/**
		Do the shader support standard derivates functions (ddx ddy).
	**/
	StandardDerivatives;
	/**
		Can use allocate floating point textures.
	**/
	FloatTextures;
	/**
		Can we allocate custom depth buffers. If not, default depth buffer
		(queried with DepthBuffer.getDefault()) will be clear if we change
		the render target resolution or format.
	**/
	AllocDepthBuffer;
	/**
		Is our driver hardware accelerated or CPU emulated.
	**/
	HardwareAccelerated;
	/**
		Allows to render on several render targets with a single draw.
	**/
	MultipleRenderTargets;
	/**
		Does it supports query objects API.
	**/
	Queries;
	/**
		Supports gamma correct textures
	**/
	SRGBTextures;
	/**
		Allows advanced shader operations (webgl2, opengl3+, directx 9.0c+)
	**/
	ShaderModel3;
	/**
		Tells if the driver uses bottom-left coordinates for textures.
	**/
	BottomLeftCoords;
	/**
		Supports rendering in wireframe mode.
	**/
	Wireframe;
	/**
		Supports instanced rendering
	**/
	InstancedRendering;
	/**
		Supports bindless
	**/
	Bindless;
	/**
		Can render into a single layer of a depth texture array.
	**/
	DepthTextureArray;
	/**
		Supports compute shaders and read/write storage buffers.
	**/
	ComputeShaders;
	/**
		Sampler arrays can be indexed by a non-constant, dynamically uniform expression.
	**/
	DynamicSamplerIndex;
	/**
		Supports depth clamping instead of clipping against the near and far planes.
	**/
	DepthClamp;
	/**
		Textures can allocate only their less detailed mip levels (see Texture.setResidentMip).
	**/
	ResidentMips;
}

/**
	The kind of a GPU query.
**/
enum QueryKind {
	/**
		The result will give the GPU Timestamp (in nanoseconds, 1e-9 seconds) at the time the endQuery is performed
	**/
	TimeStamp;
	/**
		The result will give the number of samples that passes the depth buffer between beginQuery/endQuery range
	**/
	Samples;
	/**
		The result will give the GPU elapsed time (in nanoseconds, 1e-9 seconds) between beginQuery/endQuery range
	**/
	TimeElapsed;
}

/**
	Driver settings changed with `Driver.setRenderFlag`.
**/
enum RenderFlag {
	/**
		0 = LeftHanded (default), 1 = RightHanded. Affects the meaning of triangle culling value.
	**/
	CameraHandness;
}

/**
	The base class of the graphics drivers (OpenGL/WebGL, DirectX 11 and 12...): it allocates the GPU resources and executes the draw calls requested by `h3d.Engine`.
	The methods of this class do nothing or throw: each driver overrides them.
**/
class Driver {

	static var SHADER_CACHE : h3d.impl.ShaderCache;
	var shaderCache = SHADER_CACHE;

	/**
		The upscaling (and frame generation) technique used to present the frames.
	**/
	public var upscaling(default, null) = new h3d.impl.Upscaling(null, []);

	/**
		Sets the cache of the compiled shaders, used by the drivers that support it.
	**/
	public static function setShaderCache( cache : h3d.impl.ShaderCache ) {
		SHADER_CACHE = cache;
	}

	/**
		If set, the driver logs its calls (in debug builds).
	**/
	public var logEnable : Bool;


	/**
		Tells if the driver supports the feature.
	**/
	public function hasFeature( f : Feature ) {
		return false;
	}

	/**
		The optional features requested with `requestFeature`.
	**/
	public static var requestedFeatures(default, null) = new haxe.EnumFlags<Feature>();
	/**
		Requests an optional feature that must be enabled when the driver is created. Must be called before the engine is created. Returns `false` if the driver can't enable it.
	**/
	public static function requestFeature( f : Feature ) : Bool {
		if( h3d.Engine.getCurrent() != null )
			throw "Driver.requestFeature(" + f + ") must be called before the engine is created";
		var accepted = DriverImpl.onFeatureRequested(f);
		if( accepted )
			requestedFeatures.set(f);
		return accepted;
	}

	static function onFeatureRequested( f : Feature ) : Bool {
		return false;
	}

	/**
		Changes a driver setting.
	**/
	public function setRenderFlag( r : RenderFlag, value : Int ) {
	}

	/**
		Tells if textures of the given format can be allocated.
	**/
	public function isSupportedFormat( fmt : h3d.mat.Data.TextureFormat ) {
		return false;
	}

	/**
		Tells if the GPU context was lost: the resources must be allocated again.
	**/
	public function isDisposed() {
		return true;
	}

	/**
		Releases the driver.
	**/
	public function dispose() {
	}

	/**
		Called at the start of each frame.
	**/
	public function begin( frame : Int ) {
	}

	/**
		Logs a message if `logEnable` is set (in debug builds).
	**/
	public inline function log( str : String ) {
		#if debug
		if( logEnable ) logImpl(str);
		#end
	}

	/**
		Generates the mip levels of the texture from its first level.
	**/
	public function generateMipMaps( texture : h3d.mat.Texture ) {
		throw "Mipmaps auto generation is not supported on this platform";
	}

	/**
		Returns the native code (GLSL, HLSL...) of the shader, for debugging.
	**/
	public function getNativeShaderCode( shader : hxsl.RuntimeShader ) : String {
		return null;
	}

	/**
		Compiles the shader in advance, to avoid a stutter when it is first used.
	**/
	public function warmupShader( shader : hxsl.RuntimeShader ) {
	}

	function logImpl( str : String ) {
	}

	/**
		Clears the current render target with the color, depth and stencil values that are not `null`.
	**/
	public function clear( ?color : h3d.Vector4, ?depth : Float, ?stencil : Int ) {
	}

	/**
		Returns the video memory budget and usage in bytes, or `null` if not supported.
	**/
	public function getMemoryUsage() : Null<{ total : Float, allocated : Float, free : Float }>  {
		return null;
	}

	/**
		Copies the content of the current render target into the pixels.
	**/
	public function captureRenderBuffer( pixels : hxd.Pixels ) {
	}

	/**
		Returns the pixels of a mip level of a layer of the texture (or of a region of it).
	**/
	public function capturePixels( tex : h3d.mat.Texture, layer : Int, mipLevel : Int, ?region : h2d.col.IBounds ) : hxd.Pixels {
		throw "Can't capture pixels on this platform";
		return null;
	}

	/**
		Returns the name of the driver, and of the GPU and API version if `details` is set.
	**/
	public function getDriverName( details : Bool ) {
		return "Not available";
	}

	/**
		Initializes the driver, then calls `onCreate` (with `true` if the GPU context was lost and is created again).
	**/
	public function init( onCreate : Bool -> Void, forceSoftware = false ) {
	}

	/**
		Resizes the back buffer.
	**/
	public function resize( width : Int, height : Int ) {
	}

	/**
		Selects the shader for the next draw calls. Returns `true` if it changed.
	**/
	public function selectShader( shader : hxsl.RuntimeShader ) {
		return false;
	}

	/**
		Sets the render states (culling, blending, depth test, stencil...) of the pass for the next draw calls.
	**/
	public function selectMaterial( pass : h3d.mat.Pass ) {
	}

	/**
		Makes the textures of the bindless handles resident for the next draw calls.
	**/
	public function selectTextureHandles( handles : Array<h3d.mat.TextureHandle> ) {
	}

	/**
		Makes the buffers of the bindless handles resident for the next draw calls.
	**/
	public function selectBufferHandles( handles : Array<h3d.BufferHandle> ) {
	}


	/**
		Uploads the globals, parameters, textures or buffers of the shader (depending on `which`) for the next draw calls.
	**/
	public function uploadShaderBuffers( buffers : h3d.shader.Buffers, which : h3d.shader.Buffers.BufferKind ) {
	}

	/**
		Uploads the shader buffers that changed.
	**/
	public function flushShaderBuffers() {
	}

	/**
		Selects the vertex buffer for the next draw calls.
	**/
	public function selectBuffer( buffer : Buffer ) {
	}

	/**
		Selects several vertex buffers for the next draw calls, with the format combining them.
	**/
	public function selectMultiBuffers( format : hxd.BufferFormat.MultiFormat, buffers : Array<h3d.Buffer> ) {
	}

	/**
		Draws `ntriangles` triangles with the indexes of the buffer, from `startIndex`.
	**/
	public function draw( ibuf : Buffer, startIndex : Int, ntriangles : Int ) {
	}

	/**
		Draws instances, with the commands of the instance buffer.
	**/
	public function drawInstanced( ibuf : Buffer, commands : h3d.impl.InstanceBuffer ) {
	}

	/**
		Restricts the drawing to a rectangle of the render target (scissor). Pass `0, 0, -1, -1` to remove the restriction.
	**/
	public function setRenderZone( x : Int, y : Int, width : Int, height : Int ) {
	}

	/**
		Draws into a mip level of a layer of the texture, or into the back buffer if `null`.
	**/
	public function setRenderTarget( tex : Null<h3d.mat.Texture>, layer = 0, mipLevel = 0, depthBinding : h3d.Engine.DepthBinding = ReadWrite ) {
	}

	/**
		Draws into several textures at once (multiple render targets).
	**/
	public function setRenderTargets( textures : Array<h3d.mat.Texture>, depthBinding : h3d.Engine.DepthBinding = ReadWrite ) {
	}

	/**
		Draws only into a depth texture (or a layer of a depth texture array).
	**/
	public function setDepth( tex : Null<h3d.mat.Texture>, layer = 0 ) {
		if( layer != 0 )
			throw "Not implemented";
	}

	/**
		Enables depth clamping instead of clipping against the near and far planes (see the `DepthClamp` feature).
	**/
	public function setDepthClamp( enabled : Bool ) {
	}

	/**
		Sets the depth bias of the next draw calls.
	**/
	public function setDepthBias( depthBias : Float,  slopeScaledBias : Float ) {
	}

	/**
		Allocates a depth buffer.
	**/
	public function allocDepthBuffer( b : h3d.mat.Texture ) : Texture {
		return null;
	}

	/**
		Releases a depth buffer.
	**/
	public function disposeDepthBuffer( b : h3d.mat.Texture ) {
	}

	/**
		Returns the depth buffer of the back buffer.
	**/
	public function getDefaultDepthBuffer() : h3d.mat.Texture {
		return null;
	}

	/**
		Presents the back buffer on the screen.
	**/
	public function present() {
	}

	/**
		Called at the end of each frame.
	**/
	public function end() {
	}

	/**
		Enables the debug mode of the driver (checks and logs).
	**/
	public function setDebug( b : Bool ) {
	}

	/**
		Allocates the GPU texture.
	**/
	public function allocTexture( t : h3d.mat.Texture ) : Texture {
		return null;
	}

	/**
		Allocates the GPU buffer.
	**/
	public function allocBuffer( b : h3d.Buffer ) : GPUBuffer {
		return null;
	}

	/**
		Allocates the GPU buffer of the instance commands, filled with the bytes.
	**/
	public function allocInstanceBuffer( b : h3d.impl.InstanceBuffer, bytes : haxe.io.Bytes ) {
	}

	/**
		Uploads instance commands to the instance buffer.
	**/
	public function uploadInstanceBufferBytes(b : h3d.impl.InstanceBuffer, startVertex : Int, vertexCount : Int, buf : haxe.io.Bytes, bufPos : Int ) {
	}

	/**
		Releases the GPU texture.
	**/
	public function disposeTexture( t : h3d.mat.Texture ) {
	}

	/**
		Releases the GPU buffer.
	**/
	public function disposeBuffer( b : Buffer ) {
	}

	/**
		Releases the instance buffer.
	**/
	public function disposeInstanceBuffer( b : h3d.impl.InstanceBuffer ) {
	}

	/**
		Uploads `indiceCount` indexes to the index buffer, from `startIndice`.
	**/
	public function uploadIndexData( i : Buffer, startIndice : Int, indiceCount : Int, buf : hxd.IndexBuffer, bufPos : Int ) {
	}

	/**
		Uploads `vertexCount` vertices from the floats to the buffer, from `startVertex`.
	**/
	public function uploadBufferData( b : Buffer, startVertex : Int, vertexCount : Int, buf : hxd.FloatBuffer, bufPos : Int ) {
	}

	/**
		Uploads `vertexCount` vertices from the bytes to the buffer, from `startVertex`.
	**/
	public function uploadBufferBytes( b : Buffer, startVertex : Int, vertexCount : Int, buf : haxe.io.Bytes, bufPos : Int ) {
	}

	/**
		Uploads the bitmap to a mip level of a side (cube face or layer) of the texture.
	**/
	public function uploadTextureBitmap( t : h3d.mat.Texture, bmp : hxd.BitmapData, mipLevel : Int, side : Int ) {
	}

	/**
		Uploads the pixels to a mip level of a side (cube face or layer) of the texture.
	**/
	public function uploadTexturePixels( t : h3d.mat.Texture, pixels : hxd.Pixels, mipLevel : Int, side : Int ) {
	}

	/**
		Reads `vertexCount` vertices of the buffer into the bytes.
	**/
	public function readBufferBytes( b : Buffer, startVertex : Int, vertexCount : Int, buf : haxe.io.Bytes, bufPos : Int ) {
	}

	/**
		Reads vertices of the buffer into the bytes, then calls `callback` (when the GPU has finished, on the drivers that support it).
	**/
	public function readBufferBytesAsync( b : Buffer, startVertex : Int, vertexCount : Int, buf : haxe.io.Bytes, bufPos : Int, callback : Void -> Void ) {
	}

	/**
		Returns true if we could copy the texture, false otherwise (not supported by driver or mismatch in size/format)
	**/
	public function copyTexture( from : h3d.mat.Texture, to : h3d.mat.Texture ) {
		return false;
	}

	/**
		Reallocates the allocated texture so its most detailed mip level is `mip`, keeping the content
		of the mip levels common to both allocations. Returns false if not supported or out of memory,
		in which case the texture is unchanged. Requires the ResidentMips feature.
	**/
	public function setResidentMip( t : h3d.mat.Texture, mip : Int ) : Bool {
		return false;
	}

	// --- MARKING API

	/**
		Starts a named group of GPU commands, for debugging tools (such as RenderDoc or PIX).
	**/
	public function beginEvent( name : String ) {
	}

	/**
		Ends the group started with `beginEvent`.
	**/
	public function endEvent() {
	}

	// --- QUERY API

	/**
		Allocates a query of the given kind.
	**/
	public function allocQuery( queryKind : QueryKind ) : Query {
		return null;
	}

	/**
		Releases the query.
	**/
	public function deleteQuery( q : Query ) {
	}

	/**
		Starts the query.
	**/
	public function beginQuery( q : Query ) {
	}

	/**
		Ends the query.
	**/
	public function endQuery( q : Query ) {
	}

	/**
		Tells if the result of the query is available.
	**/
	public function queryResultAvailable( q : Query ) {
		return true;
	}

	/**
		Returns the result of the query (see `QueryKind`).
	**/
	public function queryResult( q : Query ) {
		return 0.;
	}

	// --- COMPUTE

	/**
		Runs the selected compute shader on `x * y * z` work groups. If `barrier` is set, the next commands wait for it to finish.
	**/
	public function computeDispatch( x : Int = 1, y : Int = 1, z : Int = 1, barrier: Bool = true ) {
		throw "Compute shaders are not implemented on this platform";
	}

	/**
		Waits for the writes of the previous compute shaders to be visible.
	**/
	public function memoryBarrier(){
		throw "Compute shaders are not implemented on this platform";
	}

	// --- Bindless

	/**
		Returns the bindless handle of the texture.
	**/
	public function getTextureHandle( t : h3d.mat.Texture ) : h3d.mat.TextureHandle {
		throw "Bindless is not implemented on this platform";
	}

	/**
		Returns the bindless handle of the buffer.
	**/
	public function getBufferHandle( b : h3d.Buffer ) : h3d.BufferHandle {
		throw "Bindless is not implemented on this platform";
	}

	/**
		Copies the back buffer into the texture. Returns `false` if not supported.
	**/
	public function copyBackBuffer( to : h3d.mat.Texture ) : Bool {
		return false;
	}
}