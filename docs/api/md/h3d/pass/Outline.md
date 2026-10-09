# h3d.pass.Outline

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/Outline.hx`](../../../../../h3d/pass/Outline.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

## Constructor

### new

```haxe
function new(?size:Float = 4.0, ?color:Int = 0x000000, ?quality:Float = 0.3, ?multiplyAlpha:Bool = true):Void
```

Creates the pass.

## Variables

### size

```haxe
var size:Float
```

The outline width, in pixels.

### color

```haxe
var color:Int
```

The outline color, in `0xRRGGBB` format.

### alpha

```haxe
var alpha:Float
```

The outline opacity.

### quality

```haxe
var quality:Float
```

The sampling quality, from `0` to `1`.

### multiplyAlpha

```haxe
var multiplyAlpha:Bool
```

Multiplies the outline color by the alpha of the source.

## Methods

### apply

```haxe
function apply(ctx:h3d.impl.RenderContext, src:h3d.mat.Texture, ?output:h3d.mat.Texture):Void
```

Renders the outline of `src` into `output` (or into `src` if `null`).

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
