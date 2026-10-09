# h3d.col.Bounds

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Bounds.hx`](../../../../../h3d/col/Bounds.hx)

Extends: [`h3d.col.Collider`](Collider.md)

## Constructor

### new

```haxe
inline function new():Void
```

## Static methods

### fromPoints

```haxe
static inline function fromPoints(min:Point, max:Point):Bounds
```

### fromValues

```haxe
static inline function fromValues(x:Float, y:Float, z:Float, dx:Float, dy:Float, dz:Float):Bounds
```

## Variables

### xMin

```haxe
var xMin:Float
```

### xMax

```haxe
var xMax:Float
```

### yMin

```haxe
var yMin:Float
```

### yMax

```haxe
var yMax:Float
```

### zMin

```haxe
var zMin:Float
```

### zMax

```haxe
var zMax:Float
```

### xSize

```haxe
var xSize(get, set):Float
```

### ySize

```haxe
var ySize(get, set):Float
```

### zSize

```haxe
var zSize(get, set):Float
```

## Methods

### inFrustum

```haxe
override inline function inFrustum(f:Frustum, ?m:h3d.Matrix):Bool
```

### inSphere

```haxe
override inline function inSphere(s:Sphere):Bool
```

### rayIntersection

```haxe
override inline function rayIntersection(r:Ray, bestMatch:Bool):Float
```

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

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

### collide

```haxe
inline function collide(b:Bounds):Bool
```

### contains

```haxe
override inline function contains(p:Point):Bool
```

### containsBounds

```haxe
inline function containsBounds(b:Bounds):Bool
```

### containsSphere

```haxe
inline function containsSphere(s:Sphere):Bool
```

### add

```haxe
inline function add(b:Bounds):Void
```

### addTransform

```haxe
inline function addTransform(b:Bounds, m:h3d.Matrix):Void
```

### addPoint

```haxe
inline function addPoint(p:Point):Void
```

### addPos

```haxe
inline function addPos(x:Float, y:Float, z:Float):Void
```

### addSphere

```haxe
inline function addSphere(s:Sphere):Void
```

### addSpherePos

```haxe
inline function addSpherePos(x:Float, y:Float, z:Float, r:Float):Void
```

### intersection

```haxe
function intersection(a:Bounds, b:Bounds):Void
```

### offset

```haxe
inline function offset(dx:Float, dy:Float, dz:Float):Void
```

### setMin

```haxe
inline function setMin(p:Point):Void
```

### setMax

```haxe
inline function setMax(p:Point):Void
```

### load

```haxe
function load(b:Bounds):Void
```

### scalePivot

```haxe
inline function scalePivot(v:Float):Void
```

### scaleCenter

```haxe
function scaleCenter(v:Float):Void
```

### getMin

```haxe
inline function getMin():h3d.Vector
```

### getCenter

```haxe
inline function getCenter():h3d.Vector
```

### getSize

```haxe
inline function getSize():h3d.Vector
```

### getMax

```haxe
inline function getMax():h3d.Vector
```

### getVolume

```haxe
inline function getVolume():Float
```

### isEmpty

```haxe
inline function isEmpty():Bool
```

### empty

```haxe
inline function empty():Void
```

### all

```haxe
inline function all():Void
```

### clone

```haxe
inline function clone():Bounds
```

### toString

```haxe
function toString():String
```

### toSphere

```haxe
inline function toSphere():Sphere
```

### dimension

```haxe
override inline function dimension():Float
```

### getBoundingSphereRadius

```haxe
inline function getBoundingSphereRadius():Float
```

### getBoundingRadius

```haxe
inline function getBoundingRadius():Float
```

### closestPoint

```haxe
override inline function closestPoint(p:Point):h3d.Vector
```

### distanceTo

```haxe
inline function distanceTo(p:Point):Float
```

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
