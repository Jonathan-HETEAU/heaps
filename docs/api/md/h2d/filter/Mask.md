# h2d.filter.Mask

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/Mask.hx`](../../../../../h2d/filter/Mask.hx)

Extends: [`h2d.filter.AbstractMask`](AbstractMask.md) → [`h2d.filter.Filter`](Filter.md)

Performs an arbitrary shape masking of the filtered Object.

- **see** `AbstractMask`

## Constructor

### new

```haxe
function new(mask:h2d.Object, ?maskVisible:Bool = false, ?smoothAlpha:Bool = false):Void
```

Create new Mask filter.
- **param** `mask` An `Object` that will be used for masking. See `AbstractMask.mask` for limitations.
- **param** `maskVisible` When enabled, masking `Object` will be visible. Hidden otherwise.
- **param** `smoothAlpha` Enables masking Object alpha merging. Otherwise causes unsmoothed masking of non-zero alpha areas.

## Variables

### smoothAlpha

```haxe
var smoothAlpha(get, set):Bool
```

Enables masking Object alpha merging. Otherwise causes unsmoothed masking of non-zero alpha areas.

## Methods

### draw

```haxe
override function draw(ctx:h2d.RenderContext, t:h2d.Tile):Null<h2d.Tile>
```

## Inherited members

- from [`h2d.filter.AbstractMask`](AbstractMask.md): `mask`, `maskVisible`, `bind`, `unbind`, `sync`
- from [`h2d.filter.Filter`](Filter.md): `autoBounds`, `boundsExtend`, `smooth`, `enable`, `resolutionScale`, `useScreenResolution`, `sync`, `bind`, `unbind`, `getBounds`, `draw`
