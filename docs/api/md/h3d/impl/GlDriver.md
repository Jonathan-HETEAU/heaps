# h3d.impl.GlDriver

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/GlDriver.hx`](../../../../../h3d/impl/GlDriver.hx) · available on js, hl/sdl

Extends: [`h3d.impl.Driver`](Driver.md)

The OpenGL driver: WebGL (1 or 2) on JS, OpenGL with SDL on HashLink.

## Constructor

### new

```haxe
function new(?antiAlias:Int = 0):Void
```

Creates the driver. On JS, `antiAlias` enables the antialiasing of the canvas.

## Static variables

### ALLOW_WEBGL2 _(js only)_

```haxe
static var ALLOW_WEBGL2:Bool
```

If set, WebGL 2 is used when the browser supports it. Must be set before the engine is created.

### hasMultiIndirectCount

```haxe
static var hasMultiIndirectCount:Bool
```

Tells if the `GL_ARB_indirect_parameters` extension is available, to read the number of instanced draw commands from a buffer.

### outOfMemoryCheck

```haxe
static var outOfMemoryCheck:Bool
```

Perform OUT_OF_MEMORY checks when allocating textures/buffers.
Default true, except in WebGL (false)

## Variables

### gl _(js only)_

```haxe
var gl:h3d.impl._GlDriver.GL
```

The WebGL context.

## Methods

### setRenderFlag

```haxe
override function setRenderFlag(r:RenderFlag, value:Int):Void
```

### setDebug

```haxe
override function setDebug(d:Bool):Void
```

### begin

```haxe
override function begin(frame:Int):Void
```

### getNativeShaderCode

```haxe
override function getNativeShaderCode(shader:hxsl.RuntimeShader):String
```

### getDriverName

```haxe
override function getDriverName(details:Bool):String
```

### selectShader

```haxe
override function selectShader(shader:hxsl.RuntimeShader):Bool
```

### uploadShaderBuffers

```haxe
override function uploadShaderBuffers(buf:h3d.shader.Buffers, which:h3d.shader.BufferKind):Void
```

### selectMaterial

```haxe
override function selectMaterial(pass:h3d.mat.Pass):Void
```

### clear

```haxe
override function clear(?color:h3d.Vector4, ?depth:Float, ?stencil:Int):Void
```

### resize

```haxe
override function resize(width:Int, height:Int):Void
```

### isSupportedFormat

```haxe
override function isSupportedFormat(fmt:h3d.mat.TextureFormat):Bool
```

### allocTexture

```haxe
override function allocTexture(t:h3d.mat.Texture):Texture
```

### allocDepthBuffer

```haxe
override function allocDepthBuffer(t:h3d.mat.Texture):Texture
```

### disposeDepthBuffer

```haxe
override function disposeDepthBuffer(b:h3d.mat.Texture):Void
```

### getDefaultDepthBuffer

```haxe
override function getDefaultDepthBuffer():h3d.mat.Texture
```

### allocBuffer

```haxe
override function allocBuffer(b:h3d.Buffer):GPUBuffer
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
override function generateMipMaps(t:h3d.mat.Texture):Void
```

### uploadTextureBitmap

```haxe
override function uploadTextureBitmap(t:h3d.mat.Texture, bmp:hxd.BitmapData, mipLevel:Int, side:Int):Void
```

### uploadTexturePixels

```haxe
override function uploadTexturePixels(t:h3d.mat.Texture, pixels:hxd.Pixels, mipLevel:Int, side:Int):Void
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

### readBufferBytesAsync

```haxe
override function readBufferBytesAsync(b:h3d.Buffer, startVertex:Int, vertexCount:Int, buf:Bytes, bufPos:Int, callback:() -> Void):Void
```

### uploadIndexData

```haxe
override function uploadIndexData(i:h3d.Buffer, startIndice:Int, indiceCount:Int, buf:hxd.IndexBuffer, bufPos:Int):Void
```

### selectBuffer

```haxe
override function selectBuffer(b:h3d.Buffer):Void
```

### selectMultiBuffers

```haxe
override function selectMultiBuffers(format:hxd.MultiFormat, buffers:Array<h3d.Buffer>):Void
```

### draw

```haxe
override function draw(ibuf:h3d.Buffer, startIndex:Int, ntriangles:Int):Void
```

### allocInstanceBuffer

```haxe
override function allocInstanceBuffer(b:InstanceBuffer, bytes:Bytes):Void
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

### end

```haxe
override function end():Void
```

### present

```haxe
override function present():Void
```

### isDisposed

```haxe
override function isDisposed():Bool
```

### setRenderZone

```haxe
override function setRenderZone(x:Int, y:Int, width:Int, height:Int):Void
```

### capturePixels

```haxe
override function capturePixels(tex:h3d.mat.Texture, layer:Int, mipLevel:Int, ?region:h2d.col.IBounds):hxd.Pixels
```

### setRenderTarget

```haxe
override function setRenderTarget(tex:h3d.mat.Texture, ?layer:Int = 0, ?mipLevel:Int = 0, ?depthBinding:h3d.DepthBinding = ReadWrite):Void
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

### init

```haxe
override function init(onCreate:() -> Void, ?forceSoftware:Bool = false):Void
```

### hasFeature

```haxe
override function hasFeature(f:Feature):Bool
```

### captureRenderBuffer

```haxe
override function captureRenderBuffer(pixels:hxd.Pixels):Void
```

### setResidentMip _(hl/sdl only)_

```haxe
override function setResidentMip(t:h3d.mat.Texture, mip:Int):Bool
```

### computeDispatch _(hl/sdl only)_

```haxe
override function computeDispatch(?x:Int = 1, ?y:Int = 1, ?z:Int = 1, ?barrier:Bool = true):Void
```

### memoryBarrier _(hl/sdl only)_

```haxe
override function memoryBarrier():Void
```

### allocQuery _(hl/sdl only)_

```haxe
override function allocQuery(kind:QueryKind):{ q:sdl.Query, kind:QueryKind }
```

### deleteQuery _(hl/sdl only)_

```haxe
override function deleteQuery(q:h3d.impl._GlDriver.Query):Void
```

### beginQuery _(hl/sdl only)_

```haxe
override function beginQuery(q:h3d.impl._GlDriver.Query):Void
```

### endQuery _(hl/sdl only)_

```haxe
override function endQuery(q:h3d.impl._GlDriver.Query):Void
```

### queryResultAvailable _(hl/sdl only)_

```haxe
override function queryResultAvailable(q:h3d.impl._GlDriver.Query):Bool
```

### queryResult _(hl/sdl only)_

```haxe
override function queryResult(q:h3d.impl._GlDriver.Query):Float
```

## Inherited members

- from [`h3d.impl.Driver`](Driver.md): `upscaling`, `logEnable`, `hasFeature`, `setRenderFlag`, `isSupportedFormat`, `isDisposed`, `dispose`, `begin`, `log`, `generateMipMaps`, `getNativeShaderCode`, `warmupShader`, `clear`, `getMemoryUsage`, `captureRenderBuffer`, `capturePixels`, `getDriverName`, `init`, `resize`, `selectShader`, `selectMaterial`, `selectTextureHandles`, `selectBufferHandles`, `uploadShaderBuffers`, `flushShaderBuffers`, `selectBuffer`, `selectMultiBuffers`, `draw`, `drawInstanced`, `setRenderZone`, `setRenderTarget`, `setRenderTargets`, `setDepth`, `setDepthClamp`, `setDepthBias`, `allocDepthBuffer`, `disposeDepthBuffer`, `getDefaultDepthBuffer`, `present`, `end`, `setDebug`, `allocTexture`, `allocBuffer`, `allocInstanceBuffer`, `uploadInstanceBufferBytes`, `disposeTexture`, `disposeBuffer`, `disposeInstanceBuffer`, `uploadIndexData`, `uploadBufferData`, `uploadBufferBytes`, `uploadTextureBitmap`, `uploadTexturePixels`, `readBufferBytes`, `readBufferBytesAsync`, `copyTexture`, `setResidentMip`, `beginEvent`, `endEvent`, `allocQuery`, `deleteQuery`, `beginQuery`, `endQuery`, `queryResultAvailable`, `queryResult`, `computeDispatch`, `memoryBarrier`, `getTextureHandle`, `getBufferHandle`, `copyBackBuffer`
