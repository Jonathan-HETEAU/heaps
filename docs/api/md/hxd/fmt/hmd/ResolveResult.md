# hxd.fmt.hmd.ResolveResult

**enum** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

How the collider of a model is built (see `Collider.resolveColliderType`).

## Constructors

### Empty

```haxe
Empty
```

No collider.

### Mesh

```haxe
Mesh(model:Model)
```

The triangles of the model are used as collider.

### ConvexHulls

```haxe
ConvexHulls(model:Model)
```

Convex hulls are generated from the model.

### Shapes

```haxe
Shapes
```

A group of shapes, from `CollideParams.shapes`.
