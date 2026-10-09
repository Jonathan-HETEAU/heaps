# h2d.filter.ColorMatrix

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/ColorMatrix.hx`](../../../../../h2d/filter/ColorMatrix.hx)

Extends: [`h2d.filter.Filter`](Filter.md)

Applies a color correction filter based on the provided matrix.

Matrix values are as following:
```
     red        green      blue       alpha
[   redMult,   redMult,   redMult,   redMult ]
[ greenMult, greenMult, greenMult, greenMult ]
[  blueMult,  blueMult,  blueMult,  blueMult ]
[ alphaMult, alphaMult, alphaMult, alphaMult ]
```
An identity matrix will result in an unmodified colors:
```
[1, 0, 0, 0]
[0, 1, 0, 0]
[0, 0, 1, 0]
[0, 0, 0, 1]
```

- **see** `Ambient`

## Constructor

### new

```haxe
function new(?m:h3d.Matrix):Void
```

Create a new ColorMatrix filter.

- **param** `m` The matrix used to modify the resulting colors.

## Static methods

### grayed

```haxe
static function grayed():ColorMatrix
```

Returns a ColorMatrix filter which results in a grayscale image (0 saturation).

## Variables

### matrix

```haxe
var matrix(get, set):h3d.Matrix
```

The matrix used to apply color correction.

## Methods

### draw

```haxe
override function draw(ctx:h2d.RenderContext, t:h2d.Tile):h2d.Tile
```

## Inherited members

- from [`h2d.filter.Filter`](Filter.md): `autoBounds`, `boundsExtend`, `smooth`, `enable`, `resolutionScale`, `useScreenResolution`, `sync`, `bind`, `unbind`, `getBounds`, `draw`
