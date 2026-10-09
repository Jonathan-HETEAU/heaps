# h3d.mat.Filter

**enum** · package [`h3d.mat`](README.md) · module `h3d.mat.Data` · source [`h3d/mat/Data.hx`](../../../../../h3d/mat/Data.hx)

How the pixels of a texture are interpolated when sampled (see `Texture.filter`).

## Constructors

### Nearest

```haxe
Nearest
```

Uses the nearest pixel (pixelated look).

### Linear

```haxe
Linear
```

Interpolates the 4 nearest pixels.

### AnisotropicNearest

```haxe
AnisotropicNearest
```

Anisotropic filtering for surfaces seen at grazing angles, nearest pixel otherwise.

### AnisotropicLinear

```haxe
AnisotropicLinear
```

Anisotropic filtering for surfaces seen at grazing angles, linear otherwise.
