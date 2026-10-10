# h3d.impl.UpscalingInputs

**class** · package [`h3d.impl`](README.md) · module `h3d.impl.Upscaling` · source [`h3d/impl/Upscaling.hx`](../../../../../h3d/impl/Upscaling.hx)

The textures used by the upscaler.

## Constructor

### new

```haxe
function new():Void
```

Creates empty inputs.

## Variables

### color

```haxe
var color:h3d.mat.Texture
```

The rendered image, at the render resolution.

### depth

```haxe
var depth:h3d.mat.Texture
```

The depth buffer, at the render resolution.

### motionVectors

```haxe
var motionVectors:h3d.mat.Texture
```

The motion vectors, at the render resolution.

### output

```haxe
var output:h3d.mat.Texture
```

The texture receiving the upscaled image.
