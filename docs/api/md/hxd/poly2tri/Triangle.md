# hxd.poly2tri.Triangle

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/Triangle.hx`](../../../../../hxd/poly2tri/Triangle.hx)

A triangle of the triangulation, with its neighbors and edge flags.

## Constructor

### new

```haxe
function new(p1:Point, p2:Point, p3:Point, ?fixOrientation:Bool = false, ?checkOrientation:Bool = true):Void
```

Creates a triangle. If `fixOrientation` is set, the points are reordered counter clockwise; otherwise, if `checkOrientation` is set, it throws if they are not counter clockwise.

## Static methods

### rotateTrianglePair

```haxe
static function rotateTrianglePair(t:Triangle, p:Point, ot:Triangle, op:Point):Void
```

* Rotates a triangle pair one vertex CW
*<pre>
*       n2                    n2
*  P +-----+             P +-----+
*    | t  /|               |\  t |
*    |   / |               | \   |
*  n1|  /  |n3           n1|  \  |n3
*    | /   |    after CW   |   \ |
*    |/ oT |               | oT \|
*    +-----+ oP            +-----+
*       n4                    n4
* </pre>

## Variables

### points

```haxe
var points:Array<Point>
```

The 3 points, in counter clockwise order.

### neighbors

```haxe
var neighbors:Array<Triangle>
```

The neighbor triangle across each point.

### id

```haxe
var id:Int
```

The identifier of the triangle.

### constrained_edge

```haxe
var constrained_edge:Array<Bool>
```

Tells if the edge across each point is constrained.

### delaunay_edge

```haxe
var delaunay_edge:Array<Bool>
```

Tells if the edge across each point was checked by the Delaunay legalization.

## Methods

### containsPoint

```haxe
function containsPoint(point:Point):Bool
```

* Test if this Triangle contains the Point object given as parameter as its vertices.
*
* @return <code>True</code> if the Point objects are of the Triangle's vertices,
*         <code>false</code> otherwise.

### containsEdgePoints

```haxe
function containsEdgePoints(p1:Point, p2:Point):Bool
```

Tells if the two points are vertices of the triangle.

### markNeighbor

```haxe
function markNeighbor(t:Triangle, p1:Point, p2:Point):Void
```

* Update neighbor pointers.<br>
* This method takes either 3 parameters (<code>p1</code>, <code>p2</code> and
* <code>t</code>) or 1 parameter (<code>t</code>).
* @param   t   Triangle object.
* @param   p1  Point object.
* @param   p2  Point object.

### markNeighborTriangle

```haxe
function markNeighborTriangle(that:Triangle):Void
```

Links the triangles if they share an edge.

### getPointIndexOffset

```haxe
function getPointIndexOffset(p:Point, ?offset:Int = 0):Int
```

Returns the index of the point plus `offset`, modulo 3. Throws if the point is not a vertex.

### pointCW

```haxe
inline function pointCW(p:Point):Point
```

Returns the point clockwise to the given point.

### pointCCW

```haxe
inline function pointCCW(p:Point):Point
```

Returns the point counter clockwise to the given point.

### neighborCW

```haxe
inline function neighborCW(p:Point):Triangle
```

Returns the neighbor clockwise to the given point.

### neighborCCW

```haxe
inline function neighborCCW(p:Point):Triangle
```

Returns the neighbor counter clockwise to the given point.

### getConstrainedEdgeCW

```haxe
inline function getConstrainedEdgeCW(p:Point):Bool
```

Tells if the edge clockwise to the point is constrained.

### setConstrainedEdgeCW

```haxe
inline function setConstrainedEdgeCW(p:Point, ce:Bool):Bool
```

Sets if the edge clockwise to the point is constrained.

### getConstrainedEdgeCCW

```haxe
inline function getConstrainedEdgeCCW(p:Point):Bool
```

Tells if the edge counter clockwise to the point is constrained.

### setConstrainedEdgeCCW

```haxe
inline function setConstrainedEdgeCCW(p:Point, ce:Bool):Bool
```

Sets if the edge counter clockwise to the point is constrained.

### getDelaunayEdgeCW

```haxe
inline function getDelaunayEdgeCW(p:Point):Bool
```

Tells if the edge clockwise to the point is a Delaunay edge.

### setDelaunayEdgeCW

```haxe
inline function setDelaunayEdgeCW(p:Point, e:Bool):Bool
```

Sets if the edge clockwise to the point is a Delaunay edge.

### getDelaunayEdgeCCW

```haxe
inline function getDelaunayEdgeCCW(p:Point):Bool
```

Tells if the edge counter clockwise to the point is a Delaunay edge.

### setDelaunayEdgeCCW

```haxe
inline function setDelaunayEdgeCCW(p:Point, e:Bool):Bool
```

Sets if the edge counter clockwise to the point is a Delaunay edge.

### neighborAcross

```haxe
inline function neighborAcross(p:Point):Triangle
```

* The neighbor across to given point.

### oppositePoint

```haxe
inline function oppositePoint(t:Triangle, p:Point):Point
```

Returns the point of the neighbor `t` opposite to the edge shared with this triangle, across the point `p`.

### legalize

```haxe
function legalize(opoint:Point, ?npoint:Point):Void
```

* Legalize triangle by rotating clockwise.<br>
* This method takes either 1 parameter (then the triangle is rotated around
* points(0)) or 2 parameters (then the triangle is rotated around the first
* parameter).

### index

```haxe
inline function index(p:Point):Int
```

* Alias for getPointIndexOffset
*
* @param   p

### edgeIndex

```haxe
function edgeIndex(p1:Point, p2:Point):Int
```

Returns the index of the edge between the two points, or `-1`.

### markConstrainedEdgeByEdge

```haxe
inline function markConstrainedEdgeByEdge(edge:Edge):Void
```

Marks the edge as constrained.

### markConstrainedEdgeByPoints

```haxe
function markConstrainedEdgeByPoints(p:Point, q:Point):Void
```

Marks the edge between the two points as constrained.

### isEdgeSide

```haxe
function isEdgeSide(ep:Point, eq:Point):Bool
```

* Checks if a side from this triangle is an edge side.
* If sides are not marked they will be marked.
*
* @param   ep
* @param   eq
* @return

### clearNeigbors

```haxe
function clearNeigbors():Void
```

Removes the links to the neighbors.

### clearDelunayEdges

```haxe
function clearDelunayEdges():Void
```

Clears the Delaunay edge flags.

### toString

```haxe
function toString():String
```

Returns a description of the triangle.
