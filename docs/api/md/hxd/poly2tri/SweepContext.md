# hxd.poly2tri.SweepContext

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/SweepContext.hx`](../../../../../hxd/poly2tri/SweepContext.hx)

The state of a triangulation: the points, the constrained edges, the advancing front and the resulting triangles.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty context.

## Variables

### triangles

```haxe
var triangles:Array<Triangle>
```

The resulting triangles.

### points

```haxe
var points:Array<Point>
```

The points, sorted before the triangulation.

### edge_list

```haxe
var edge_list:Array<Edge>
```

The constrained edges.

### front

```haxe
var front:AdvancingFront
```

The advancing front.

### head

```haxe
var head:Point
```

The artificial point at the bottom left of the initial triangle.

### tail

```haxe
var tail:Point
```

The artificial point at the bottom right of the initial triangle.

### basin

```haxe
var basin:Basin
```

The basin being filled.

### edge_event

```haxe
var edge_event:EdgeEvent
```

The constrained edge being inserted.

## Methods

### addPolyline

```haxe
function addPolyline(polyline:Array<Point>):Void
```

Adds a closed polyline: its points and its edges.

### addToMap

```haxe
function addToMap(triangle:Triangle):Void
```

Adds a triangle to the map of the triangles.

### initTriangulation

```haxe
function initTriangulation():Void
```

Sorts the points and creates the artificial points enclosing them.

### locateNode

```haxe
function locateNode(point:Point):Node
```

Returns the front node at the X coordinate of the point.

### createAdvancingFront

```haxe
function createAdvancingFront():Void
```

Creates the initial triangle and advancing front.

### removeNode

```haxe
function removeNode(node:Node):Void
```

Removes a node from the front.

### mapTriangleToNodes

```haxe
function mapTriangleToNodes(triangle:Triangle):Void
```

Updates the triangles of the front nodes after the triangle was created.

### meshClean

```haxe
function meshClean(t:Triangle):Void
```

Collects the triangles inside the polygon, starting from the triangle.
