# h3d.impl.DirectXDriver

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/DirectXDriver.hx`](../../../../../h3d/impl/DirectXDriver.hx) · available on hl/directx

Extends: [`h3d.impl.Driver`](Driver.md)

The DirectX 11 driver (HashLink with the `hldx` library).

## Constructor

### new

```haxe
function new():Void
```

Creates the driver for the first window.

## Variables

### backBufferFormat

```haxe
var backBufferFormat:dx.Format
```

The format of the back buffer.

### depthStencilFormat

```haxe
var depthStencilFormat:dx.Format
```

The format of the default depth buffer.

## Methods

### getDriverFlags

```haxe
dynamic function getDriverFlags():dx.DriverInitFlags
```

Returns the flags used to create the device (the debug layer in debug builds). Can be replaced to change them.

### dispose

```haxe
override function dispose():Void
```

### resize

```haxe
override function resize(width:Int, height:Int):Void
```

### begin

```haxe
override function begin(frame:Int):Void
```

### isDisposed

```haxe
override function isDisposed():Bool
```

### init

```haxe
override function init(onCreate:() -> Void, ?forceSoftware:Bool = false):Void
```

### clear

```haxe
override function clear(?color:h3d.Vector4, ?depth:Float, ?stencil:Int):Void
```

### getDriverName

```haxe
override function getDriverName(details:Bool):String
```

### forceDeviceError

```haxe
function forceDeviceError():Void
```

Simulates the loss of the device, for tests.

### present

```haxe
override function present():Void
```

### getDefaultDepthBuffer

```haxe
override function getDefaultDepthBuffer():h3d.mat.Texture
```

### allocBuffer

```haxe
override function allocBuffer(b:h3d.Buffer):GPUBuffer
```

### allocDepthBuffer

```haxe
override function allocDepthBuffer(b:h3d.mat.Texture):Texture
```

### disposeDepthBuffer

```haxe
override function disposeDepthBuffer(b:h3d.mat.Texture):Void
```

### captureRenderBuffer

```haxe
override function captureRenderBuffer(pixels:hxd.Pixels):Void
```

### isSupportedFormat

```haxe
override function isSupportedFormat(fmt:hxd.PixelFormat):Bool
```

### allocTexture

```haxe
override function allocTexture(t:h3d.mat.Texture):Texture
```

### disposeTexture

```haxe
override function disposeTexture(t:h3d.mat.Texture):Void
```

### disposeBuffer

```haxe
override function disposeBuffer(b:h3d.Buffer):Void
```

### generateMipMaps

```haxe
override function generateMipMaps(texture:h3d.mat.Texture):Void
```

### uploadIndexData

```haxe
override function uploadIndexData(i:h3d.Buffer, startIndice:Int, indiceCount:Int, buf:hxd.IndexBuffer, bufPos:Int):Void
```

### uploadBufferData

```haxe
override function uploadBufferData(b:h3d.Buffer, startVertex:Int, vertexCount:Int, buf:hxd.FloatBuffer, bufPos:Int):Void
```

### uploadBufferBytes

```haxe
override function uploadBufferBytes(b:h3d.Buffer, startVertex:Int, vertexCount:Int, buf:Bytes, bufPos:Int):Void
```

### readBufferBytes

```haxe
override function readBufferBytes(b:h3d.Buffer, startVertex:Int, vertexCount:Int, buf:Bytes, bufPos:Int):Void
```

### capturePixels

```haxe
override function capturePixels(tex:h3d.mat.Texture, layer:Int, mipLevel:Int, ?region:h2d.col.IBounds):hxd.Pixels
```

### uploadTextureBitmap

```haxe
override function uploadTextureBitmap(t:h3d.mat.Texture, bmp:hxd.BitmapData, mipLevel:Int, side:Int):Void
```

### uploadTexturePixels

```haxe
override function uploadTexturePixels(t:h3d.mat.Texture, pixels:hxd.Pixels, mipLevel:Int, side:Int):Void
```

### selectMaterial

```haxe
override function selectMaterial(pass:h3d.mat.Pass):Void
```

### getNativeShaderCode

```haxe
override function getNativeShaderCode(shader:hxsl.RuntimeShader):String
```

### hasFeature

```haxe
override function hasFeature(f:Feature):Bool
```

### copyTexture

```haxe
override function copyTexture(from:h3d.mat.Texture, to:h3d.mat.Texture):Bool
```

### setResidentMip

```haxe
override function setResidentMip(t:h3d.mat.Texture, mip:Int):Bool
```

### setRenderTarget

```haxe
override function setRenderTarget(tex:Null<h3d.mat.Texture>, ?layer:Int = 0, ?mipLevel:Int = 0, ?depthBinding:h3d.DepthBinding = ReadWrite):Void
```

### setRenderTargets

```haxe
override function setRenderTargets(textures:Array<h3d.mat.Texture>, ?depthBinding:h3d.DepthBinding = ReadWrite):Void
```

### setDepth

```haxe
override function setDepth(depthBuffer:h3d.mat.Texture, ?layer:Int = 0):Void
```

### setDepthClamp

```haxe
override function setDepthClamp(enabled:Bool):Void
```

### setDepthBias

```haxe
override function setDepthBias(depthBias:Float, slopeScaledBias:Float):Void
```

### setRenderZone

```haxe
override function setRenderZone(x:Int, y:Int, width:Int, height:Int):Void
```

### selectShader

```haxe
override function selectShader(shader:hxsl.RuntimeShader):Bool
```

### selectBuffer

```haxe
override function selectBuffer(buffer:h3d.Buffer):Void
```

### selectMultiBuffers

```haxe
override function selectMultiBuffers(formats:hxd.MultiFormat, buffers:Array<h3d.Buffer>):Void
```

### uploadShaderBuffers

```haxe
override function uploadShaderBuffers(buffers:h3d.shader.Buffers, which:h3d.shader.BufferKind):Void
```

### draw

```haxe
override function draw(ibuf:h3d.Buffer, startIndex:Int, ntriangles:Int):Void
```

### allocInstanceBuffer

```haxe
override function allocInstanceBuffer(b:InstanceBuffer, buf:Bytes):Void
```

### uploadInstanceBufferBytes

```haxe
override function uploadInstanceBufferBytes(b:InstanceBuffer, startVertex:Int, vertexCount:Int, buf:Bytes, bufPos:Int):Void
```

### disposeInstanceBuffer

```haxe
override function disposeInstanceBuffer(b:InstanceBuffer):Void
```

### drawInstanced

```haxe
override function drawInstanced(ibuf:h3d.Buffer, commands:InstanceBuffer):Void
```

## Inherited members

- from [`h3d.impl.Driver`](Driver.md): `upscaling`, `logEnable`, `hasFeature`, `setRenderFlag`, `isSupportedFormat`, `isDisposed`, `dispose`, `begin`, `log`, `generateMipMaps`, `getNativeShaderCode`, `warmupShader`, `clear`, `getMemoryUsage`, `captureRenderBuffer`, `capturePixels`, `getDriverName`, `init`, `resize`, `selectShader`, `selectMaterial`, `selectTextureHandles`, `selectBufferHandles`, `uploadShaderBuffers`, `flushShaderBuffers`, `selectBuffer`, `selectMultiBuffers`, `draw`, `drawInstanced`, `setRenderZone`, `setRenderTarget`, `setRenderTargets`, `setDepth`, `setDepthClamp`, `setDepthBias`, `allocDepthBuffer`, `disposeDepthBuffer`, `getDefaultDepthBuffer`, `present`, `end`, `setDebug`, `allocTexture`, `allocBuffer`, `allocInstanceBuffer`, `uploadInstanceBufferBytes`, `disposeTexture`, `disposeBuffer`, `disposeInstanceBuffer`, `uploadIndexData`, `uploadBufferData`, `uploadBufferBytes`, `uploadTextureBitmap`, `uploadTexturePixels`, `readBufferBytes`, `readBufferBytesAsync`, `copyTexture`, `setResidentMip`, `beginEvent`, `endEvent`, `allocQuery`, `deleteQuery`, `beginQuery`, `endQuery`, `queryResultAvailable`, `queryResult`, `computeDispatch`, `memoryBarrier`, `getTextureHandle`, `getBufferHandle`, `copyBackBuffer`
