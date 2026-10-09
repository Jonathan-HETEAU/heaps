# h3d.col.OrientedBounds

**class** · package [`h3d.col`](README.md) · source [`h3d/col/OrientedBounds.hx`](../../../../../h3d/col/OrientedBounds.hx)

Extends: [`h3d.col.Collider`](Collider.md)

An oriented bounding box (OBB): a box of half sizes `hx`, `hy`, `hz` around a center, with any rotation.

## Constructor

### new

```haxe
function new():Void
```

Creates a unit box centered on the origin.

## Variables

### centerX

```haxe
var centerX:Float
```

The X position of the center.

### centerY

```haxe
var centerY:Float
```

The Y position of the center.

### centerZ

```haxe
var centerZ:Float
```

The Z position of the center.

### xx

```haxe
var xx:Float
```

The X component of the box X axis.

### xy

```haxe
var xy:Float
```

The Y component of the box X axis.

### xz

```haxe
var xz:Float
```

The Z component of the box X axis.

### yx

```haxe
var yx:Float
```

The X component of the box Y axis.

### yy

```haxe
var yy:Float
```

The Y component of the box Y axis.

### yz

```haxe
var yz:Float
```

The Z component of the box Y axis.

### zx

```haxe
var zx:Float
```

The X component of the box Z axis.

### zy

```haxe
var zy:Float
```

The Y component of the box Z axis.

### zz

```haxe
var zz:Float
```

The Z component of the box Z axis.

### hx

```haxe
var hx:Float
```

The half size along the box X axis.

### hy

```haxe
var hy:Float
```

The half size along the box Y axis.

### hz

```haxe
var hz:Float
```

The half size along the box Z axis.

## Methods

### setMatrix

```haxe
function setMatrix(m:h3d.Matrix):Void
```

Sets the box from a transform: the unit box centered on the origin transformed by `m`.

### getMatrix

```haxe
function getMatrix():h3d.Matrix
```

Returns the transform of the unit box giving this box.

### setEulerAngles

```haxe
function setEulerAngles(x:Float, y:Float, z:Float):Void
```

Sets the rotation of the box from Euler angles, in radians.

### collideOrientedBounds

```haxe
function collideOrientedBounds(other:OrientedBounds):Bool
```

Tells if the box intersects the box `other`.

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

### hasSphere

```haxe
function hasSphere(s:Sphere):Bool
```

Tells if the sphere `s` intersects the box.

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

### getVertice

```haxe
inline function getVertice(i:Int):h3d.Vector
```

Returns the corner `i` (0 to 7) of the box.

### getVertices

```haxe
function getVertices(?out:Array<h3d.Vector>):Array<h3d.Vector>
```

Returns the 8 corners of the box.

### closestPoint

```haxe
override function closestPoint(p:Point):h3d.Vector
```

Returns the point of the shape closest to `p`.

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Graphics
```

Creates an object displaying the shape (debug), or `null` if not supported.

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
