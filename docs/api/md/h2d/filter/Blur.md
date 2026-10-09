# h2d.filter.Blur

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/Blur.hx`](../../../../../h2d/filter/Blur.hx)

Extends: [`h2d.filter.Filter`](Filter.md)

Subclasses: [`h2d.filter.Bloom`](Bloom.md), [`h2d.filter.Glow`](Glow.md), [`h2d.filter.InnerGlow`](InnerGlow.md)

Utilizes the `h3d.pass.Blur` render pass to perform a blurring operation on the filtered object.

## Constructor

### new

```haxe
function new(?radius:Float = 1., ?gain:Float = 1., ?quality:Float = 1., ?linear:Float = 0.):Void
```

Create a new Blur filter.
- **param** `radius` The blur distance in pixels.
- **param** `gain` The color gain when blurring.
- **param** `quality` The sample count on each pixel as a tradeoff of speed/quality.
- **param** `linear` Linear blur power. Set to 0 for gaussian blur.

## Variables

### radius

```haxe
var radius(get, set):Float
```

- **see** `h3d.pass.Blur.radius`

### linear

```haxe
var linear(get, set):Float
```

- **see** `h3d.pass.Blur.linear`

### gain

```haxe
var gain(get, set):Float
```

- **see** `h3d.pass.Blur.gain`

### quality

```haxe
var quality(get, set):Float
```

- **see** `h3d.pass.Blur.quality`

## Methods

### sync

```haxe
override function sync(ctx:h2d.RenderContext, s:h2d.Object):Void
```

### draw

```haxe
override function draw(ctx:h2d.RenderContext, t:h2d.Tile):h2d.Tile
```

## Inherited members

- from [`h2d.filter.Filter`](Filter.md): `autoBounds`, `boundsExtend`, `smooth`, `enable`, `resolutionScale`, `useScreenResolution`, `sync`, `bind`, `unbind`, `getBounds`, `draw`
