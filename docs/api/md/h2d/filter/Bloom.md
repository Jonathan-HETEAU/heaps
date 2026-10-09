# h2d.filter.Bloom

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/Bloom.hx`](../../../../../h2d/filter/Bloom.hx)

Extends: [`h2d.filter.Blur`](Blur.md) → [`h2d.filter.Filter`](Filter.md)

Applies a bloom effect to the filtered Object.
Produces feathers to light areas in the objects.

## Constructor

### new

```haxe
function new(?power:Float = 2., ?amount:Float = 1., ?radius:Float = 1., ?gain:Float = 1., ?quality:Float = 1.):Void
```

- **param** `power` The bloom luminosity exponent.
- **param** `amount` The bloom luminosity multiplier.
- **param** `radius` The bloom glow distance in pixels.
- **param** `gain` The bloom color intensity.
- **param** `quality` The sample count on each pixel as a tradeoff of speed/quality.

## Variables

### amount

```haxe
var amount(get, set):Float
```

The bloom luminosity multiplier.

### power

```haxe
var power(get, set):Float
```

The bloom luminosity exponent.

## Methods

### draw

```haxe
override function draw(ctx:h2d.RenderContext, t:h2d.Tile):h2d.Tile
```

## Inherited members

- from [`h2d.filter.Blur`](Blur.md): `radius`, `linear`, `gain`, `quality`, `sync`, `draw`
- from [`h2d.filter.Filter`](Filter.md): `autoBounds`, `boundsExtend`, `smooth`, `enable`, `resolutionScale`, `useScreenResolution`, `sync`, `bind`, `unbind`, `getBounds`, `draw`
