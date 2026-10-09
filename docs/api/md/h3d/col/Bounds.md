# h3d.col.Bounds

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Bounds.hx`](../../../../../h3d/col/Bounds.hx)

Extends: [`h3d.col.Collider`](Collider.md)

An axis aligned bounding box (AABB), defined by its minimum and maximum coordinates.
Also used as a collider and for culling.

```haxe
var b = obj.getBounds();
trace(b.getCenter() + " size " + b.getSize());
```

## Constructor

### new

```haxe
inline function new():Void
```

Creates empty bounds (see `empty`).

## Static methods

### fromPoints

```haxe
static inline function fromPoints(min:Point, max:Point):Bounds
```

Creates bounds from their minimum and maximum points.

### fromValues

```haxe
static inline function fromValues(x:Float, y:Float, z:Float, dx:Float, dy:Float, dz:Float):Bounds
```

Creates bounds from a minimum position and a size.

## Variables

### xMin

```haxe
var xMin:Float
```

The minimum X coordinate.

### xMax

```haxe
var xMax:Float
```

The maximum X coordinate.

### yMin

```haxe
var yMin:Float
```

The minimum Y coordinate.

### yMax

```haxe
var yMax:Float
```

The maximum Y coordinate.

### zMin

```haxe
var zMin:Float
```

The minimum Z coordinate.

### zMax

```haxe
var zMax:Float
```

The maximum Z coordinate.

### xSize

```haxe
var xSize(get, set):Float
```

The size along X. Setting it moves `xMax`.

### ySize

```haxe
var ySize(get, set):Float
```

The size along Y. Setting it moves `yMax`.

### zSize

```haxe
var zSize(get, set):Float
```

The size along Z. Setting it moves `zMax`.

## Methods

### inFrustum

```haxe
override inline function inFrustum(f:Frustum, ?m:h3d.Matrix):Bool
```

Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.

### inSphere

```haxe
override inline function inSphere(s:Sphere):Bool
```

Tells if the shape intersects the sphere `s`.

### rayIntersection

```haxe
override inline function rayIntersection(r:Ray, bestMatch:Bool):Float
```

Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
If `bestMatch` is `false`, any intersection can be returned (faster).

### inFrustumDetails

```haxe
function inFrustumDetails(mvp:h3d.Matrix, ?checkZ:Bool = true):Int
```

* Check if the camera model-view-projection Matrix intersects with the Bounds. Returns -1 if outside, 0 if intersects and 1 if fully inside.
* @param   mvp : the model-view-projection matrix to test against
* @param   checkZ : tells if we will check against the near/far plane

### transform3x3

```haxe
function transform3x3(m:h3d.Matrix):Void
```

Transforms the bounds by the rotation and scale of `m`: the result is the box containing the transformed box.

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

Transforms the bounds by `m`: the result is the box containing the transformed box.

### collide

```haxe
inline function collide(b:Bounds):Bool
```

Tells if the bounds intersect `b`.

### contains

```haxe
override inline function contains(p:Point):Bool
```

Tells if the point `p` is inside the shape.

### containsBounds

```haxe
inline function containsBounds(b:Bounds):Bool
```

Tells if `b` is fully inside the bounds.

### containsSphere

```haxe
inline function containsSphere(s:Sphere):Bool
```

Tells if the sphere `s` is fully inside the bounds.

### add

```haxe
inline function add(b:Bounds):Void
```

Extends the bounds to contain `b`.

### addTransform

```haxe
inline function addTransform(b:Bounds, m:h3d.Matrix):Void
```

Extends the bounds to contain `b` transformed by `m`.

### addPoint

```haxe
inline function addPoint(p:Point):Void
```

Extends the bounds to contain the point `p`.

### addPos

```haxe
inline function addPos(x:Float, y:Float, z:Float):Void
```

Extends the bounds to contain the position (`x`, `y`, `z`).

### addSphere

```haxe
inline function addSphere(s:Sphere):Void
```

Extends the bounds to contain the sphere `s`.

### addSpherePos

```haxe
inline function addSpherePos(x:Float, y:Float, z:Float, r:Float):Void
```

Extends the bounds to contain the sphere of center (`x`, `y`, `z`) and radius `r`.

### intersection

```haxe
function intersection(a:Bounds, b:Bounds):Void
```

Sets the bounds to the intersection of `a` and `b` (empty if they do not intersect).

### offset

```haxe
inline function offset(dx:Float, dy:Float, dz:Float):Void
```

Moves the bounds.

### setMin

```haxe
inline function setMin(p:Point):Void
```

Sets the minimum coordinates.

### setMax

```haxe
inline function setMax(p:Point):Void
```

Sets the maximum coordinates.

### load

```haxe
function load(b:Bounds):Void
```

Copies the values of another instance.

### scalePivot

```haxe
inline function scalePivot(v:Float):Void
```

Scales the coordinates by `v`, relative to the origin.

### scaleCenter

```haxe
function scaleCenter(v:Float):Void
```

Scales the size by `v`, relative to the center.

### getMin

```haxe
inline function getMin():h3d.Vector
```

Returns the minimum coordinates.

### getCenter

```haxe
inline function getCenter():h3d.Vector
```

Returns the center.

### getSize

```haxe
inline function getSize():h3d.Vector
```

Returns the size along each axis.

### getMax

```haxe
inline function getMax():h3d.Vector
```

Returns the maximum coordinates.

### getVolume

```haxe
inline function getVolume():Float
```

Returns the volume.

### isEmpty

```haxe
inline function isEmpty():Bool
```

Tells if the bounds are empty (a minimum is greater than its maximum).

### empty

```haxe
inline function empty():Void
```

Empties the bounds, so that adding a point makes them contain only this point.

### all

```haxe
inline function all():Void
```

Makes the bounds cover the whole space.

### clone

```haxe
inline function clone():Bounds
```

Returns a copy.

### toString

```haxe
function toString():String
```

Returns a string representation.

### toSphere

```haxe
inline function toSphere():Sphere
```

Returns the sphere containing the bounds.

### dimension

```haxe
override inline function dimension():Float
```

Returns the largest size of the shape, used to compare collider sizes.

### getBoundingSphereRadius

```haxe
inline function getBoundingSphereRadius():Float
```

Returns the radius of the sphere containing the bounds (half of the diagonal).

### getBoundingRadius

```haxe
inline function getBoundingRadius():Float
```

Returns the radius, around the origin, of the sphere containing the bounds.

### closestPoint

```haxe
override inline function closestPoint(p:Point):h3d.Vector
```

Returns the point of the shape closest to `p`.

### distanceTo

```haxe
inline function distanceTo(p:Point):Float
```

Returns the distance from `p` to the bounds (`0` if inside).

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

Creates an object displaying the shape (debug), or `null` if not supported.

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
