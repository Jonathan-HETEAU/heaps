# h2d.filter.AbstractMask

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/AbstractMask.hx`](../../../../../h2d/filter/AbstractMask.hx)

Extends: [`h2d.filter.Filter`](Filter.md)

Subclasses: [`h2d.filter.Ambient`](Ambient.md), [`h2d.filter.Mask`](Mask.md)

A base class for filters that utilize separate Objects as a masking object.

Not intended to be used directly.

Masking objects have a number of restrictions on them, see `AbstractMask.mask` for details.

## Variables

### mask

```haxe
var mask(default, set):h2d.Object
```

The Object contents of which serve as a mask to the filtered Object.

Masking Objects have following limitations:
* It cannot be a parent of the filtered Object.
* It should not contain any filters.
* It should be present in the object tree and precede the Object it masks in the rendering order (rendered before it).
* Same masking Object cannot be used by multiple mask filters.

### maskVisible

```haxe
var maskVisible(default, set):Bool
```

When enabled, masking Object will be visible to the user. Hidden otherwise. ( default : false )

## Methods

### bind

```haxe
override function bind(s:h2d.Object):Void
```

### unbind

```haxe
override function unbind(s:h2d.Object):Void
```

### sync

```haxe
override function sync(ctx:h2d.RenderContext, obj:h2d.Object):Void
```

## Inherited members

- from [`h2d.filter.Filter`](Filter.md): `autoBounds`, `boundsExtend`, `smooth`, `enable`, `resolutionScale`, `useScreenResolution`, `sync`, `bind`, `unbind`, `getBounds`, `draw`
