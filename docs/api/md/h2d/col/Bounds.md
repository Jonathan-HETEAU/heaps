# h2d.col.Bounds

**class** · package [`h2d.col`](README.md) · source [`h2d/col/Bounds.hx`](../../../../../h2d/col/Bounds.hx)

Extends: [`h2d.col.Collider`](Collider.md)

A 2D bounding box often used for determining Object bounding area.

Bounds holds min/max coordinates of bounding box instead of it's position and size.
- **see** `Object.getBounds`
- **see** `Object.getSize`

## Constructor

### new

```haxe
inline function new():Void
```

Create new empty Bounds instance.

## Static methods

### fromValues

```haxe
static inline function fromValues(x0:Float, y0:Float, width:Float, height:Float):Bounds
```

Returns a new Bounds instance from given rectangle.
- **param** `x` Rectangle horizontal position.
- **param** `y` Rectangle vertical position.
- **param** `width` Rectangle width.
- **param** `height` Rectangle height.

### fromPoints

```haxe
static inline function fromPoints(min:Point, max:Point):Bounds
```

Returns a new Bounds instance from given `min`/`max` Points.

## Variables

### xMin

```haxe
var xMin:Float
```

X-axis left-most bounding box point.

### yMin

```haxe
var yMin:Float
```

Y-axis top-most bounding box point.

### xMax

```haxe
var xMax:Float
```

X-axis right-most bounding box point.

### yMax

```haxe
var yMax:Float
```

Y-axis bottom-most bounding box point.

### x

```haxe
var x(get, set):Float
```

X-axis position of the bounding box top-left corner. Modifying it alters both `Bounds.xMin` and `Bounds.xMax`.

### y

```haxe
var y(get, set):Float
```

Y-axis position of the bounding box top-left corner. Modifying it alters both `Bounds.yMin` and `Bounds.yMax`.

### width

```haxe
var width(get, set):Float
```

Width of the bounding box. Equivalent of `xMax - xMin`.

### height

```haxe
var height(get, set):Float
```

Height of the bounding box. Equivalent of `yMax - yMin`.

## Methods

### toIBounds

```haxe
inline function toIBounds(?scale:Float = 1.):IBounds
```

Converts bounding box to integer bounding box scaled by provided scalar `scale` (rounded down for `min` and up for `max`).

### intersects

```haxe
inline function intersects(b:Bounds):Bool
```

Tests if this Bounds instance intersects with given `b` Bounds.

### collideBounds

```haxe
override inline function collideBounds(b:Bounds):Bool
```

### collideCircle

```haxe
override inline function collideCircle(c:Circle):Bool
```

### contains

```haxe
override inline function contains(p:Point):Bool
```

Tests if the Point `p` is inside the bounding box.

### rayIntersection

```haxe
function rayIntersection(r:Ray):Float
```

### distanceSq

```haxe
inline function distanceSq(p:Point):Float
```

* Same as distance but does not perform sqrt

### distance

```haxe
inline function distance(p:Point):Float
```

* Returns the distance betwen the point and the bounds. Or 0 if the point is inside the bounds.

### addBounds

```haxe
inline function addBounds(b:Bounds):Void
```

Adds Bounds `b` to the Bounds, expanding min/max when necessary.

### addPoint

```haxe
inline function addPoint(p:Point):Void
```

Adds the Point `p` to the bounding box, expanding min/max when necessary.

### addPos

```haxe
inline function addPos(x:Float, y:Float):Void
```

Adds the `x` and `y` position to the bounding box, expanding min/max when necessary.

### set

```haxe
inline function set(x:Float, y:Float, width:Float, height:Float):Void
```

Sets the bounding box from the given rectangle.
- **param** `x` Rectangle top-left corner horizontal position.
- **param** `y` Rectangle top-left corner vertical position.
- **param** `width` Rectangle width.
- **param** `height` Rectangle height.

### setMin

```haxe
inline function setMin(p:Point):Void
```

Sets the `Bounds.xMin` and `Bounds.yMin` to values in the given Point `p`.

### setMax

```haxe
inline function setMax(p:Point):Void
```

Sets the `Bounds.xMax` and `Bounds.yMax` to values in the given Point `p`.

### doIntersect

```haxe
inline function doIntersect(b:Bounds):Void
```

Sets the bounding box min/max values to a result of the intersection between this Bounds and the given Bounds `b`.

See `Bounds.intersection` to get new instance of Bounds as intersection result.

### doUnion

```haxe
inline function doUnion(b:Bounds):Void
```

Sets this bounding box min/max values to a result of combining this Bounds and the given Bounds `b`.

Equivalent of `Bounds.addBounds`.

### intersection

```haxe
function intersection(b:Bounds):Bounds
```

Returns a new Bounds instance containing intersection results of this Bounds and the given Bounds `b`.

### union

```haxe
function union(b:Bounds):Bounds
```

Returns a new Bounds instance containing union of this Bounds and the given Bounds `b`.

### load

```haxe
function load(b:Bounds):Void
```

Copies the min/max values from the given Bounds `b` to this Bounds.

### scalePivot

```haxe
inline function scalePivot(v:Float):Void
```

Scales the min/max values relative to `0,0` coordinate.

### scaleCenter

```haxe
function scaleCenter(v:Float):Void
```

Scales the min/max values relative the current bounding box center point.

### rotate

```haxe
function rotate(angle:Float):Void
```

Rotates the bounding box around `0,0` point by given `angle` and sets min/max to the new rotated boundaries.

### offset

```haxe
inline function offset(dx:Float, dy:Float):Void
```

Moves entire bounding box by `dx, dy`.

### getMin

```haxe
inline function getMin():Point
```

Returns a new Point containing `Bounds.xMin` and `Bounds.yMin`.

### getCenter

```haxe
inline function getCenter():Point
```

Returns a new Point containing the center coordinate of the bounding box.

### getSize

```haxe
inline function getSize():Point
```

Returns a new Point containing size of the bounding box.

### getMax

```haxe
inline function getMax():Point
```

Returns a new Point containing `Bounds.xMax` and `Bounds.yMax`.

### isEmpty

```haxe
inline function isEmpty():Bool
```

Tests if bounding box is empty.
Bounds are considered empty when either `Bounds.xMax` is less than or equals to `Bounds.xMin` or `Bounds.yMax` is less than or equals to `Bounds.yMin`.

### empty

```haxe
inline function empty():Void
```

Clears bounding box into an empty state.

### all

```haxe
inline function all():Void
```

Sets the bounding box to cover maximum area (`-1e20...1e20`).

### clone

```haxe
inline function clone():Bounds
```

Returns new copy of this Bounds instance.

### toCircle

```haxe
inline function toCircle():Circle
```

Returns the bounding circle which includes all the bounds.

## Inherited members

- from [`h2d.col.Collider`](Collider.md): `contains`, `collideCircle`, `collideBounds`
