# hxd.res.Gradients

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Gradients.hx`](../../../../../hxd/res/Gradients.hx)

Extends: [`hxd.res.Resource`](Resource.md)

## Constructor

### new

```haxe
function new(entry:hxd.fs.FileEntry):Void
```

## Methods

### toTexture

```haxe
function toTexture(name:String, ?resolution:Int = 256):h3d.mat.Texture
```

### toTextureMap

```haxe
function toTextureMap(?resolution:Int = 256):Map<String, h3d.mat.Texture>
```

### toTileMap

```haxe
function toTileMap(?resolution:Int = 256):Map<String, h2d.Tile>
```

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
