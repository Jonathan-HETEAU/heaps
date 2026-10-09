# hxd.poly2tri.Triangle

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/Triangle.hx`](../../../../../hxd/poly2tri/Triangle.hx)

## Constructor

### new

```haxe
function new(p1:Point, p2:Point, p3:Point, ?fixOrientation:Bool = false, ?checkOrientation:Bool = true):Void
```

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

### neighbors

```haxe
var neighbors:Array<Triangle>
```

### id

```haxe
var id:Int
```

### constrained_edge

```haxe
var constrained_edge:Array<Bool>
```

### delaunay_edge

```haxe
var delaunay_edge:Array<Bool>
```

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

### getPointIndexOffset

```haxe
function getPointIndexOffset(p:Point, ?offset:Int = 0):Int
```

### pointCW

```haxe
inline function pointCW(p:Point):Point
```

### pointCCW

```haxe
inline function pointCCW(p:Point):Point
```

### neighborCW

```haxe
inline function neighborCW(p:Point):Triangle
```

### neighborCCW

```haxe
inline function neighborCCW(p:Point):Triangle
```

### getConstrainedEdgeCW

```haxe
inline function getConstrainedEdgeCW(p:Point):Bool
```

### setConstrainedEdgeCW

```haxe
inline function setConstrainedEdgeCW(p:Point, ce:Bool):Bool
```

### getConstrainedEdgeCCW

```haxe
inline function getConstrainedEdgeCCW(p:Point):Bool
```

### setConstrainedEdgeCCW

```haxe
inline function setConstrainedEdgeCCW(p:Point, ce:Bool):Bool
```

### getDelaunayEdgeCW

```haxe
inline function getDelaunayEdgeCW(p:Point):Bool
```

### setDelaunayEdgeCW

```haxe
inline function setDelaunayEdgeCW(p:Point, e:Bool):Bool
```

### getDelaunayEdgeCCW

```haxe
inline function getDelaunayEdgeCCW(p:Point):Bool
```

### setDelaunayEdgeCCW

```haxe
inline function setDelaunayEdgeCCW(p:Point, e:Bool):Bool
```

### neighborAcross

```haxe
inline function neighborAcross(p:Point):Triangle
```

* The neighbor across to given point.

### oppositePoint

```haxe
inline function oppositePoint(t:Triangle, p:Point):Point
```

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

### markConstrainedEdgeByEdge

```haxe
inline function markConstrainedEdgeByEdge(edge:Edge):Void
```

### markConstrainedEdgeByPoints

```haxe
function markConstrainedEdgeByPoints(p:Point, q:Point):Void
```

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

### clearDelunayEdges

```haxe
function clearDelunayEdges():Void
```

### toString

```haxe
function toString():String
```
