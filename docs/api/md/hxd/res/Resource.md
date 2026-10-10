# hxd.res.Resource

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Resource.hx`](../../../../../hxd/res/Resource.hx)

Subclasses: [`hxd.res.Any`](Any.md), [`hxd.res.Atlas`](Atlas.md), [`hxd.res.BDFFont`](BDFFont.md), [`hxd.res.BitmapFont`](BitmapFont.md), [`hxd.res.Font`](Font.md), [`hxd.res.Gradients`](Gradients.md), [`hxd.res.Image`](Image.md), [`hxd.res.Model`](Model.md), [`hxd.res.Sound`](Sound.md), [`hxd.res.TiledMap`](TiledMap.md)

The base class of all the resources loaded by `hxd.res.Loader`. A resource wraps a file entry and loads it on demand.

## Constructor

### new

```haxe
function new(entry:hxd.fs.FileEntry):Void
```

Creates a resource for the file entry.

## Static variables

### LIVE_UPDATE

```haxe
static var LIVE_UPDATE:Bool
```

If set, `watch` reloads the resources when their file changes. Enabled by default in debug builds.

## Variables

### name

```haxe
var name(get, null):String
```

The file name of the resource, with its extension.

### entry

```haxe
var entry(default, null):hxd.fs.FileEntry
```

The file entry of the resource.

## Methods

### watch

```haxe
function watch(onChanged:Null<() -> Void>):Void
```

Calls `onChanged` when the file changes, if `LIVE_UPDATE` is set. Set `null` to stop watching.
