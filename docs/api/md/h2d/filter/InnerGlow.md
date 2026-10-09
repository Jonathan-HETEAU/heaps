# h2d.filter.InnerGlow

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/InnerGlow.hx`](../../../../../h2d/filter/InnerGlow.hx)

Extends: [`h2d.filter.Blur`](Blur.md) → [`h2d.filter.Filter`](Filter.md)

Adds a glow backdrop to the filtered Object.

## Constructor

### new

```haxe
function new(?color:Int = 0xFFFFFF, ?alpha:Float = 1., ?radius:Float = 1., ?gain:Float = 1., ?quality:Float = 1.):Void
```

## Variables

### color

```haxe
var color:Int
```

### alpha

```haxe
var alpha:Float
```

### blendMode

```haxe
var blendMode:h2d.BlendMode
```

## Methods

### draw

```haxe
override function draw(ctx:h2d.RenderContext, t:h2d.Tile):h2d.Tile
```

## Inherited members

- from [`h2d.filter.Blur`](Blur.md): `radius`, `linear`, `gain`, `quality`, `sync`, `draw`
- from [`h2d.filter.Filter`](Filter.md): `autoBounds`, `boundsExtend`, `smooth`, `enable`, `resolutionScale`, `useScreenResolution`, `sync`, `bind`, `unbind`, `getBounds`, `draw`
