# h2d.filter.InnerGlow

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/InnerGlow.hx`](../../../../../h2d/filter/InnerGlow.hx)

Extends: [`h2d.filter.Blur`](Blur.md) → [`h2d.filter.Filter`](Filter.md)

Adds a glow backdrop to the filtered Object.

## Constructor

### new

```haxe
function new(?color:Int = 0xFFFFFF, ?alpha:Float = 1., ?radius:Float = 1., ?gain:Float = 1., ?quality:Float = 1.):Void
```

Create new inner glow filter.
- **param** `color` The color of the glow.
- **param** `alpha` Transparency value of the glow.
- **param** `radius` The glow distance in pixels.
- **param** `gain` The glow color intensity.
- **param** `quality` The sample count on each pixel as a tradeoff of speed/quality.

## Variables

### color

```haxe
var color:Int
```

The color of the glow, in `0xRRGGBB` format.

### alpha

```haxe
var alpha:Float
```

The opacity of the glow.

### blendMode

```haxe
var blendMode:h2d.BlendMode
```

The blend mode used to combine the glow with the object.

## Methods

### draw

```haxe
override function draw(ctx:h2d.RenderContext, t:h2d.Tile):h2d.Tile
```

## Inherited members

- from [`h2d.filter.Blur`](Blur.md): `radius`, `linear`, `gain`, `quality`, `sync`, `draw`
- from [`h2d.filter.Filter`](Filter.md): `autoBounds`, `boundsExtend`, `smooth`, `enable`, `resolutionScale`, `useScreenResolution`, `sync`, `bind`, `unbind`, `getBounds`, `draw`
