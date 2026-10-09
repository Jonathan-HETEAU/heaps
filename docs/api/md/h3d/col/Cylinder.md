# h3d.col.Cylinder

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Cylinder.hx`](../../../../../h3d/col/Cylinder.hx)

Extends: [`h3d.col.Collider`](Collider.md)

A cylinder collider of radius `r` between the centers of its two caps `a` and `b`.

## Constructor

### new

```haxe
inline function new(a:Point, b:Point, r:Float):Void
```

Creates a cylinder.

## Variables

### a

```haxe
var a:Point
```

The center of the first cap.

### b

```haxe
var b:Point
```

The center of the second cap.

### r

```haxe
var r:Float
```

The radius.

## Methods

### rayIntersection

```haxe
override function rayIntersection(r:Ray, bestMatch:Bool):Float
```

Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
If `bestMatch` is `false`, any intersection can be returned (faster).

### contains

```haxe
override inline function contains(p:Point):Bool
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

### toString

```haxe
function toString():String
```

Returns a string representation.

### dimension

```haxe
override inline function dimension():Float
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
