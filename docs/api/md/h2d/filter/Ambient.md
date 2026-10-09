# h2d.filter.Ambient

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/Ambient.hx`](../../../../../h2d/filter/Ambient.hx)

Extends: [`h2d.filter.AbstractMask`](AbstractMask.md) → [`h2d.filter.Filter`](Filter.md)

A ColorMatrix filer that applies color correction depending on the masked area.

Uses masked objects `red*alpha` channels to determine the transition from original color and transformed color.

_Hacking_: Through accessing color matrix shader directly via `@:privateAccess ambient.pass.shader.maskChannel`
it's possible to modify which channels affect the resulting transition value.

- **see** `ColorMatrix`

## Constructor

### new

```haxe
function new(mask:h2d.Object, ?m:h3d.Matrix):Void
```

Create new Ambient filter.
- **param** `mask` An `Object` that will be used for masking. See `AbstractMask.mask` for limitations.
- **param** `m` The color matrix that is applied to the area dictated by `Ambient.invert`.

## Variables

### power

```haxe
var power(get, set):Float
```

The exponent of the mask color values that affects transition speed.

### invert

```haxe
var invert(get, set):Bool
```

Whether to apply ambient color correction inside masked (when enabled) area or outside of it (when disabled).

## Methods

### draw

```haxe
override function draw(ctx:h2d.RenderContext, t:h2d.Tile):h2d.Tile
```

## Inherited members

- from [`h2d.filter.AbstractMask`](AbstractMask.md): `mask`, `maskVisible`, `bind`, `unbind`, `sync`
- from [`h2d.filter.Filter`](Filter.md): `autoBounds`, `boundsExtend`, `smooth`, `enable`, `resolutionScale`, `useScreenResolution`, `sync`, `bind`, `unbind`, `getBounds`, `draw`
