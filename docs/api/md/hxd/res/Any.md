# hxd.res.Any

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Any.hx`](../../../../../hxd/res/Any.hx)

Extends: [`hxd.res.Resource`](Resource.md)

## Constructor

### new

```haxe
function new(loader:Loader, entry:hxd.fs.FileEntry):Void
```

## Static methods

### fromBytes

```haxe
static function fromBytes(path:String, bytes:Bytes):Any
```

## Methods

### toModel

```haxe
function toModel():Model
```

### toTexture

```haxe
function toTexture():h3d.mat.Texture
```

### toTile

```haxe
function toTile():h2d.Tile
```

### toText

```haxe
function toText():String
```

### toImage

```haxe
function toImage():Image
```

### toSound

```haxe
function toSound():Sound
```

### toPrefab

```haxe
function toPrefab():Resource
```

### toAnimGraph

```haxe
function toAnimGraph():Resource
```

### iterator

```haxe
inline function iterator():hxd.impl.ArrayIterator_hxd_res_Any
```

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
