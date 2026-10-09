# h3d.col.OptimizedCollider

**class** · package [`h3d.col`](README.md) · module `h3d.col.Collider` · source [`h3d/col/Collider.hx`](../../../../../h3d/col/Collider.hx)

Extends: [`h3d.col.Collider`](Collider.md)

A collider tested in two steps: the fast shape `a` (usually bounds) first, then the precise shape `b` only if `a` is hit.

## Constructor

### new

```haxe
function new(a:Collider, b:Collider):Void
```

Creates the collider.

## Variables

### a

```haxe
var a:Collider
```

The fast, approximate shape.

### b

```haxe
var b:Collider
```

The precise shape.

### checkInside

```haxe
var checkInside:Bool
```

If `true`, a ray starting inside `a` is also tested against `b`.

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
override function dimension():Float
```

Returns the largest size of the shape, used to compare collider sizes.

### closestPoint

```haxe
override function closestPoint(p:Point):Point
```

Returns the point of the shape closest to `p`.

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

Creates an object displaying the shape (debug), or `null` if not supported.

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
