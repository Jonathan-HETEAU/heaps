# h3d.col.Collider

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Collider.hx`](../../../../../h3d/col/Collider.hx)

Subclasses: [`h3d.col.Bounds`](Bounds.md), [`h3d.col.Capsule`](Capsule.md), [`h3d.col.Cylinder`](Cylinder.md), [`h3d.col.GroupCollider`](GroupCollider.md), [`h3d.col.HeightMap`](HeightMap.md), [`h3d.col.InsideCollider`](InsideCollider.md), [`h3d.col.ObjectCollider`](ObjectCollider.md), [`h3d.col.OptimizedCollider`](OptimizedCollider.md), [`h3d.col.OrientedBounds`](OrientedBounds.md), [`h3d.col.Polygon`](Polygon.md), [`h3d.col.PolygonBuffer`](PolygonBuffer.md), [`h3d.col.SkinCollider`](SkinCollider.md), [`h3d.col.Sphere`](Sphere.md), [`h3d.col.TransformCollider`](TransformCollider.md), [`h3d.col.TriPlane`](TriPlane.md)

Base class of the collision shapes, used for picking (see `h3d.scene.Interactive`), culling and simple collision tests.
Use `h3d.scene.Object.getCollider()` to get the collider of an object.

## Methods

### rayIntersection

```haxe
function rayIntersection(r:Ray, bestMatch:Bool):Float
```

Returns the distance of intersection between the ray and the collider, or negative if no collision.
If bestMatch is false, only negative/positive value needs to be returned, with no additional precision.

### contains

```haxe
function contains(p:Point):Bool
```

Tells if the point `p` is inside the shape.

### inFrustum

```haxe
function inFrustum(f:Frustum, ?localMatrix:h3d.Matrix):Bool
```

Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.

### inSphere

```haxe
function inSphere(s:Sphere):Bool
```

Tells if the shape intersects the sphere `s`.

### dimension

```haxe
function dimension():Float
```

Returns the largest size of the shape, used to compare collider sizes.

### closestPoint

```haxe
function closestPoint(p:Point):Point
```

Returns the point of the shape closest to `p`.

### makeDebugObj

```haxe
function makeDebugObj():h3d.scene.Object
```

Creates an object displaying the shape (debug), or `null` if not supported.
