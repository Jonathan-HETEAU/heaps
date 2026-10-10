# hxd.res.Any

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Any.hx`](../../../../../hxd/res/Any.hx)

Extends: [`hxd.res.Resource`](Resource.md)

A resource of unknown type, as returned by `hxd.res.Loader.load`: use one of its `toXXX` methods to load it as a specific type.
Iterating over it lists the files of a directory.

## Constructor

### new

```haxe
function new(loader:Loader, entry:hxd.fs.FileEntry):Void
```

Creates a resource for the file entry, loaded with `loader`.

## Static methods

### fromBytes

```haxe
static function fromBytes(path:String, bytes:Bytes):Any
```

Creates a resource from bytes, with its own loader. The path extension is used to identify the file type.

## Methods

### toModel

```haxe
function toModel():Model
```

Loads the resource as a 3D model.

### toTexture

```haxe
function toTexture():h3d.mat.Texture
```

Loads the resource as an image and returns its texture.

### toTile

```haxe
function toTile():h2d.Tile
```

Loads the resource as an image and returns a tile of the whole image.

### toText

```haxe
function toText():String
```

Returns the content of the file as text.

### toImage

```haxe
function toImage():Image
```

Loads the resource as an image.

### toSound

```haxe
function toSound():Sound
```

Loads the resource as a sound.

### toPrefab

```haxe
function toPrefab():Resource
```

Loads the resource as a prefab.

### toAnimGraph

```haxe
function toAnimGraph():Resource
```

Loads the resource as an animation graph.

### iterator

```haxe
inline function iterator():hxd.impl.ArrayIterator_hxd_res_Any
```

Iterates over the files of a directory.

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
