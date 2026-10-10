# h3d.impl.Driver

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/Driver.hx`](../../../../../h3d/impl/Driver.hx)

Subclasses: [`h3d.impl.DirectXDriver`](DirectXDriver.md), [`h3d.impl.GlDriver`](GlDriver.md), [`h3d.impl.NullDriver`](NullDriver.md)

The base class of the graphics drivers (OpenGL/WebGL, DirectX 11 and 12...): it allocates the GPU resources and executes the draw calls requested by `h3d.Engine`.
The methods of this class do nothing or throw: each driver overrides them.

## Constructor

### new

```haxe
function new():Void
```

## Static variables

### requestedFeatures

```haxe
static var requestedFeatures(default, null):EnumFlags<Feature>
```

The optional features requested with `requestFeature`.

## Static methods

### setShaderCache

```haxe
static function setShaderCache(cache:ShaderCache):Void
```

Sets the cache of the compiled shaders, used by the drivers that support it.

### requestFeature

```haxe
static function requestFeature(f:Feature):Bool
```

Requests an optional feature that must be enabled when the driver is created. Must be called before the engine is created. Returns `false` if the driver can't enable it.

## Variables

### upscaling

```haxe
var upscaling(default, null):Upscaling
```

The upscaling (and frame generation) technique used to present the frames.

### logEnable

```haxe
var logEnable:Bool
```

If set, the driver logs its calls (in debug builds).

## Methods

### hasFeature

```haxe
function hasFeature(f:Feature):Bool
```

Tells if the driver supports the feature.

### setRenderFlag

```haxe
function setRenderFlag(r:RenderFlag, value:Int):Void
```

Changes a driver setting.

### isSupportedFormat

```haxe
function isSupportedFormat(fmt:h3d.mat.TextureFormat):Bool
```

Tells if textures of the given format can be allocated.

### isDisposed

```haxe
function isDisposed():Bool
```

Tells if the GPU context was lost: the resources must be allocated again.

### dispose

```haxe
function dispose():Void
```

Releases the driver.

### begin

```haxe
function begin(frame:Int):Void
```

Called at the start of each frame.

### log

```haxe
inline function log(str:String):Void
```

Logs a message if `logEnable` is set (in debug builds).

### generateMipMaps

```haxe
function generateMipMaps(texture:h3d.mat.Texture):Void
```

Generates the mip levels of the texture from its first level.

### getNativeShaderCode

```haxe
function getNativeShaderCode(shader:hxsl.RuntimeShader):String
```

Returns the native code (GLSL, HLSL...) of the shader, for debugging.

### warmupShader

```haxe
function warmupShader(shader:hxsl.RuntimeShader):Void
```

Compiles the shader in advance, to avoid a stutter when it is first used.

### clear

```haxe
function clear(?color:h3d.Vector4, ?depth:Float, ?stencil:Int):Void
```

Clears the current render target with the color, depth and stencil values that are not `null`.

### getMemoryUsage

```haxe
function getMemoryUsage():Null<{ total:Float, free:Float, allocated:Float }>
```

Returns the video memory budget and usage in bytes, or `null` if not supported.

### captureRenderBuffer

```haxe
function captureRenderBuffer(pixels:hxd.Pixels):Void
```

Copies the content of the current render target into the pixels.

### capturePixels

```haxe
function capturePixels(tex:h3d.mat.Texture, layer:Int, mipLevel:Int, ?region:h2d.col.IBounds):hxd.Pixels
```

Returns the pixels of a mip level of a layer of the texture (or of a region of it).

### getDriverName

```haxe
function getDriverName(details:Bool):String
```

Returns the name of the driver, and of the GPU and API version if `details` is set.

### init

```haxe
function init(onCreate:() -> Void, ?forceSoftware:Bool = false):Void
```

Initializes the driver, then calls `onCreate` (with `true` if the GPU context was lost and is created again).

### resize

```haxe
function resize(width:Int, height:Int):Void
```

Resizes the back buffer.

### selectShader

```haxe
function selectShader(shader:hxsl.RuntimeShader):Bool
```

Selects the shader for the next draw calls. Returns `true` if it changed.

### selectMaterial

```haxe
function selectMaterial(pass:h3d.mat.Pass):Void
```

Sets the render states (culling, blending, depth test, stencil...) of the pass for the next draw calls.

### selectTextureHandles

```haxe
function selectTextureHandles(handles:Array<h3d.mat.TextureHandle>):Void
```

Makes the textures of the bindless handles resident for the next draw calls.

### selectBufferHandles

```haxe
function selectBufferHandles(handles:Array<h3d.BufferHandle>):Void
```

Makes the buffers of the bindless handles resident for the next draw calls.

### uploadShaderBuffers

```haxe
function uploadShaderBuffers(buffers:h3d.shader.Buffers, which:h3d.shader.BufferKind):Void
```

Uploads the globals, parameters, textures or buffers of the shader (depending on `which`) for the next draw calls.

### flushShaderBuffers

```haxe
function flushShaderBuffers():Void
```

Uploads the shader buffers that changed.

### selectBuffer

```haxe
function selectBuffer(buffer:h3d.Buffer):Void
```

Selects the vertex buffer for the next draw calls.

### selectMultiBuffers

```haxe
function selectMultiBuffers(format:hxd.MultiFormat, buffers:Array<h3d.Buffer>):Void
```

Selects several vertex buffers for the next draw calls, with the format combining them.

### draw

```haxe
function draw(ibuf:h3d.Buffer, startIndex:Int, ntriangles:Int):Void
```

Draws `ntriangles` triangles with the indexes of the buffer, from `startIndex`.

### drawInstanced

```haxe
function drawInstanced(ibuf:h3d.Buffer, commands:InstanceBuffer):Void
```

Draws instances, with the commands of the instance buffer.

### setRenderZone

```haxe
function setRenderZone(x:Int, y:Int, width:Int, height:Int):Void
```

Restricts the drawing to a rectangle of the render target (scissor). Pass `0, 0, -1, -1` to remove the restriction.

### setRenderTarget

```haxe
function setRenderTarget(tex:Null<h3d.mat.Texture>, ?layer:Int = 0, ?mipLevel:Int = 0, ?depthBinding:h3d.DepthBinding = ReadWrite):Void
```

Draws into a mip level of a layer of the texture, or into the back buffer if `null`.

### setRenderTargets

```haxe
function setRenderTargets(textures:Array<h3d.mat.Texture>, ?depthBinding:h3d.DepthBinding = ReadWrite):Void
```

Draws into several textures at once (multiple render targets).

### setDepth

```haxe
function setDepth(tex:Null<h3d.mat.Texture>, ?layer:Int = 0):Void
```

Draws only into a depth texture (or a layer of a depth texture array).

### setDepthClamp

```haxe
function setDepthClamp(enabled:Bool):Void
```

Enables depth clamping instead of clipping against the near and far planes (see the `DepthClamp` feature).

### setDepthBias

```haxe
function setDepthBias(depthBias:Float, slopeScaledBias:Float):Void
```

Sets the depth bias of the next draw calls.

### allocDepthBuffer

```haxe
function allocDepthBuffer(b:h3d.mat.Texture):Texture
```

Allocates a depth buffer.

### disposeDepthBuffer

```haxe
function disposeDepthBuffer(b:h3d.mat.Texture):Void
```

Releases a depth buffer.

### getDefaultDepthBuffer

```haxe
function getDefaultDepthBuffer():h3d.mat.Texture
```

Returns the depth buffer of the back buffer.

### present

```haxe
function present():Void
```

Presents the back buffer on the screen.

### end

```haxe
function end():Void
```

Called at the end of each frame.

### setDebug

```haxe
function setDebug(b:Bool):Void
```

Enables the debug mode of the driver (checks and logs).

### allocTexture

```haxe
function allocTexture(t:h3d.mat.Texture):Texture
```

Allocates the GPU texture.

### allocBuffer

```haxe
function allocBuffer(b:h3d.Buffer):GPUBuffer
```

Allocates the GPU buffer.

### allocInstanceBuffer

```haxe
function allocInstanceBuffer(b:InstanceBuffer, bytes:Bytes):Void
```

Allocates the GPU buffer of the instance commands, filled with the bytes.

### uploadInstanceBufferBytes

```haxe
function uploadInstanceBufferBytes(b:InstanceBuffer, startVertex:Int, vertexCount:Int, buf:Bytes, bufPos:Int):Void
```

Uploads instance commands to the instance buffer.

### disposeTexture

```haxe
function disposeTexture(t:h3d.mat.Texture):Void
```

Releases the GPU texture.

### disposeBuffer

```haxe
function disposeBuffer(b:h3d.Buffer):Void
```

Releases the GPU buffer.

### disposeInstanceBuffer

```haxe
function disposeInstanceBuffer(b:InstanceBuffer):Void
```

Releases the instance buffer.

### uploadIndexData

```haxe
function uploadIndexData(i:h3d.Buffer, startIndice:Int, indiceCount:Int, buf:hxd.IndexBuffer, bufPos:Int):Void
```

Uploads `indiceCount` indexes to the index buffer, from `startIndice`.

### uploadBufferData

```haxe
function uploadBufferData(b:h3d.Buffer, startVertex:Int, vertexCount:Int, buf:hxd.FloatBuffer, bufPos:Int):Void
```

Uploads `vertexCount` vertices from the floats to the buffer, from `startVertex`.

### uploadBufferBytes

```haxe
function uploadBufferBytes(b:h3d.Buffer, startVertex:Int, vertexCount:Int, buf:Bytes, bufPos:Int):Void
```

Uploads `vertexCount` vertices from the bytes to the buffer, from `startVertex`.

### uploadTextureBitmap

```haxe
function uploadTextureBitmap(t:h3d.mat.Texture, bmp:hxd.BitmapData, mipLevel:Int, side:Int):Void
```

Uploads the bitmap to a mip level of a side (cube face or layer) of the texture.

### uploadTexturePixels

```haxe
function uploadTexturePixels(t:h3d.mat.Texture, pixels:hxd.Pixels, mipLevel:Int, side:Int):Void
```

Uploads the pixels to a mip level of a side (cube face or layer) of the texture.

### readBufferBytes

```haxe
function readBufferBytes(b:h3d.Buffer, startVertex:Int, vertexCount:Int, buf:Bytes, bufPos:Int):Void
```

Reads `vertexCount` vertices of the buffer into the bytes.

### readBufferBytesAsync

```haxe
function readBufferBytesAsync(b:h3d.Buffer, startVertex:Int, vertexCount:Int, buf:Bytes, bufPos:Int, callback:() -> Void):Void
```

Reads vertices of the buffer into the bytes, then calls `callback` (when the GPU has finished, on the drivers that support it).

### copyTexture

```haxe
function copyTexture(from:h3d.mat.Texture, to:h3d.mat.Texture):Bool
```

Returns true if we could copy the texture, false otherwise (not supported by driver or mismatch in size/format)

### setResidentMip

```haxe
function setResidentMip(t:h3d.mat.Texture, mip:Int):Bool
```

Reallocates the allocated texture so its most detailed mip level is `mip`, keeping the content
of the mip levels common to both allocations. Returns false if not supported or out of memory,
in which case the texture is unchanged. Requires the ResidentMips feature.

### beginEvent

```haxe
function beginEvent(name:String):Void
```

Starts a named group of GPU commands, for debugging tools (such as RenderDoc or PIX).

### endEvent

```haxe
function endEvent():Void
```

Ends the group started with `beginEvent`.

### allocQuery

```haxe
function allocQuery(queryKind:QueryKind):Query
```

Allocates a query of the given kind.

### deleteQuery

```haxe
function deleteQuery(q:Query):Void
```

Releases the query.

### beginQuery

```haxe
function beginQuery(q:Query):Void
```

Starts the query.

### endQuery

```haxe
function endQuery(q:Query):Void
```

Ends the query.

### queryResultAvailable

```haxe
function queryResultAvailable(q:Query):Bool
```

Tells if the result of the query is available.

### queryResult

```haxe
function queryResult(q:Query):Float
```

Returns the result of the query (see `QueryKind`).

### computeDispatch

```haxe
function computeDispatch(?x:Int = 1, ?y:Int = 1, ?z:Int = 1, ?barrier:Bool = true):Void
```

Runs the selected compute shader on `x * y * z` work groups. If `barrier` is set, the next commands wait for it to finish.

### memoryBarrier

```haxe
function memoryBarrier():Void
```

Waits for the writes of the previous compute shaders to be visible.

### getTextureHandle

```haxe
function getTextureHandle(t:h3d.mat.Texture):h3d.mat.TextureHandle
```

Returns the bindless handle of the texture.

### getBufferHandle

```haxe
function getBufferHandle(b:h3d.Buffer):h3d.BufferHandle
```

Returns the bindless handle of the buffer.

### copyBackBuffer

```haxe
function copyBackBuffer(to:h3d.mat.Texture):Bool
```

Copies the back buffer into the texture. Returns `false` if not supported.
