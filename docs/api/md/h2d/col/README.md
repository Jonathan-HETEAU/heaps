# Package `h2d.col`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Bounds`](Bounds.md) | class | A 2D bounding box often used for determining Object bounding area. |
| [`Cell`](Cell.md) | class | The resulting cell inside the Voronoi diagram. |
| [`Circle`](Circle.md) | class | The circular hitbox implementation of a 2D Collider. |
| [`Collider`](Collider.md) | class | A common interface for 2D Shapes to hit-test again the mouse or a specific point in space. |
| [`Delaunay`](Delaunay.md) | class | A Delaunay triangulation utility. |
| [`DelaunayTriangle`](DelaunayTriangle.md) | class | The resulting triangle of a Delaunay triangulation operation. |
| [`Diagram`](Diagram.md) | class | The resulting diagram of the `Voronoi.compute`. |
| [`Edge`](Edge.md) | class | The resulting edge inside the Voronoi diagram. |
| [`Halfedge`](Halfedge.md) | class | The edge attached to a Voronoi `Cell`. |
| [`IBounds`](IBounds.md) | class | An integer-based bounding box. |
| [`IPoint`](IPoint.md) | class | An integer-based point. |
| [`IPolygon`](IPolygon.md) | abstract | An abstract around an Array of `IPoint`s that define a polygonal shape that can be collision-tested against. |
| [`IPolygons`](IPolygons.md) | abstract | An abstract over an Array of `IPolygon` instances that define multiple polygonal shapes that can be collision-tested against. |
| [`Line`](Line.md) | class | An infinite 2D line going through two specified Points. |
| [`Matrix`](Matrix.md) | class | An affine 2D 2x3 matrix. |
| [`OffsetKind`](OffsetKind.md) | enum | The type of the edges when offsetting polygon with `IPolygon.offset`. |
| [`PixelsCollider`](PixelsCollider.md) | class | An `hxd.Pixels`-based collider. |
| [`Point`](Point.md) | abstract |  |
| [`PointImpl`](PointImpl.md) | class | A simple 2D position/vector container. |
| [`Polygon`](Polygon.md) | abstract | An abstract around an Array of `Point`s that define a polygonal shape that can be collision-tested against. |
| [`PolygonCollider`](PolygonCollider.md) | class | A `Collider` wrapper around `Polygons` to enable using those for hit-testing testing. |
| [`Polygons`](Polygons.md) | abstract | An abstract over an Array of `Polygon` instances that define multiple polygonal shapes that can be collision-tested against. |
| [`Polynomial`](Polynomial.md) | class | See `Polynomial.regress`. |
| [`Ray`](Ray.md) | class | A raycast from the given position in a specified direction. |
| [`RoundRect`](RoundRect.md) | class | A Collider representing the rectangle with the rounded edges, forming a 2D capsule. |
| [`Segment`](Segment.md) | class | A 2D line segment. |
| [`Segments`](Segments.md) | abstract | An abstract over the list of `Segment`s. |
| [`Triangle`](Triangle.md) | class | A simple triangle collider. |
| [`Voronoi`](Voronoi.md) | class | A Steven Fortune's algorithm to compute Voronoi diagram from given set of Points and a bounding box. |
