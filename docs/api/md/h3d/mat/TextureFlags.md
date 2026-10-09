# h3d.mat.TextureFlags

**enum** · package [`h3d.mat`](README.md) · module `h3d.mat.Data` · source [`h3d/mat/Data.hx`](../../../../../h3d/mat/Data.hx)

## Constructors

### Target

```haxe
Target
```

Allocate a texture that will be used as render target.

### Cube

```haxe
Cube
```

Allocate a cube texture. Might be restricted to power of two textures only.

### MipMapped

```haxe
MipMapped
```

Activates Mip Mapping for this texture. Might not be available for target textures.

### ManualMipMapGen

```haxe
ManualMipMapGen
```

By default, textures created with MipMapped will have their mipmaps generated when you upload the mipmap level 0. This flag disables this and manually upload mipmaps instead.

### IsNPOT

```haxe
IsNPOT
```

This is a not power of two texture. Automatically set when having width or height being not power of two.

### NoAlloc

```haxe
NoAlloc
```

Don't initialy allocate the texture memory.

### Dynamic

```haxe
Dynamic
```

Inform that we will often perform upload operations on this texture

### AlphaPremultiplied

```haxe
AlphaPremultiplied
```

Assumes that the color value of the texture is premultiplied by the alpha component.

### WasCleared

```haxe
WasCleared
```

Tells if the target texture has been cleared (reserved for internal engine usage).

### Loading

```haxe
Loading
```

The texture is being currently loaded. Set onLoaded to get event when loading is complete.

### Serialize

```haxe
Serialize
```

Allow texture data serialization when found in a scene (for user generated textures)

### IsArray

```haxe
IsArray
```

Tells if it's a texture array

### AsyncLoading

```haxe
AsyncLoading
```

Allows a DDS texture to be loaded asynchronously (see hxd.res.Image.ASYNC_LOADING)

### LazyLoading

```haxe
LazyLoading
```

By default, the texture are loaded from images when created. If this flag is enabled, the texture will be loaded from disk when first used.

### Writable

```haxe
Writable
```

Texture can be written in shaders using RWTexture

### Is3D

```haxe
Is3D
```

Tells if it's a 3D texture
