# hxd.fmt.fbx.ShapeColliderParams

**typedef** · package [`hxd.fmt.fbx`](README.md) · module `hxd.fmt.fbx.HMDOut` · source [`hxd/fmt/fbx/HMDOut.hx`](../../../../../../hxd/fmt/fbx/HMDOut.hx)

A shape of a custom collider.

## Fields

### type

```haxe
var type:ShapeColliderType
```

The type of the shape.

### rotation

```haxe
var ?rotation:Null<{ z:Float, y:Float, x:Float }>
```

The rotation of the shape, in radians (boxes).

### radius

```haxe
var ?radius:Null<Float>
```

The radius of the shape (spheres, capsules and cylinders).

### position

```haxe
var position:{ z:Float, y:Float, x:Float }
```

The position of the shape.

### halfExtent

```haxe
var ?halfExtent:Null<{ z:Float, y:Float, x:Float }>
```

The half size of the shape (boxes, capsules and cylinders).
