# h3d.mat.TextureHandle

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/TextureHandle.hx`](../../../../../h3d/mat/TextureHandle.hx)

A bindless handle of a texture: an identifier allowing shaders to access the texture without binding it.
Requires a driver supporting bindless textures. Created by the driver.

## Variables

### texture

```haxe
var texture(default, null):Texture
```

The texture referenced by the handle.

### handle

```haxe
var handle(default, null):Int64
```

The driver handle value.
