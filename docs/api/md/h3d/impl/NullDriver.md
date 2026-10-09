# h3d.impl.NullDriver

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/NullDriver.hx`](../../../../../h3d/impl/NullDriver.hx)

Extends: [`h3d.impl.Driver`](Driver.md)

## Constructor

### new

```haxe
function new():Void
```

## Methods

### hasFeature

```haxe
override function hasFeature(f:Feature):Bool
```

### isSupportedFormat

```haxe
override function isSupportedFormat(fmt:h3d.mat.TextureFormat):Bool
```

### isDisposed

```haxe
override function isDisposed():Bool
```

### getDriverName

```haxe
override function getDriverName(details:Bool):String
```

### init

```haxe
override function init(onCreate:() -> Void, ?forceSoftware:Bool = false):Void
```

### selectShader

```haxe
override function selectShader(shader:hxsl.RuntimeShader):Bool
```

### allocTexture

```haxe
override function allocTexture(t:h3d.mat.Texture):Texture
```

### allocBuffer

```haxe
override function allocBuffer(b:h3d.Buffer):GPUBuffer
```

## Inherited members

- from [`h3d.impl.Driver`](Driver.md): `upscaling`, `logEnable`, `hasFeature`, `setRenderFlag`, `isSupportedFormat`, `isDisposed`, `dispose`, `begin`, `log`, `generateMipMaps`, `getNativeShaderCode`, `warmupShader`, `clear`, `getMemoryUsage`, `captureRenderBuffer`, `capturePixels`, `getDriverName`, `init`, `resize`, `selectShader`, `selectMaterial`, `selectTextureHandles`, `selectBufferHandles`, `uploadShaderBuffers`, `flushShaderBuffers`, `selectBuffer`, `selectMultiBuffers`, `draw`, `drawInstanced`, `setRenderZone`, `setRenderTarget`, `setRenderTargets`, `setDepth`, `setDepthClamp`, `setDepthBias`, `allocDepthBuffer`, `disposeDepthBuffer`, `getDefaultDepthBuffer`, `present`, `end`, `setDebug`, `allocTexture`, `allocBuffer`, `allocInstanceBuffer`, `uploadInstanceBufferBytes`, `disposeTexture`, `disposeBuffer`, `disposeInstanceBuffer`, `uploadIndexData`, `uploadBufferData`, `uploadBufferBytes`, `uploadTextureBitmap`, `uploadTexturePixels`, `readBufferBytes`, `readBufferBytesAsync`, `copyTexture`, `setResidentMip`, `beginEvent`, `endEvent`, `allocQuery`, `deleteQuery`, `beginQuery`, `endQuery`, `queryResultAvailable`, `queryResult`, `computeDispatch`, `memoryBarrier`, `getTextureHandle`, `getBufferHandle`, `copyBackBuffer`
