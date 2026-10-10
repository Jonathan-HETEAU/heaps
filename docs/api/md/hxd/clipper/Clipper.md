# hxd.clipper.Clipper

**class** · package [`hxd.clipper`](README.md) · source [`hxd/clipper/Clipper.hx`](../../../../../hxd/clipper/Clipper.hx)

Extends: `hxd.clipper._Clipper.ClipperBase`

Polygon clipping (Angus Johnson's Clipper library 5.1.6): intersection, union, difference and xor of polygons with integer coordinates. Add the subject and clip polygons with `addPolygon`, then call `execute`. Used by `h2d.col.IPolygon`.

## Constructor

### new

```haxe
function new():Void
```

Creates a clipper.

## Static methods

### Orientation

```haxe
static inline function Orientation(poly:h2d.col.IPolygon):Bool
```

Tells if the polygon has a positive (counter clockwise) orientation.

### polArea

```haxe
static function polArea(poly:h2d.col.IPolygon):Float
```

Returns the signed area of the polygon.

### SimplifyPolygon

```haxe
static function SimplifyPolygon(poly:h2d.col.IPolygon, ?fillType:PolyFillType):Array<h2d.col.IPolygon>
```

Removes the self intersections of the polygon, and returns the resulting simple polygons.

### SimplifyPolygons

```haxe
static function SimplifyPolygons(polys:h2d.col.IPolygons, ?fillType:PolyFillType):Array<h2d.col.IPolygon>
```

Removes the self intersections of the polygons, and returns the resulting simple polygons.

### MinkowskiSums

```haxe
static function MinkowskiSums(pattern:h2d.col.IPolygon, pols:h2d.col.IPolygons, ?kind:ResultKind):Array<h2d.col.IPolygon>
```

Returns the Minkowski sums of the pattern swept along the polygons.

### MinkowskiDiff

```haxe
static function MinkowskiDiff(pattern:h2d.col.IPolygon, pol:h2d.col.IPolygon, ?kind:ResultKind):Array<h2d.col.IPolygon>
```

Returns the Minkowski difference of the polygons.

## Variables

### strictlySimple

```haxe
var strictlySimple:Bool
```

If set, the result polygons are strictly simple (no touching vertices).

### reverseSolution

```haxe
var reverseSolution:Bool
```

If set, the orientation of the result polygons is reversed.

### resultKind

```haxe
var resultKind:ResultKind
```

The polygons kept in the result.

## Methods

### execute

```haxe
function execute(clipType:ClipType, ?subjFillType:PolyFillType, ?clipFillType:PolyFillType):Array<h2d.col.IPolygon>
```

Computes the boolean operation between the subject and clip polygons, with the filling rules, and returns the result polygons.

### ExecuteTree

```haxe
function ExecuteTree(clipType:ClipType, polytree:hxd.clipper._Clipper.PolyTree, ?subjFillType:PolyFillType, ?clipFillType:PolyFillType):Bool
```

Computes the boolean operation into a tree of the result polygons and their holes.

### PointInPolygon

```haxe
function PointInPolygon(pt:h2d.col.IPoint, pol:h2d.col.IPolygon):Int
```

Returns `1` if the point is inside the polygon, `0` if it is outside, and `-1` if it is on its boundary.

### CleanPolygon

```haxe
function CleanPolygon(path:h2d.col.IPolygon, ?distance:Float = 1.415):h2d.col.IPolygon
```

Removes the vertices closer than `distance` to their neighbors, and the collinear vertices.

### CleanPolygons

```haxe
function CleanPolygons(polys:h2d.col.IPolygons, ?distance:Float = 1.415):h2d.col.IPolygons
```

Removes the vertices closer than `distance` to their neighbors, and the collinear vertices, from the polygons.

### MinkowskiSum

```haxe
function MinkowskiSum(pattern:h2d.col.IPolygon, pol:h2d.col.IPolygon, ?kind:ResultKind):Array<h2d.col.IPolygon>
```

Returns the Minkowski sum of the pattern swept along the polygon.

### PolyTreeToPaths

```haxe
function PolyTreeToPaths(polytree:hxd.clipper._Clipper.PolyTree):h2d.col.IPolygons
```

Returns the polygons of the tree.
