# h3d.impl.Driver

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/Driver.hx`](../../../../../h3d/impl/Driver.hx)

Subclasses: [`h3d.impl.DirectXDriver`](DirectXDriver.md), [`h3d.impl.GlDriver`](GlDriver.md), [`h3d.impl.NullDriver`](NullDriver.md)

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

## Static methods

### setShaderCache

```haxe
static function setShaderCache(cache:ShaderCache):Void
```

### requestFeature

```haxe
static function requestFeature(f:Feature):Bool
```

## Variables

### upscaling

```haxe
var upscaling(default, null):Upscaling
```

### logEnable

```haxe
var logEnable:Bool
```

## Methods

### hasFeature

```haxe
function hasFeature(f:Feature):Bool
```

### setRenderFlag

```haxe
function setRenderFlag(r:RenderFlag, value:Int):Void
```

### isSupportedFormat

```haxe
function isSupportedFormat(fmt:h3d.mat.TextureFormat):Bool
```

### isDisposed

```haxe
function isDisposed():Bool
```

### dispose

```haxe
function dispose():Void
```

### begin

```haxe
function begin(frame:Int):Void
```

### log

```haxe
inline function log(str:String):Void
```

### generateMipMaps

```haxe
function generateMipMaps(texture:h3d.mat.Texture):Void
```

### getNativeShaderCode

```haxe
function getNativeShaderCode(shader:hxsl.RuntimeShader):String
```

### warmupShader

```haxe
function warmupShader(shader:hxsl.RuntimeShader):Void
```

### clear

```haxe
function clear(?color:h3d.Vector4, ?depth:Float, ?stencil:Int):Void
```

### getMemoryUsage

```haxe
function getMemoryUsage():Null<{ total:Float, free:Float, allocated:Float }>
```

### captureRenderBuffer

```haxe
function captureRenderBuffer(pixels:hxd.Pixels):Void
```

### capturePixels

```haxe
function capturePixels(tex:h3d.mat.Texture, layer:Int, mipLevel:Int, ?region:h2d.col.IBounds):hxd.Pixels
```

### getDriverName

```haxe
function getDriverName(details:Bool):String
```

### init

```haxe
function init(onCreate:() -> Void, ?forceSoftware:Bool = false):Void
```

### resize

```haxe
function resize(width:Int, height:Int):Void
```

### selectShader

```haxe
function selectShader(shader:hxsl.RuntimeShader):Bool
```

### selectMaterial

```haxe
function selectMaterial(pass:h3d.mat.Pass):Void
```

### selectTextureHandles

```haxe
function selectTextureHandles(handles:Array<h3d.mat.TextureHandle>):Void
```

### selectBufferHandles

```haxe
function selectBufferHandles(handles:Array<h3d.BufferHandle>):Void
```

### uploadShaderBuffers

```haxe
function uploadShaderBuffers(buffers:h3d.shader.Buffers, which:h3d.shader.BufferKind):Void
```

### flushShaderBuffers

```haxe
function flushShaderBuffers():Void
```

### selectBuffer

```haxe
function selectBuffer(buffer:h3d.Buffer):Void
```

### selectMultiBuffers

```haxe
function selectMultiBuffers(format:hxd.MultiFormat, buffers:Array<h3d.Buffer>):Void
```

### draw

```haxe
function draw(ibuf:h3d.Buffer, startIndex:Int, ntriangles:Int):Void
```

### drawInstanced

```haxe
function drawInstanced(ibuf:h3d.Buffer, commands:InstanceBuffer):Void
```

### setRenderZone

```haxe
function setRenderZone(x:Int, y:Int, width:Int, height:Int):Void
```

### setRenderTarget

```haxe
function setRenderTarget(tex:Null<h3d.mat.Texture>, ?layer:Int = 0, ?mipLevel:Int = 0, ?depthBinding:h3d.DepthBinding = ReadWrite):Void
```

### setRenderTargets

```haxe
function setRenderTargets(textures:Array<h3d.mat.Texture>, ?depthBinding:h3d.DepthBinding = ReadWrite):Void
```

### setDepth

```haxe
function setDepth(tex:Null<h3d.mat.Texture>, ?layer:Int = 0):Void
```

### setDepthClamp

```haxe
function setDepthClamp(enabled:Bool):Void
```

### setDepthBias

```haxe
function setDepthBias(depthBias:Float, slopeScaledBias:Float):Void
```

### allocDepthBuffer

```haxe
function allocDepthBuffer(b:h3d.mat.Texture):Texture
```

### disposeDepthBuffer

```haxe
function disposeDepthBuffer(b:h3d.mat.Texture):Void
```

### getDefaultDepthBuffer

```haxe
function getDefaultDepthBuffer():h3d.mat.Texture
```

### present

```haxe
function present():Void
```

### end

```haxe
function end():Void
```

### setDebug

```haxe
function setDebug(b:Bool):Void
```

### allocTexture

```haxe
function allocTexture(t:h3d.mat.Texture):Texture
```

### allocBuffer

```haxe
function allocBuffer(b:h3d.Buffer):GPUBuffer
```

### allocInstanceBuffer

```haxe
function allocInstanceBuffer(b:InstanceBuffer, bytes:Bytes):Void
```

### uploadInstanceBufferBytes

```haxe
function uploadInstanceBufferBytes(b:InstanceBuffer, startVertex:Int, vertexCount:Int, buf:Bytes, bufPos:Int):Void
```

### disposeTexture

```haxe
function disposeTexture(t:h3d.mat.Texture):Void
```

### disposeBuffer

```haxe
function disposeBuffer(b:h3d.Buffer):Void
```

### disposeInstanceBuffer

```haxe
function disposeInstanceBuffer(b:InstanceBuffer):Void
```

### uploadIndexData

```haxe
function uploadIndexData(i:h3d.Buffer, startIndice:Int, indiceCount:Int, buf:hxd.IndexBuffer, bufPos:Int):Void
```

### uploadBufferData

```haxe
function uploadBufferData(b:h3d.Buffer, startVertex:Int, vertexCount:Int, buf:hxd.FloatBuffer, bufPos:Int):Void
```

### uploadBufferBytes

```haxe
function uploadBufferBytes(b:h3d.Buffer, startVertex:Int, vertexCount:Int, buf:Bytes, bufPos:Int):Void
```

### uploadTextureBitmap

```haxe
function uploadTextureBitmap(t:h3d.mat.Texture, bmp:hxd.BitmapData, mipLevel:Int, side:Int):Void
```

### uploadTexturePixels

```haxe
function uploadTexturePixels(t:h3d.mat.Texture, pixels:hxd.Pixels, mipLevel:Int, side:Int):Void
```

### readBufferBytes

```haxe
function readBufferBytes(b:h3d.Buffer, startVertex:Int, vertexCount:Int, buf:Bytes, bufPos:Int):Void
```

### readBufferBytesAsync

```haxe
function readBufferBytesAsync(b:h3d.Buffer, startVertex:Int, vertexCount:Int, buf:Bytes, bufPos:Int, callback:() -> Void):Void
```

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

### endEvent

```haxe
function endEvent():Void
```

### allocQuery

```haxe
function allocQuery(queryKind:QueryKind):Query
```

### deleteQuery

```haxe
function deleteQuery(q:Query):Void
```

### beginQuery

```haxe
function beginQuery(q:Query):Void
```

### endQuery

```haxe
function endQuery(q:Query):Void
```

### queryResultAvailable

```haxe
function queryResultAvailable(q:Query):Bool
```

### queryResult

```haxe
function queryResult(q:Query):Float
```

### computeDispatch

```haxe
function computeDispatch(?x:Int = 1, ?y:Int = 1, ?z:Int = 1, ?barrier:Bool = true):Void
```

### memoryBarrier

```haxe
function memoryBarrier():Void
```

### getTextureHandle

```haxe
function getTextureHandle(t:h3d.mat.Texture):h3d.mat.TextureHandle
```

### getBufferHandle

```haxe
function getBufferHandle(b:h3d.Buffer):h3d.BufferHandle
```

### copyBackBuffer

```haxe
function copyBackBuffer(to:h3d.mat.Texture):Bool
```
