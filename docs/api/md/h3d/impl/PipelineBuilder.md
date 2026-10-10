# h3d.impl.PipelineBuilder

**class** · package [`h3d.impl`](README.md) · module `h3d.impl.PipelineCache` · source [`h3d/impl/PipelineCache.hx`](../../../../../h3d/impl/PipelineCache.hx) · available on hl/sdl, hl/directx

Builds the signature of the current pipeline state (render states, render targets, vertex layout) as the driver state changes, to look up the cached pipelines.

## Constructor

### new

```haxe
function new():Void
```

Creates a builder.

## Variables

### needFlush

```haxe
var needFlush:Bool
```

Tells if the state changed since the last `lookup`.

## Methods

### setShader

```haxe
inline function setShader(sh:hxsl.RuntimeShader):Void
```

Sets the shader.

### setDepthBias

```haxe
function setDepthBias(depthBias:Float, slopeScaledBias:Float):Void
```

Sets the depth bias.

### getDepthProps

```haxe
function getDepthProps():DepthProps
```

Returns the current depth settings.

### setRenderTarget

```haxe
function setRenderTarget(tex:h3d.mat.Texture, depth:h3d.mat.Texture):Void
```

Sets a single render target and the depth buffer (`null` for none).

### getDepthEnabled

```haxe
function getDepthEnabled():Bool
```

Tells if a depth buffer is bound.

### setDepth

```haxe
function setDepth(depth:h3d.mat.Texture):Void
```

Sets only a depth buffer, without color target.

### setRenderTargets

```haxe
function setRenderTargets(textures:Array<h3d.mat.Texture>, depth:h3d.mat.Texture):Void
```

Sets several render targets and the depth buffer.

### getRenderTargetsCount

```haxe
function getRenderTargetsCount():Int
```

Returns the number of color render targets.

### getRenderTargetFormat

```haxe
function getRenderTargetFormat(i:Int):Null<Null<hxd.PixelFormat>>
```

Returns the format of the render target of the index.

### selectMaterial

```haxe
function selectMaterial(pass:h3d.mat.Pass):Void
```

Sets the render states of the pass.

### setBuffer

```haxe
inline function setBuffer(i:Int, inf:hxd.BufferMapping, stride:Int):Void
```

Sets the mapping of the vertex input of the index.

### getCurrentPass

```haxe
function getCurrentPass():h3d.mat.Pass
```

Returns a pass with the current render states.

### getBufferInput

```haxe
function getBufferInput(i:Int):hxd.BufferMapping
```

Returns the mapping of the vertex input of the index.

### lookup

```haxe
function lookup(cache:PipelineCache<lookup.T>, inputs:Int):CachedPipeline<lookup.T>
```

Returns the cached pipeline for the current signature (with `inputs` vertex inputs), adding an empty entry if it is not found: the driver then creates its pipeline.
