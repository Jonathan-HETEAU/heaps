# h2d.col.Polygons

**abstract** · package [`h2d.col`](README.md) · source [`h2d/col/Polygons.hx`](../../../../../h2d/col/Polygons.hx)

An abstract over an Array of `Polygon` instances that define multiple polygonal shapes that can be collision-tested against.
- **see** `h2d.IPolygons`

Underlying type: `Array<Polygon>`

Implicit casts from: `Array<Polygon>`

Implicit casts to: `Array<Polygon>`

## Static variables

### polygons

```haxe
static var polygons(get, null):Array<Polygon>
```

An underlying Polygon array.

### length

```haxe
static var length(get, null):Int
```

The amount of polygons in the Polygons instance.

## Methods

### toIPolygons

```haxe
function toIPolygons(?scale:Float = 1.):IPolygons
```

Converts Polygons instance to Int-based IPolygons.

### getBounds

```haxe
function getBounds(?b:Bounds):Null<Bounds>
```

Returns bounding box of all Polygon instances in Polygons.
- **param** `b` Optional Bounds instance to be filled. Returns new Bounds instance if `null`.

### getCollider

```haxe
function getCollider(?isConvex:Bool = false):PolygonCollider
```

Returns new `PolygonCollider` instance containing this Polygons.
- **param** `isConvex` Use simplified collision test suited for convex polygons. Results are undefined if polygon is concave.

### contains

```haxe
function contains(p:Point, ?isConvex:Bool = false):Bool
```

Tests if Point `p` is inside any of the Polygon instances in Polygons.
- **param** `p` The point to test against.
- **param** `isConvex` Use simplified collision test suited for convex polygons. Results are undefined if polygon is concave.

### distance

```haxe
function distance(p:Point, ?isConvex:Bool = false):Float
```

Returns the distance from Point `p` to the area covered by the Polygon instances in Polygons, `0` if inside any of them.
- **param** `p` The point to measure from.
- **param** `isConvex` Use simplified collision test suited for convex polygons. Results are undefined if polygon is concave.

### distanceSq

```haxe
function distanceSq(p:Point, ?isConvex:Bool = false):Float
```

Same as `distance` but returns the squared value.

### optimize

```haxe
function optimize(epsilon:Float):Polygons
```

Optimizes all polygons and returns new Polygons instances. See [h2d.col.Polygon.optimize].
