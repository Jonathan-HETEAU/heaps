# h2d.col.IPolygon

**abstract** · package [`h2d.col`](README.md) · source [`h2d/col/IPolygon.hx`](../../../../../h2d/col/IPolygon.hx)

An abstract around an Array of `IPoint`s that define a polygonal shape that can be collision-tested against.
- **see** `h2d.col.Polygon`

Underlying type: `Array<IPoint>`

Implicit casts from: `Array<IPoint>`

Implicit casts to: `Array<IPoint>`

## Static variables

### points

```haxe
static var points(get, null):Array<IPoint>
```

The underlying Array of vertices.

### length

```haxe
static var length(get, null):Int
```

The amount of vertices in the polygon.

## Methods

### toPolygon

```haxe
function toPolygon(?scale:Float = 1.):Polygon
```

Converts this IPolygon into a floating point-based Polygon.

### getBounds

```haxe
function getBounds(?b:IBounds):IBounds
```

Returns the bounding box of the IPolygon.

### union

```haxe
function union(p:IPolygon, ?withHoles:Bool = true):IPolygons
```

Combines this IPolygon and a given IPolygon `p` and returns the resulting IPolygons.
- **param** `p` The IPolygon to union with.
- **param** `withHoles` When enabled, keeps the holes in resulting polygons as a separate IPolygon.

### intersection

```haxe
inline function intersection(p:IPolygon, ?withHoles:Bool = true):IPolygons
```

Calculates an intersection areas between this IPolygon and a given IPolygon `p` and returns the resulting IPolygons.
- **param** `p` The IPolygon to intersect with.
- **param** `withHoles` When enabled, keeps the holes in resulting polygons as a separate IPolygon.

### subtraction

```haxe
inline function subtraction(p:IPolygon, ?withHoles:Bool = true):IPolygons
```

Subtracts the area of a given IPolygon `p` from this IPolygon and returns the resulting IPolygons.
- **param** `p` The IPolygon to subtract with.
- **param** `withHoles` When enabled, keeps the holes in resulting polygons as a separate IPolygon.

### offset

```haxe
function offset(delta:Float, kind:OffsetKind, ?withHoles:Bool = true):IPolygons
```

Offsets the polygon edges by specified amount and returns the resulting IPolygons.
- **param** `delta` The offset amount.
- **param** `kind` The corner rounding method.
- **param** `withHoles` When enabled, keeps the holes in resulting polygons as a separate IPolygon.

### convexHull

```haxe
function convexHull():Array<IPoint>
```

Returns a new IPolygon containing a convex hull of this IPolygon.
See Monotone chain algorithm for more details.

### isClockwise

```haxe
function isClockwise():Bool
```

Tests if polygon points are in the clockwise order.

### area

```haxe
function area():Float
```

Calculates total area of the IPolygon.

### centroid

```haxe
function centroid():Point
```

Calculates a centroid of the Polygon and returns its position.

### isConvex

```haxe
function isConvex():Bool
```

Tests if the polygon is convex or concave.

### reverse

```haxe
function reverse():Void
```

Reverses the IPolygon points ordering. Can be used to change polygon from anti-clockwise to clockwise.

### contains

```haxe
function contains(p:Point, ?isConvex:Bool = false):Bool
```

Tests if Point `p` is inside this IPolygon.
- **param** `p` The point to test against.
- **param** `isConvex` Use simplified collision test suited for convex polygons. Results are undefined if polygon is concave.

### optimize

```haxe
function optimize(epsilon:Float):IPolygon
```

Creates a new optimized polygon by eliminating almost colinear edges according to the epsilon distance.
