# hxd.poly2tri.SweepContext

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/SweepContext.hx`](../../../../../hxd/poly2tri/SweepContext.hx)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### triangles

```haxe
var triangles:Array<Triangle>
```

### points

```haxe
var points:Array<Point>
```

### edge_list

```haxe
var edge_list:Array<Edge>
```

### front

```haxe
var front:AdvancingFront
```

### head

```haxe
var head:Point
```

### tail

```haxe
var tail:Point
```

### basin

```haxe
var basin:Basin
```

### edge_event

```haxe
var edge_event:EdgeEvent
```

## Methods

### addPolyline

```haxe
function addPolyline(polyline:Array<Point>):Void
```

### addToMap

```haxe
function addToMap(triangle:Triangle):Void
```

### initTriangulation

```haxe
function initTriangulation():Void
```

### locateNode

```haxe
function locateNode(point:Point):Node
```

### createAdvancingFront

```haxe
function createAdvancingFront():Void
```

### removeNode

```haxe
function removeNode(node:Node):Void
```

### mapTriangleToNodes

```haxe
function mapTriangleToNodes(triangle:Triangle):Void
```

### meshClean

```haxe
function meshClean(t:Triangle):Void
```
