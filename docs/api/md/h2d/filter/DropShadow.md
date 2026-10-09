# h2d.filter.DropShadow

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/DropShadow.hx`](../../../../../h2d/filter/DropShadow.hx)

Extends: [`h2d.filter.Glow`](Glow.md) → [`h2d.filter.Blur`](Blur.md) → [`h2d.filter.Filter`](Filter.md)

Adds a soft shadow to the filtered Object.

## Constructor

### new

```haxe
function new(?distance:Float = 4., ?angle:Float = 0.785, ?color:Int = 0, ?alpha:Float = 1., ?radius:Float = 1., ?gain:Float = 1, ?quality:Float = 1., ?smoothColor:Bool = false):Void
```

Create a new Shadow filter.
- **param** `distance` The offset of the shadow in the `angle` direction.
- **param** `angle` Shadow offset direction angle.
- **param** `color` The color of the shadow.
- **param** `alpha` Transparency value of the shadow.
- **param** `radius` The shadow glow distance in pixels.
- **param** `gain` The shadow color intensity.
- **param** `quality` The sample count on each pixel as a tradeoff of speed/quality.
- **param** `smoothColor` Produce gradient shadow when enabled, otherwise creates hard shadow without smoothing.

## Variables

### distance

```haxe
var distance:Float
```

The offset distance of the shadow in the direction of `DropShadow.angle`.

### angle

```haxe
var angle:Float
```

The shadow offset direction angle.

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

- from [`h2d.filter.Glow`](Glow.md): `color`, `alpha`, `knockout`, `smoothColor`, `draw`
- from [`h2d.filter.Blur`](Blur.md): `radius`, `linear`, `gain`, `quality`, `sync`, `draw`
- from [`h2d.filter.Filter`](Filter.md): `autoBounds`, `boundsExtend`, `smooth`, `enable`, `resolutionScale`, `useScreenResolution`, `sync`, `bind`, `unbind`, `getBounds`, `draw`
