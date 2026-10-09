# h2d.filter.Outline

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/Outline.hx`](../../../../../h2d/filter/Outline.hx)

Extends: [`h2d.filter.Filter`](Filter.md)

Provides a solid color outline to the filtered object by utilizing `h3d.pass.Outline` render pass.

## Constructor

### new

```haxe
function new(?size:Float = 4.0, ?color:Int = 0x000000, ?quality:Float = 0.3, ?multiplyAlpha:Bool = true):Void
```

Create a new Outline filter.
- **param** `size` Width of the outline.
- **param** `color` The color of the outline.
- **param** `quality` The sample count with quality/speed tradeoff.
- **param** `multiplyAlpha` Enable alpha premultiplying of the resulting color.

## Variables

### size

```haxe
var size(get, set):Float
```

The width of the outline.
- **see** `h3d.pass.Outline.size`

### color

```haxe
var color(get, set):Int
```

The color of the outline.
- **see** `h3d.pass.Outline.color`

### quality

```haxe
var quality(get, set):Float
```

Represents sample count with quality/speed tradeoff.
Larger value leads to more samples and more accurate outline in exchange to calculation speed.
- **see** `h3d.pass.Outline.quality`

### multiplyAlpha

```haxe
var multiplyAlpha(get, set):Bool
```

Premultiplies the resulting color with its alpha when enabled.
- **see** `h2d.pass.Outline.multiplyAlpha`

### alpha

```haxe
var alpha(get, set):Float
```

The transparency of the outline.

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
