# hxd.fmt.hmd.Collider

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

Subclasses: [`hxd.fmt.hmd.BoxCollider`](BoxCollider.md), [`hxd.fmt.hmd.CapsuleCollider`](CapsuleCollider.md), [`hxd.fmt.hmd.ConvexHullsCollider`](ConvexHullsCollider.md), [`hxd.fmt.hmd.CylinderCollider`](CylinderCollider.md), [`hxd.fmt.hmd.EmptyCollider`](EmptyCollider.md), [`hxd.fmt.hmd.GroupCollider`](GroupCollider.md), [`hxd.fmt.hmd.MeshCollider`](MeshCollider.md), [`hxd.fmt.hmd.SphereCollider`](SphereCollider.md)

A collider stored in the file.

## Static methods

### resolveColliderType

```haxe
static function resolveColliderType(d:Data, model:Model, params:hxd.fmt.fbx.CollideParams, isDefaultParams:Bool, ?collisionThresholdHeight:Float, ?collisionUseLowLod:Bool, ?noCollision:Bool):ResolveResult
```

Returns how to build the collider of the model. The collision parameters can be set per asset in the editor:
- None (`noCollision`, or no parameters and not the default ones): an empty collider.
- Default: the `<name>_Collider` model of the file, else the lowest LOD if `collisionUseLowLod` is set, else the model itself (models smaller than `collisionThresholdHeight` get no collider).
- Auto (`params.maxConvexHulls`): convex hulls generated from the model.
- Mesh (`params.mesh`): the given model.
- Custom (`params.shapes`): the shapes defined by the user.

## Variables

### type

```haxe
var type:ColliderType
```

The type of the collider.
