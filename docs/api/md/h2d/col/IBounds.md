# h2d.col.IBounds

**class** · package [`h2d.col`](README.md) · source [`h2d/col/IBounds.hx`](../../../../../h2d/col/IBounds.hx)

An integer-based bounding box.
- **see** `h2d.col.Bounds`

## Constructor

### new

```haxe
inline function new():Void
```

Create new empty IBounds instance.

## Static methods

### fromValues

```haxe
static inline function fromValues(x0:Int, y0:Int, width:Int, height:Int):IBounds
```

Returns a new IBounds instance from given rectangle.
- **param** `x` Rectangle horizontal position.
- **param** `y` Rectangle vertical position.
- **param** `width` Rectangle width.
- **param** `height` Rectangle height.

### fromPoints

```haxe
static inline function fromPoints(min:IPoint, max:IPoint):IBounds
```

Returns a new IBounds instance from given min/max IPoints.

## Variables

### xMin

```haxe
var xMin:Int
```

X-axis left-most bounding box point.

### yMin

```haxe
var yMin:Int
```

Y-axis top-most bounding box point.

### xMax

```haxe
var xMax:Int
```

X-axis right-most bounds box point.

### yMax

```haxe
var yMax:Int
```

Y-axis bottom-most bounding box point.

### x

```haxe
var x(get, set):Int
```

X-axis position of the bounding-box top-left corner. Modifying it alters both `xMin` and `xMax`.

### y

```haxe
var y(get, set):Int
```

Y-axis position of the bounding-box top-left corner. Modifying it alters both `xMin` and `xMax`.

### width

```haxe
var width(get, set):Int
```

Width of the bounding box. Equivalent of `xMax - xMin`.

### height

```haxe
var height(get, set):Int
```

Height of the bounding box. Equivalent of `yMax - yMin`.

## Methods

### toBounds

```haxe
inline function toBounds(?scale:Float = 1.):Bounds
```

Converts `IBounds` to regular `Bounds` scaled by provided scalar `scale`.

### intersects

```haxe
inline function intersects(b:IBounds):Bool
```

Tests if this IBounds instances intersects given `b` IBounds.

### contains

```haxe
inline function contains(p:IPoint):Bool
```

Tests if IPoint `p` is inside the IBounds.

### addBounds

```haxe
inline function addBounds(b:IBounds):Void
```

Adds IBounds `b` to the IBounds, expanding min/max when necessary.

### addPoint

```haxe
inline function addPoint(p:IPoint):Void
```

Adds IPoint `p` to the IBounds, expanding min/max when necessary.

### addPos

```haxe
inline function addPos(x:Int, y:Int):Void
```

Adds position `x` and `y` to the IBounds, expanding min/max when necessary.

### set

```haxe
inline function set(x:Int, y:Int, width:Int, height:Int):Void
```

Sets bounds from given rectangle.
- **param** `x` Rectangle horizontal position.
- **param** `y` Rectangle vertical position.
- **param** `width` Rectangle width.
- **param** `height` Rectangle height.

### setMin

```haxe
inline function setMin(p:IPoint):Void
```

Sets `xMin` and `yMin` to values in given IPoint `p`.

### setMax

```haxe
inline function setMax(p:IPoint):Void
```

Sets `xMax` and `yMax` to values in given IPoint `p`.

### doIntersect

```haxe
inline function doIntersect(b:IBounds):Void
```

Sets this IBounds min/max values to a result of intersection between this IBounds and given IBounds `b`.
See `intersection` to get new instance of IBounds as intersection result.

### doUnion

```haxe
inline function doUnion(b:IBounds):Void
```

Sets this IBounds min/max values to a result of combining this IBounds and given IBounds `b`. Equivalent of `addBounds`.

### intersection

```haxe
function intersection(b:IBounds):IBounds
```

Returns new Bounds instance containing intersection results of this IBounds and given IBounds `b`.

### union

```haxe
function union(b:IBounds):IBounds
```

Returns new Bounds instance containing union of this IBounds and given IBounds `b`.

### load

```haxe
function load(b:IBounds):Void
```

Copies min/max values from given IBounds `b` to this IBounds.

### offset

```haxe
inline function offset(dx:Int, dy:Int):Void
```

Moves entire bounding box by `dx,dy`.

### getMin

```haxe
inline function getMin():IPoint
```

Returns a new IPoint containing `xMin` and `yMin`.

### getCenter

```haxe
inline function getCenter():IPoint
```

Returns a new IPoint containing center coordinate of the IBounds.

### getSize

```haxe
inline function getSize():IPoint
```

Returns a new IPoint containing size of the IBounds.

### getMax

```haxe
inline function getMax():IPoint
```

Returns a new IPoint containing `xMax` and `yMax`.

### isEmpty

```haxe
inline function isEmpty():Bool
```

Tests if bounding box is empty.
IBounds are considered empty when either `xMax` is less than or equals to `xMin` or `yMax` is less than or equals to `yMin`.

### empty

```haxe
inline function empty():Void
```

Clears IBounds into an empty state.

### all

```haxe
inline function all():Void
```

Sets bounds to cover maximum area (`-2147483648...0x7FFFFFFF`).

### clone

```haxe
inline function clone():IBounds
```

Returns new copy of this IBounds instance.
