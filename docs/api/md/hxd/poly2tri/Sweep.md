# hxd.poly2tri.Sweep

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/Sweep.hx`](../../../../../hxd/poly2tri/Sweep.hx)

The sweep line algorithm of the constrained Delaunay triangulation (poly2tri). Use `VisiblePolygon` for a simple interface.

## Constructor

### new

```haxe
function new(context:SweepContext):Void
```

Creates the sweep for the context.

## Static methods

### nextFlipPoint

```haxe
static function nextFlipPoint(ep:Point, eq:Point, ot:Triangle, op:Point):Point
```

Returns the next point to flip with, depending on its side of the constrained edge.

## Methods

### triangulate

```haxe
function triangulate():Void
```

Triangulates the polygons of the context.

### sweepPoints

```haxe
function sweepPoints():Void
```

Adds the points to the triangulation in order, inserting the constrained edges.

### finalizationPolygon

```haxe
function finalizationPolygon():Void
```

Removes the triangles outside of the polygon.

### pointEvent

```haxe
function pointEvent(point:Point):Node
```

* Find closes node to the left of the new point and
* create a new triangle. If needed new holes and basins
* will be filled to.

### edgeEventByEdge

```haxe
function edgeEventByEdge(edge:Edge, node:Node):Void
```

Inserts a constrained edge, starting from the front node.

### edgeEventByPoints

```haxe
function edgeEventByPoints(ep:Point, eq:Point, triangle:Triangle, point:Point):Void
```

Inserts the constrained edge between two points, flipping the crossed triangles.

### newFrontTriangle

```haxe
function newFrontTriangle(point:Point, node:Node):Node
```

Creates the triangle between a new point and the front node, and returns the new front node.

### fill

```haxe
function fill(node:Node):Void
```

* Adds a triangle to the advancing front to fill a hole.
* @param tcx
* @param node - middle node, that is the bottom of the hole

### fillAdvancingFront

```haxe
function fillAdvancingFront(n:Node):Void
```

* Fills holes in the Advancing Front

### legalize

```haxe
function legalize(t:Triangle):Bool
```

* Returns true if triangle was legalized

### fillBasin

```haxe
function fillBasin(node:Node):Void
```

* Fills a basin that has formed on the Advancing Front to the right
* of given node.<br>
* First we decide a left,bottom and right node that forms the
* boundaries of the basin. Then we do a reqursive fill.
*
* @param tcx
* @param node - starting node, this or next node will be left node

### fillBasinReq

```haxe
function fillBasinReq(node:Node):Void
```

* Recursive algorithm to fill a Basin with triangles
*
* @param tcx
* @param node - bottom_node

### isShallow

```haxe
inline function isShallow(node:Node):Bool
```

Tells if the basin is too shallow to be filled.

### fillEdgeEvent

```haxe
function fillEdgeEvent(edge:Edge, node:Node):Void
```

Fills the front above a constrained edge.

### fillRightAboveEdgeEvent

```haxe
function fillRightAboveEdgeEvent(edge:Edge, node:Node):Void
```

Fills the front to the right, above the constrained edge.

### fillRightBelowEdgeEvent

```haxe
function fillRightBelowEdgeEvent(edge:Edge, node:Node):Void
```

Fills the front to the right, below the constrained edge.

### fillRightConcaveEdgeEvent

```haxe
function fillRightConcaveEdgeEvent(edge:Edge, node:Node):Void
```

Fills a concave part of the front to the right of the constrained edge.

### fillRightConvexEdgeEvent

```haxe
function fillRightConvexEdgeEvent(edge:Edge, node:Node):Void
```

Fills a convex part of the front to the right of the constrained edge.

### fillLeftAboveEdgeEvent

```haxe
function fillLeftAboveEdgeEvent(edge:Edge, node:Node):Void
```

Fills the front to the left, above the constrained edge.

### fillLeftBelowEdgeEvent

```haxe
function fillLeftBelowEdgeEvent(edge:Edge, node:Node):Void
```

Fills the front to the left, below the constrained edge.

### fillLeftConvexEdgeEvent

```haxe
function fillLeftConvexEdgeEvent(edge:Edge, node:Node):Void
```

Fills a convex part of the front to the left of the constrained edge.

### fillLeftConcaveEdgeEvent

```haxe
function fillLeftConcaveEdgeEvent(edge:Edge, node:Node):Void
```

Fills a concave part of the front to the left of the constrained edge.

### flipEdgeEvent

```haxe
function flipEdgeEvent(ep:Point, eq:Point, t:Triangle, p:Point):Void
```

Flips the triangles crossed by the constrained edge until it is part of the triangulation.

### nextFlipTriangle

```haxe
function nextFlipTriangle(o:Int, t:Triangle, ot:Triangle, p:Point, op:Point):Triangle
```

Returns the triangle to continue flipping with, after a flip.

### flipScanEdgeEvent

```haxe
function flipScanEdgeEvent(ep:Point, eq:Point, flip_triangle:Triangle, t:Triangle, p:Point):Void
```

Scans for the next point to flip with, when the opposite point can't be used directly.
