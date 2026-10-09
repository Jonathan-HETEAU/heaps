# h3d.scene.pbr.RenderProps

**typedef** · package [`h3d.scene.pbr`](README.md) · module `h3d.scene.pbr.Renderer` · source [`h3d/scene/pbr/Renderer.hx`](../../../../../../h3d/scene/pbr/Renderer.hx)

The properties of the PBR renderer (see `hxd.impl.AnyProps.props`), usually edited in Hide.
Call `refreshProps()` after modifying them.

## Fields

### tone

```haxe
var tone:TonemapMap
```

The tone mapping operator.

### skyColor

```haxe
var ?skyColor:Null<Int>
```

### sky

```haxe
var sky:SkyMode
```

The sky mode.

### occlusion

```haxe
var occlusion:Float
```

The ambient occlusion strength is `occlusion * occlusion`.

### mode

```haxe
var mode:DisplayMode
```

The display mode.

### forceDirectDiscard

```haxe
var ?forceDirectDiscard:Null<Bool>
```

### exposure

```haxe
var exposure:Float
```

The exposure: colors are multiplied by `exp(exposure)` before tone mapping.

### emissive

```haxe
var emissive:Float
```

The emissive intensity multiplier is `emissive * emissive`.

### e

```haxe
var ?e:Null<Float>
```

### d

```haxe
var ?d:Null<Float>
```

### c

```haxe
var ?c:Null<Float>
```

### b

```haxe
var ?b:Null<Float>
```

### a

```haxe
var ?a:Null<Float>
```
