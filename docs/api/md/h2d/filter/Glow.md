# h2d.filter.Glow

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/Glow.hx`](../../../../../h2d/filter/Glow.hx)

Extends: [`h2d.filter.Blur`](Blur.md) → [`h2d.filter.Filter`](Filter.md)

Subclasses: [`h2d.filter.DropShadow`](DropShadow.md)

Adds a glow backdrop to the filtered Object.

## Constructor

### new

```haxe
function new(?color:Int = 0xFFFFFF, ?alpha:Float = 1., ?radius:Float = 1., ?gain:Float = 1., ?quality:Float = 1., ?smoothColor:Bool = false):Void
```

Create new Glow filter.
- **param** `color` The color of the glow.
- **param** `alpha` Transparency value of the glow.
- **param** `radius` The glow distance in pixels.
- **param** `gain` The glow color intensity.
- **param** `quality` The sample count on each pixel as a tradeoff of speed/quality.
- **param** `smoothColor` Produce gradient glow when enabled, otherwise creates hard glow without smoothing.

## Variables

### color

```haxe
var color:Int
```

The color of the glow.

### alpha

```haxe
var alpha:Float
```

Transparency value of the glow.

### knockout

```haxe
var knockout:Bool
```

Subtracts the original image from the glow output when enabled.

### smoothColor

```haxe
var smoothColor:Bool
```

Produce gradient glow when enabled, otherwise creates hard glow without smoothing.

## Methods

### draw

```haxe
override function draw(ctx:h2d.RenderContext, t:h2d.Tile):h2d.Tile
```

## Inherited members

- from [`h2d.filter.Blur`](Blur.md): `radius`, `linear`, `gain`, `quality`, `sync`, `draw`
- from [`h2d.filter.Filter`](Filter.md): `autoBounds`, `boundsExtend`, `smooth`, `enable`, `resolutionScale`, `useScreenResolution`, `sync`, `bind`, `unbind`, `getBounds`, `draw`
