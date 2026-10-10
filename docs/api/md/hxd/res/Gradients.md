# hxd.res.Gradients

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Gradients.hx`](../../../../../hxd/res/Gradients.hx)

Extends: [`hxd.res.Resource`](Resource.md)

A Photoshop gradients file (`.grd`), converted to textures of horizontal gradients.

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

Creates a texture for the gradient of the given name. `resolution` is the texture width, and must be a power of two.

### toTextureMap

```haxe
function toTextureMap(?resolution:Int = 256):Map<String, h3d.mat.Texture>
```

Creates a texture for each gradient, by name.

### toTileMap

```haxe
function toTileMap(?resolution:Int = 256):Map<String, h2d.Tile>
```

Writes all the gradients into a single texture, and returns a 1 pixel high tile for each of them, by name.

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
