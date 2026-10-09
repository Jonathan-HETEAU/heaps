# h2d.filter.ToneMapping

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/ToneMapping.hx`](../../../../../h2d/filter/ToneMapping.hx)

Extends: [`h2d.filter.Filter`](Filter.md)

Applies a color correction that emulates tonemapping.

## Constructor

### new

```haxe
function new(?g:Float):Void
```

Create a new ColorMatrix filter.

- **param** `gamma` The value used to modify the resulting colors.

## Variables

### gamma

```haxe
var gamma(get, set):Float
```

The value used to apply gamma correction.

## Methods

### draw

```haxe
override function draw(ctx:h2d.RenderContext, t:h2d.Tile):h2d.Tile
```

## Inherited members

- from [`h2d.filter.Filter`](Filter.md): `autoBounds`, `boundsExtend`, `smooth`, `enable`, `resolutionScale`, `useScreenResolution`, `sync`, `bind`, `unbind`, `getBounds`, `draw`
