# hxd.poly2tri.VisiblePolygon

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/VisiblePolygon.hx`](../../../../../hxd/poly2tri/VisiblePolygon.hx)

Triangulates polygons with holes (constrained Delaunay triangulation with poly2tri). Add the outline and the holes with `addPolyline`, then call `performTriangulationOnce`.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty triangulation.

## Methods

### addPolyline

```haxe
function addPolyline(polyline:Array<Point>):Void
```

Adds a closed polyline: the outline, or a hole.

### reset

```haxe
function reset():Void
```

Removes the polylines and the result.

### performTriangulationOnce

```haxe
function performTriangulationOnce():Void
```

Triangulates the polylines, if not done yet.

### getVerticesAndTriangles

```haxe
function getVerticesAndTriangles():Null<{ vertices:Array<Float>, triangles:Array<Null<Int>> }>
```

Returns the vertices (X, Y and a `0` Z for each point) and the triangle indexes, or `null` before the triangulation.

### getNumTriangles

```haxe
function getNumTriangles():Int
```

Returns the number of triangles.
