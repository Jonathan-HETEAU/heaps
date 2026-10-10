# Package `hxd.clipper`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`ClipType`](ClipType.md) | enum | The boolean operation of `Clipper.execute`, between the subject and the clip polygons. |
| [`Clipper`](Clipper.md) | class | Polygon clipping (Angus Johnson's Clipper library 5.1.6): intersection, union, difference and xor of polygons with integer coordinates. |
| [`ClipperOffset`](ClipperOffset.md) | class | Offsets (grows or shrinks) polygons and paths. |
| [`EndType`](EndType.md) | enum | How the ends of the paths are handled by `ClipperOffset`: closed polygons, closed lines, or open paths with butt, square or round ends. |
| [`JoinType`](JoinType.md) | enum | How the corners are joined by `ClipperOffset`: square, round or mitered. |
| [`NodeType`](NodeType.md) | enum | The kind of polygon tree nodes to output: any, open or closed paths. |
| [`PolyFillType`](PolyFillType.md) | enum | The filling rule deciding which regions are inside the polygons, from their winding numbers. |
| [`PolyType`](PolyType.md) | enum | The role of a polygon added to `Clipper`: subject or clip. |
| [`Rect`](Rect.md) | class | An integer rectangle. |
| [`ResultKind`](ResultKind.md) | enum | The polygons kept in the result: all of them, only the outer polygons, or only the holes. |
