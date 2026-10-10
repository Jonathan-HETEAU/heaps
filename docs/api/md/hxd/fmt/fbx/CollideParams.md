# hxd.fmt.fbx.CollideParams

**typedef** · package [`hxd.fmt.fbx`](README.md) · module `hxd.fmt.fbx.HMDOut` · source [`hxd/fmt/fbx/HMDOut.hx`](../../../../../../hxd/fmt/fbx/HMDOut.hx)

How the collider of a model is generated (see `hxd.fmt.hmd.Collider.resolveColliderType`).

## Fields

### useDefault

```haxe
var ?useDefault:Null<Bool>
```

Uses the default collide parameters of the converter (`generateCollides`): a `<name>_Collider` model if there is one, otherwise convex hulls.

### unit

```haxe
var ?unit:Null<Float>
```

The size of a voxel when generating the convex hulls.

### shapes

```haxe
var ?shapes:Null<Array<ShapeColliderParams>>
```

The shapes of a custom collider.

### scale

```haxe
var ?scale:Null<Float>
```

The scale applied to the generated convex hulls.

### mesh

```haxe
var ?mesh:Null<String>
```

The name of the model used as collision mesh (or the source of the convex hulls).

### maxConvexHulls

```haxe
var ?maxConvexHulls:Null<Int>
```

Generates at most this number of convex hulls (takes precedence over `mesh` and `shapes`).
