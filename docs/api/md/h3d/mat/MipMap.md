# h3d.mat.MipMap

**enum** · package [`h3d.mat`](README.md) · module `h3d.mat.Data` · source [`h3d/mat/Data.hx`](../../../../../h3d/mat/Data.hx)

How the mip levels of a texture are sampled (see `Texture.mipMap`).

## Constructors

### None

```haxe
None
```

Mip levels are not used.

### Nearest

```haxe
Nearest
```

Uses the nearest mip level.

### Linear

```haxe
Linear
```

Interpolates between the two nearest mip levels (trilinear filtering).
