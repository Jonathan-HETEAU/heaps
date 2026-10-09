# h3d.col.TransformCollider

**class** · package [`h3d.col`](README.md) · source [`h3d/col/TransformCollider.hx`](../../../../../h3d/col/TransformCollider.hx)

Extends: [`h3d.col.Collider`](Collider.md)

A collider whose shape is transformed by a fixed matrix.

## Constructor

### new

```haxe
function new(mat:h3d.Matrix, collider:Collider):Void
```

Creates a collider transforming `collider` by `mat`.

## Static methods

### make

```haxe
static function make(mat:h3d.Matrix, col:Collider):Collider
```

Returns `col` transformed by `mat`, or `col` itself if `mat` is the identity.

## Variables

### collider

```haxe
var collider:Collider
```

The shape, before transformation.

### mat

```haxe
var mat(default, set):h3d.Matrix
```

The transform applied to the shape.

## Methods

### transform

```haxe
function transform(m:h3d.Matrix):TransformCollider
```

Returns a new collider additionally transformed by `m`.

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
