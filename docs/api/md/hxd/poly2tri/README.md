# Package `hxd.poly2tri`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AdvancingFront`](AdvancingFront.md) | class | The advancing front of the sweep line triangulation: a linked list of nodes along the upper boundary of the triangulated area. |
| [`Basin`](Basin.md) | class | A basin of the advancing front: a concave part that is filled with triangles. |
| [`Constants`](Constants.md) | class | The constants of the triangulation. |
| [`Edge`](Edge.md) | class | A constrained edge of the polygon to triangulate, oriented so that `q` is the upper point. |
| [`EdgeEvent`](EdgeEvent.md) | class | The constrained edge being inserted by the sweep. |
| [`Node`](Node.md) | class | A node of the advancing front. |
| [`Orientation`](Orientation.md) | class | The orientation of three points. |
| [`Point`](Point.md) | class | A point of the polygon to triangulate. |
| [`Sweep`](Sweep.md) | class | The sweep line algorithm of the constrained Delaunay triangulation (poly2tri). |
| [`SweepContext`](SweepContext.md) | class | The state of a triangulation: the points, the constrained edges, the advancing front and the resulting triangles. |
| [`Triangle`](Triangle.md) | class | A triangle of the triangulation, with its neighbors and edge flags. |
| [`Unit`](Unit.md) | typedef | The type of the point coordinates (`Int` with `-D fastPoly2tri`, `Float` otherwise). |
| [`Utils`](Utils.md) | class | Geometric tests of the triangulation. |
| [`VisiblePolygon`](VisiblePolygon.md) | class | Triangulates polygons with holes (constrained Delaunay triangulation with poly2tri). |
