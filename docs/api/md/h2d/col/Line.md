# h2d.col.Line

**class** · package [`h2d.col`](README.md) · source [`h2d/col/Line.hx`](../../../../../h2d/col/Line.hx)

An infinite 2D line going through two specified Points.

## Constructor

### new

```haxe
inline function new(p1:Point, p2:Point):Void
```

Create a new Line instance.
- **param** `p1` The first line point.
- **param** `p2` The second line point.

## Variables

### p1

```haxe
var p1:Point
```

The first line point.

### p2

```haxe
var p2:Point
```

The second line point.

## Methods

### side

```haxe
inline function side(p:Point):Float
```

Returns a positive value if Point `p` is on the right side of the Line axis and negative if it's on the left.

### project

```haxe
inline function project(p:Point):Point
```

Projects Point `p` onto the Line axis and return new Point instance with a result.

### intersect

```haxe
inline function intersect(l:Line):Null<Point>
```

Returns an intersection Point between given Line `l` and this Line with both treated as infinite lines.
Returns `null` if lines are almost colinear (less than epsilon value difference)

### intersectWith

```haxe
inline function intersectWith(l:Line, pt:Point):Bool
```

Tests for intersection between given Line `l` and this Line with both treated as infinite lines.
Returns `false` if lines are almost colinear (less than epsilon value difference).
Otherwise returns `true`, and fill Point `pt` with intersection point.

### distanceSq

```haxe
inline function distanceSq(p:Point):Float
```

Returns a squared distance from Line axis to Point `p`.
Cheaper to calculate than `distance` and can be used for more optimal comparison operations.

### distance

```haxe
inline function distance(p:Point):Float
```

Returns a distance from Line axis to Point `p`.

### angle

```haxe
inline function angle():Float
```

* The angle between a line and the x-axis

### length

```haxe
inline function length():Float
```

The distance between Line starting Point `p1` and ending Point `p2`.
