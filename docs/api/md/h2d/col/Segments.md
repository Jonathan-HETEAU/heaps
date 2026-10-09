# h2d.col.Segments

**abstract** · package [`h2d.col`](README.md) · source [`h2d/col/Segments.hx`](../../../../../h2d/col/Segments.hx)

An abstract over the list of `Segment`s. Alternative representation of a polygon.

Segments must be connected to form a complete polygonal shape.
Provides a more efficient distance calculus.

- **see** `h2d.Polygon`

Underlying type: `Array<Segment>`

Implicit casts from: `Array<Segment>`

Implicit casts to: `Array<Segment>`

## Static variables

### segments

```haxe
static var segments(get, null):Array<Segment>
```

The underlying Array of segments.

### length

```haxe
static var length(get, null):Int
```

The amount of segments in the polygon.

## Methods

### containsPoint

```haxe
function containsPoint(p:Point, isConvex:Bool):Bool
```

Tests if Point `p` is inside this Segments.
- **param** `p` The Point to test against.
- **param** `isConvex` Use simplified collision test suited for convex polygons. Results are undefined if polygon is concave.

**Note**: Currently only convex check is implemented and using non-convex test results in an exception.

### toPolygon

```haxe
function toPolygon():Polygon
```

Converts this Segments to a Polygon.

### project

```haxe
function project(p:Point):Point
```

Projects Point `p` onto closest Segment in Segments and returns new Point with projected position.

### distanceSq

```haxe
function distanceSq(p:Point):Float
```

Returns squared distance from the Segments to the Point `p`.

### distance

```haxe
inline function distance(p:Point):Float
```

Returns distance from the Segments to the Point `p`.
