# hxd.poly2tri.Sweep

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/Sweep.hx`](../../../../../hxd/poly2tri/Sweep.hx)

## Constructor

### new

```haxe
function new(context:SweepContext):Void
```

## Static methods

### nextFlipPoint

```haxe
static function nextFlipPoint(ep:Point, eq:Point, ot:Triangle, op:Point):Point
```

## Methods

### triangulate

```haxe
function triangulate():Void
```

### sweepPoints

```haxe
function sweepPoints():Void
```

### finalizationPolygon

```haxe
function finalizationPolygon():Void
```

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

### edgeEventByPoints

```haxe
function edgeEventByPoints(ep:Point, eq:Point, triangle:Triangle, point:Point):Void
```

### newFrontTriangle

```haxe
function newFrontTriangle(point:Point, node:Node):Node
```

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

### fillEdgeEvent

```haxe
function fillEdgeEvent(edge:Edge, node:Node):Void
```

### fillRightAboveEdgeEvent

```haxe
function fillRightAboveEdgeEvent(edge:Edge, node:Node):Void
```

### fillRightBelowEdgeEvent

```haxe
function fillRightBelowEdgeEvent(edge:Edge, node:Node):Void
```

### fillRightConcaveEdgeEvent

```haxe
function fillRightConcaveEdgeEvent(edge:Edge, node:Node):Void
```

### fillRightConvexEdgeEvent

```haxe
function fillRightConvexEdgeEvent(edge:Edge, node:Node):Void
```

### fillLeftAboveEdgeEvent

```haxe
function fillLeftAboveEdgeEvent(edge:Edge, node:Node):Void
```

### fillLeftBelowEdgeEvent

```haxe
function fillLeftBelowEdgeEvent(edge:Edge, node:Node):Void
```

### fillLeftConvexEdgeEvent

```haxe
function fillLeftConvexEdgeEvent(edge:Edge, node:Node):Void
```

### fillLeftConcaveEdgeEvent

```haxe
function fillLeftConcaveEdgeEvent(edge:Edge, node:Node):Void
```

### flipEdgeEvent

```haxe
function flipEdgeEvent(ep:Point, eq:Point, t:Triangle, p:Point):Void
```

### nextFlipTriangle

```haxe
function nextFlipTriangle(o:Int, t:Triangle, ot:Triangle, p:Point, op:Point):Triangle
```

### flipScanEdgeEvent

```haxe
function flipScanEdgeEvent(ep:Point, eq:Point, flip_triangle:Triangle, t:Triangle, p:Point):Void
```
