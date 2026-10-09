# h3d.col.ObjectCollider

**class** · package [`h3d.col`](README.md) · source [`h3d/col/ObjectCollider.hx`](../../../../../h3d/col/ObjectCollider.hx)

Extends: [`h3d.col.Collider`](Collider.md)

A collider following an object: the shape `collider`, in the object local space, is transformed by the current
absolute transform of `obj` for each test.

## Constructor

### new

```haxe
function new(obj:h3d.scene.Object, collider:Collider):Void
```

Creates a collider following `obj`.

## Variables

### obj

```haxe
var obj:h3d.scene.Object
```

The object whose transform is applied.

### collider

```haxe
var collider:Collider
```

The shape, in the object local space.

## Methods

### rayIntersection

```haxe
override function rayIntersection(r:Ray, bestMatch:Bool):Float
```

Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
If `bestMatch` is `false`, any intersection can be returned (faster).

### contains

```haxe
override function contains(p:Point):Bool
```

Tells if the point `p` is inside the shape.

### inFrustum

```haxe
override function inFrustum(f:Frustum, ?m:h3d.Matrix):Bool
```

Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.

### inSphere

```haxe
override function inSphere(s:Sphere):Bool
```

Tells if the shape intersects the sphere `s`.

### dimension

```haxe
override inline function dimension():Float
```

Returns the largest size of the shape, used to compare collider sizes.

### closestPoint

```haxe
override function closestPoint(p:Point):h3d.Vector
```

Returns the point of the shape closest to `p`.

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

Creates an object displaying the shape (debug), or `null` if not supported.

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
