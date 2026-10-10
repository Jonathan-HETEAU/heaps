# h3d.ColorAdjust

**typedef** · package [`h3d`](README.md) · module `h3d.Matrix` · source [`h3d/Matrix.hx`](../../../../h3d/Matrix.hx)

Color adjustments applied by `Matrix.adjustColor` (and `h2d.Drawable.adjustColor`). All fields are optional.

## Fields

### saturation

```haxe
var ?saturation:Null<Float>
```

Changes the saturation (`0` keeps it, `-1` makes it grey), see `colorSaturate`.

### lightness

```haxe
var ?lightness:Null<Float>
```

Adds to the color components, see `colorLightness`.

### hue

```haxe
var ?hue:Null<Float>
```

Rotates the hue, in radians, see `colorHue`.

### gain

```haxe
var ?gain:Null<{ color:Int, alpha:Float }>
```

Blends the color towards `color` (`0xRRGGBB`) by `alpha`, see `colorGain`.

### contrast

```haxe
var ?contrast:Null<Float>
```

Changes the contrast (`0` keeps it), see `colorContrast`.
