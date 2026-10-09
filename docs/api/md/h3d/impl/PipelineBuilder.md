# h3d.impl.PipelineBuilder

**class** · package [`h3d.impl`](README.md) · module `h3d.impl.PipelineCache` · source [`h3d/impl/PipelineCache.hx`](../../../../../h3d/impl/PipelineCache.hx) · available on hl/sdl, hl/directx

## Constructor

### new

```haxe
function new():Void
```

## Variables

### needFlush

```haxe
var needFlush:Bool
```

## Methods

### setShader

```haxe
inline function setShader(sh:hxsl.RuntimeShader):Void
```

### setDepthBias

```haxe
function setDepthBias(depthBias:Float, slopeScaledBias:Float):Void
```

### getDepthProps

```haxe
function getDepthProps():DepthProps
```

### setRenderTarget

```haxe
function setRenderTarget(tex:h3d.mat.Texture, depth:h3d.mat.Texture):Void
```

### getDepthEnabled

```haxe
function getDepthEnabled():Bool
```

### setDepth

```haxe
function setDepth(depth:h3d.mat.Texture):Void
```

### setRenderTargets

```haxe
function setRenderTargets(textures:Array<h3d.mat.Texture>, depth:h3d.mat.Texture):Void
```

### getRenderTargetsCount

```haxe
function getRenderTargetsCount():Int
```

### getRenderTargetFormat

```haxe
function getRenderTargetFormat(i:Int):Null<Null<hxd.PixelFormat>>
```

### selectMaterial

```haxe
function selectMaterial(pass:h3d.mat.Pass):Void
```

### setBuffer

```haxe
inline function setBuffer(i:Int, inf:hxd.BufferMapping, stride:Int):Void
```

### getCurrentPass

```haxe
function getCurrentPass():h3d.mat.Pass
```

### getBufferInput

```haxe
function getBufferInput(i:Int):hxd.BufferMapping
```

### lookup

```haxe
function lookup(cache:PipelineCache<lookup.T>, inputs:Int):CachedPipeline<lookup.T>
```
