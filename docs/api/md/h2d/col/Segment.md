# h2d.col.Segment

**class** · package [`h2d.col`](README.md) · source [`h2d/col/Segment.hx`](../../../../../h2d/col/Segment.hx)

A 2D line segment.
- **see** `h2d.Segments`

## Constructor

### new

```haxe
inline function new(p1:Point, p2:Point):Void
```

Create a new Segment starting from Point `p1` and ending at Point `p2`.

## Variables

### x

```haxe
var x:Float
```

X starting position of the Segment.

Please use `Segment.setPoints` to modify this value.

### y

```haxe
var y:Float
```

Y starting position of the Segment.

Please use `Segment.setPoints` to modify this value.

### dx

```haxe
var dx:Float
```

The delta-value of X end position of the Segment relative to starting position.

Please use `Segment.setPoints` to modify this value.

### dy

```haxe
var dy:Float
```

The delta-value of Y end position of the Segment relative to starting position.

Please use `Segment.setPoints` to modify this value.

### lenSq

```haxe
var lenSq:Float
```

Squared length of the segment.

Please use `Segment.setPoints` to modify this value.

### invLenSq

```haxe
var invLenSq:Float
```

Inverse of the Segments squared length.

Please use `Segment.setPoints` to modify this value.

## Methods

### setPoints

```haxe
inline function setPoints(p1:Point, p2:Point):Void
```

Sets Segment starting position at Point `p1` and ending position at Point `p2`.

### side

```haxe
inline function side(p:Point):Float
```

Returns a positive value if Point `p` is on the right side of the Segment axis and negative if it's on the left.

### distanceSq

```haxe
inline function distanceSq(p:Point):Float
```

Returns squared distance to the Segment as an infinite line to the Point `p`.

### distance

```haxe
inline function distance(p:Point):Float
```

Returns distance from the Segment as an infinite line to the Point `p`.

### project

```haxe
inline function project(p:Point, ?out:Point):Point
```

Projects Point `p` onto Segment. Returns position of intersection between Segment and line perpendicular to it going through Point `p`.
- **param** `p` Point to project onto this Segment.
- **param** `out` Optional Point instance to which projection point is written. If not provided, returns new Point instance.
- **returns** s A `Point` with projection position.

### lineIntersection

```haxe
inline function lineIntersection(r:Ray, ?pt:Point):Null<Point>
```

Tests if Segments intersects given Ray `r`.
- **param** `pt` Optional Point instance to which intersection point is written. If not provided, returns new Point instance.
- **returns** s A `Point` with intersection position or `null` if Segment and Ray do not intersect.
