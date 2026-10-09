# h3d.pass.CascadeCamera

**typedef** · package [`h3d.pass`](README.md) · module `h3d.pass.CascadeShadowMap` · source [`h3d/pass/CascadeShadowMap.hx`](../../../../../h3d/pass/CascadeShadowMap.hx)

The shadow camera of a cascade.

## Fields

### viewProj

```haxe
var viewProj:h3d.Matrix
```

The view-projection matrix.

### view

```haxe
var view:h3d.Matrix
```

The view matrix.

### scale

```haxe
var scale:h3d.Vector4
```

The scale from the shared shadow space to the cascade (W stores the far distance of the cascade).

### proj

```haxe
var proj:h3d.Matrix
```

The projection matrix.

### orthoBounds

```haxe
var orthoBounds:h3d.col.Bounds
```

The orthographic bounds of the cascade.

### offset

```haxe
var offset:h3d.Vector4
```

The offset from the shared shadow space to the cascade.
