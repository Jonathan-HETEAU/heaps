# h3d.col.Sphere

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Sphere.hx`](../../../../../h3d/col/Sphere.hx)

Extends: [`h3d.col.Collider`](Collider.md)

A sphere collider, defined by its center and radius.

## Constructor

### new

```haxe
inline function new(?x:Float = 0., ?y:Float = 0., ?z:Float = 0., ?r:Float = 1.):Void
```

Creates a sphere.

## Variables

### x

```haxe
var x:Float
```

The X position of the center.

### y

```haxe
var y:Float
```

The Y position of the center.

### z

```haxe
var z:Float
```

The Z position of the center.

### r

```haxe
var r:Float
```

The radius.

## Methods

### load

```haxe
inline function load(?sx:Float = 0., ?sy:Float = 0., ?sz:Float = 0., ?sr:Float = 0.):Void
```

Sets the center and radius.

### getCenter

```haxe
inline function getCenter():h3d.Vector
```

Returns the center.

### distance

```haxe
inline function distance(p:Point):Float
```

Returns the distance from `p` to the surface of the sphere (negative inside).

### distanceSq

```haxe
inline function distanceSq(p:Point):Float
```

Returns the squared distance from `p` to the center minus the squared radius (negative inside).

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
override inline function inFrustum(f:Frustum, ?m:h3d.Matrix):Bool
```

Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

Transforms the sphere by `m` (the radius is multiplied by the largest scale).

### inSphere

```haxe
override inline function inSphere(s:Sphere):Bool
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
override inline function closestPoint(p:Point):h3d.Vector
```

Returns the point of the shape closest to `p`.

### clone

```haxe
inline function clone():Sphere
```

Returns a copy.

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

Creates an object displaying the shape (debug), or `null` if not supported.

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
