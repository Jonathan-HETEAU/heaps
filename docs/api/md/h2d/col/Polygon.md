# h2d.col.Polygon

**abstract** · package [`h2d.col`](README.md) · source [`h2d/col/Polygon.hx`](../../../../../h2d/col/Polygon.hx)

An abstract around an Array of `Point`s that define a polygonal shape that can be collision-tested against.
- **see** `h2d.col.IPolygon`

Underlying type: `Array<Point>`

Implicit casts from: `Array<Point>`

Implicit casts to: `Array<Point>`

## Static variables

### points

```haxe
static var points(get, null):Array<Point>
```

The underlying Array of vertices.

### length

```haxe
static var length(get, null):Int
```

The amount of vertices in the polygon.

## Static methods

### makeCircle

```haxe
static function makeCircle(x:Float, y:Float, radius:Float, ?npoints:Int = 0):Polygon
```

Creates a polygon approximating a circle. If `npoints` is `0`, it is computed from the radius.

## Methods

### fastTriangulate

```haxe
function fastTriangulate():Array<Int>
```

Uses EarCut algorithm to quickly triangulate the polygon.
This will not create the best triangulation possible but is quite solid wrt self-intersections and merged points.
Returns the points indexes

### toSegments

```haxe
function toSegments():Segments
```

Returns new Segments instance containing polygon edges.

### toIPolygon

```haxe
function toIPolygon(?scale:Float = 1.):IPolygon
```

Converts Polygon to Int-based IPolygon.

### getBounds

```haxe
function getBounds(?b:Bounds):Null<Bounds>
```

Returns bounding box of the Polygon.
- **param** `b` Optional Bounds instance to be filled. Returns new Bounds instance if `null`.

### getCollider

```haxe
function getCollider(?isConvex:Bool = false):PolygonCollider
```

Returns new `PolygonCollider` instance containing this Polygon.
- **param** `isConvex` Use simplified collision test suited for convex polygons. Results are undefined if polygon is concave.

### convexHull

```haxe
function convexHull():Array<Point>
```

Returns a new Polygon containing a convex hull of this Polygon.
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

Calculates total area of the Polygon.

### centroid

```haxe
function centroid():Point
```

Calculates a centroid of the Polygon and returns its position.

### isConvex

```haxe
function isConvex():Bool
```

Tests if polygon is convex or concave.

### reverse

```haxe
function reverse():Void
```

Reverses the Polygon points ordering. Can be used to change polygon from anti-clockwise to clockwise.

### transform

```haxe
function transform(mat:Matrix):Void
```

Transforms Polygon points by the provided matrix.

### transformed

```haxe
function transformed(mat:Matrix):Polygon
```

Returns a new transformed Polygon points by the provided matrix.

### contains

```haxe
function contains(p:Point, ?isConvex:Bool = false):Bool
```

Tests if Point `p` is inside this Polygon.
- **param** `p` The point to test against.
- **param** `isConvex` Use simplified collision test suited for convex polygons. Results are undefined if polygon is concave.

### findClosestPoint

```haxe
function findClosestPoint(pt:Point, maxDist:Float):Null<Point>
```

Returns closest Polygon vertex to Point `pt` within set maximum distance.
- **param** `pt` The point to test against.
- **param** `maxDist` Maximum distance vertex can be away from `pt` before it no longer considered close.
- **returns** s A `Point` instance in the Polygon representing closest vertex (not the copy). `null` if no vertices were found near the `pt` within `maxDist`.

### projectPoint

```haxe
function projectPoint(pt:Point, ?out:Point):Null<Point>
```

Return the closest point on the edges of the polygon
- **param** `pt` The point to test against.
- **param** `out` Optional Point instance to which closest point is written. If not provided, returns new Point instance.
- **returns** s A `Point` instance of the closest point on the edges of the polygon.

### distance

```haxe
function distance(pt:Point, ?outside:Bool):Float
```

Return the distance of `pt` to the closest edge.
If outside is `true`, only return a positive value if `pt` is outside the polygon, zero otherwise
If outside is `false`, only return a positive value if `pt` is inside the polygon, zero otherwise

### distanceSq

```haxe
function distanceSq(pt:Point, ?outside:Bool):Float
```

* Same as `distance` but returns the squared value

### rayIntersection

```haxe
function rayIntersection(r:Ray, bestMatch:Bool, ?oriented:Bool = false):Float
```

Returns the distance from the ray origin to an intersection with the edges of the polygon, or `-1` if none.
If `bestMatch` is set, the closest intersection is returned, otherwise the first one found. If `oriented` is set, only the intersections in the direction of the ray are considered.

### selfIntersecting

```haxe
function selfIntersecting():Bool
```

Check if polygon self-intersect

### optimize

```haxe
function optimize(epsilon:Float):Polygon
```

Creates a new optimized polygon by eliminating almost colinear edges according to epsilon distance.
