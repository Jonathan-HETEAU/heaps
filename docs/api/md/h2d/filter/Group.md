# h2d.filter.Group

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/Group.hx`](../../../../../h2d/filter/Group.hx)

Extends: [`h2d.filter.Filter`](Filter.md)

Applies an array of Filters to a single Object with several limitations.

* If all filters in the Group are disabled - `Filter.enable` will report `false` even if Group itself is enabled.  
* `Filter.boundsExtend` and `Filter.autoBounds` are automatically managed by Group instance.
* `boundsExtend` is a sum of all filter extends and `autoBounds` enabled only when all filters have it enabled.

When `autoBounds` is disabled, bounds are a result of calling `Filter.getBounds` on children filters, but most likely
will contain only the bounds filled by last filter, because `Object.getBounds` clears the `Bounds` instance.

Ensure that all relevant filters are added to Group prior binding it to any Object. Behavior is undefined otherwise.

## Constructor

### new

```haxe
function new(?filters:Array<Filter>):Void
```

Create a new filter Group.
- **param** `filters` Optional list of the Filters bound to the group.

## Methods

### add

```haxe
function add(f:Filter):Void
```

Adds new Filter `f` to the Group.
Due to implementation specifics, if Group was already bound, new filters won't receive a `bind` call.

### remove

```haxe
function remove(f:Filter):Bool
```

Removes the Filter `f` from the Group.
Due to implementation specifics, removed filter won't receive an `unbind` call even if it was bound previously.

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
override function sync(ctx:h2d.RenderContext, s:h2d.Object):Void
```

### getBounds

```haxe
override function getBounds(s:h2d.Object, bounds:h2d.col.Bounds, scale:h2d.col.Point):Void
```

### draw

```haxe
override function draw(ctx:h2d.RenderContext, input:h2d.Tile):Null<h2d.Tile>
```

## Inherited members

- from [`h2d.filter.Filter`](Filter.md): `autoBounds`, `boundsExtend`, `smooth`, `enable`, `resolutionScale`, `useScreenResolution`, `sync`, `bind`, `unbind`, `getBounds`, `draw`
