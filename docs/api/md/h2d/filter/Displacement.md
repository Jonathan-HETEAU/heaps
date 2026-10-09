# h2d.filter.Displacement

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/Displacement.hx`](../../../../../h2d/filter/Displacement.hx)

Extends: [`h2d.filter.Filter`](Filter.md)

Applies a normal map to the filtered Object in order to displace pixels.

Uses red and green channels to displaces horizontal and vertical axes accordingly.

## Constructor

### new

```haxe
function new(normalMap:h2d.Tile, ?dispX:Float = 5., ?dispY:Float = 5., ?wrap:Bool = true):Void
```

Create a new displacement filter.
- **param** `normalMap` The normal map used for displacement lookup.
- **param** `dispX` Horizontal displacement distance in pixels.
- **param** `dispY` Vertical displacement distance in pixels.
- **param** `wrap` Wrap normal map around when lookup UV goes out of bounds.

## Variables

### normalMap

```haxe
var normalMap:h2d.Tile
```

The normal map used for displacement lookup.

### dispX

```haxe
var dispX:Float
```

Horizontal displacement distance in pixels.

### dispY

```haxe
var dispY:Float
```

Vertical displacement distance in pixels.

### wrap

```haxe
var wrap(default, set):Bool
```

When enabled, the displacement map will wrap around when lookup reaches its edges.
Otherwise out-of-bounds values are clamped to the border.

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
