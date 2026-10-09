# h3d.col.Capsule

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Capsule.hx`](../../../../../h3d/col/Capsule.hx)

Extends: [`h3d.col.Collider`](Collider.md)

A capsule collider: the points closer than `r` to the segment `a`-`b`.

## Constructor

### new

```haxe
inline function new(a:Point, b:Point, r:Float):Void
```

Creates a capsule.

## Variables

### a

```haxe
var a:Point
```

The first end of the segment.

### b

```haxe
var b:Point
```

The second end of the segment.

### r

```haxe
var r:Float
```

The radius.

## Methods

### contains

```haxe
override inline function contains(p:Point):Bool
```

Tells if the point `p` is inside the shape.

### rayIntersection

```haxe
override function rayIntersection(r:Ray, bestMatch:Bool):Float
```

Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
If `bestMatch` is `false`, any intersection can be returned (faster).

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
override function dimension():Float
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
