# hxd.res.Resource

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Resource.hx`](../../../../../hxd/res/Resource.hx)

Subclasses: [`hxd.res.Any`](Any.md), [`hxd.res.Atlas`](Atlas.md), [`hxd.res.BDFFont`](BDFFont.md), [`hxd.res.BitmapFont`](BitmapFont.md), [`hxd.res.Font`](Font.md), [`hxd.res.Gradients`](Gradients.md), [`hxd.res.Image`](Image.md), [`hxd.res.Model`](Model.md), [`hxd.res.Sound`](Sound.md), [`hxd.res.TiledMap`](TiledMap.md)

## Constructor

### new

```haxe
function new(entry:hxd.fs.FileEntry):Void
```

## Static variables

### LIVE_UPDATE

```haxe
static var LIVE_UPDATE:Bool
```

## Variables

### name

```haxe
var name(get, null):String
```

### entry

```haxe
var entry(default, null):hxd.fs.FileEntry
```

## Methods

### watch

```haxe
function watch(onChanged:Null<() -> Void>):Void
```
