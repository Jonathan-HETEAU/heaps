# h3d.mat.Wrap

**enum** · package [`h3d.mat`](README.md) · module `h3d.mat.Data` · source [`h3d/mat/Data.hx`](../../../../../h3d/mat/Data.hx)

How texture coordinates outside of the `[0, 1]` range are handled (see `Texture.wrap`).

## Constructors

### Clamp

```haxe
Clamp
```

Uses the pixels of the edge.

### Repeat

```haxe
Repeat
```

Repeats the texture.

### Mirror

```haxe
Mirror
```

Repeats the texture, mirrored every other time.
