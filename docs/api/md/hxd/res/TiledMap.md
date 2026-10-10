# hxd.res.TiledMap

**class** · package [`hxd.res`](README.md) · source [`hxd/res/TiledMap.hx`](../../../../../hxd/res/TiledMap.hx)

Extends: [`hxd.res.Resource`](Resource.md)

A map made with the Tiled editor (`.tmx`). Only base64 encoded and zlib compressed layers are supported.

## Constructor

### new

```haxe
function new(entry:hxd.fs.FileEntry):Void
```

## Methods

### toMap

```haxe
function toMap():TiledMapData
```

Parses the map.

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
