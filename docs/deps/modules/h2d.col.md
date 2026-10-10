# Package `h2d.col`

[← retour](../DEPENDENCIES.md)

## h2d.col.Bounds

- Fichier : `h2d/col/Bounds.hx` — 434 lignes — 42 blocs doc
- Types : `class Bounds`
- Héritage : `Bounds` extends `Collider`
- Dépend de : `h2d.col.Circle`, `h2d.col.Collider` (extends/use), `h2d.col.IBounds`, `h2d.col.Point`, `h2d.col.Ray`, `hxd.Math` (import/use)
- Utilisé par : `h2d.Anim`, `h2d.Bitmap`, `h2d.CdbLevel`, `h2d.Dropdown`, `h2d.Flow`, `h2d.HtmlText`, `h2d.Interactive`, `h2d.Mask`, `h2d.Object`, `h2d.ObjectFollower`, `h2d.RenderContext`, `h2d.Scene`, `h2d.Text`, `h2d.TextInput`, `h2d.TileGroup`, `h2d.Video`, `h2d.col.Circle`, `h2d.col.Collider`, `h2d.col.IBounds`, `h2d.col.PixelsCollider`, `h2d.col.Polygon`, `h2d.col.PolygonCollider`, `h2d.col.Polygons`, `h2d.col.RoundRect`, `h2d.col.Triangle`, `h2d.col.Voronoi`, `h2d.filter.Filter`, `h2d.filter.Group`

## h2d.col.Circle

- Fichier : `h2d/col/Circle.hx` — 115 lignes — 11 blocs doc
- Types : `class Circle`
- Héritage : `Circle` extends `Collider`
- Dépend de : `h2d.col.Bounds`, `h2d.col.Collider` (extends/use), `h2d.col.Point`, `hxd.Math` (import/use)
- Utilisé par : `h2d.col.Bounds`, `h2d.col.Collider`, `h2d.col.PixelsCollider`, `h2d.col.PolygonCollider`, `h2d.col.RoundRect`, `h2d.col.Triangle`, `h2d.col.Voronoi`

## h2d.col.Collider

- Fichier : `h2d/col/Collider.hx` — 21 lignes — 4 blocs doc
- Types : `class Collider`
- Dépend de : `h2d.col.Bounds`, `h2d.col.Circle`, `h2d.col.Point`
- Utilisé par : `h2d.Interactive`, `h2d.col.Bounds`, `h2d.col.Circle`, `h2d.col.PixelsCollider`, `h2d.col.PolygonCollider`, `h2d.col.RoundRect`, `h2d.col.Triangle`

## h2d.col.Delaunay

- Fichier : `h2d/col/Delaunay.hx` — 230 lignes — 7 blocs doc
- Types : `class DelaunayTriangle`, `class DelaunayEdge`, `class Delaunay`
- Dépend de : `h2d.col.Point`
- Utilisé par : `h3d.anim.BlendSpace2D`

## h2d.col.IBounds

- Fichier : `h2d/col/IBounds.hx` — 329 lignes — 35 blocs doc
- Types : `class IBounds`
- Dépend de : `h2d.col.Bounds`, `h2d.col.IPoint`, `hxd.Math` (import/use)
- Utilisé par : `h2d.col.Bounds`, `h2d.col.IPolygon`, `h2d.col.IPolygons`, `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.Driver`, `h3d.mat.Texture`

## h2d.col.IPoint

- Fichier : `h2d/col/IPoint.hx` — 148 lignes — 19 blocs doc — contient du `#if`
- Types : `class IPoint`
- Dépend de : `h2d.col.Point`, `h2d.impl.PointApi`, `hxd.Math` (import/use)
- Utilisé par : `h2d.col.IBounds`, `h2d.col.IPolygon`, `h2d.col.Point`, `hxd.clipper.Clipper`

## h2d.col.IPolygon

- Fichier : `h2d/col/IPolygon.hx` — 339 lignes — 22 blocs doc
- Types : `enum OffsetKind`, `abstract IPolygon`
- Dépend de : `h2d.col.IBounds`, `h2d.col.IPoint`, `h2d.col.IPolygons`, `h2d.col.Point`, `h2d.col.Polygon`, `hxd.Math` (import/use), `hxd.clipper.Clipper`, `hxd.impl.ArrayIterator`
- Utilisé par : `h2d.col.IPolygons`, `h2d.col.Polygon`, `hxd.clipper.Clipper`

## h2d.col.IPolygons

- Fichier : `h2d/col/IPolygons.hx` — 135 lignes — 12 blocs doc
- Types : `abstract IPolygons`
- Dépend de : `h2d.col.IBounds`, `h2d.col.IPolygon`, `h2d.col.Point`, `h2d.col.Polygons`, `hxd.Math` (import), `hxd.clipper.Clipper`, `hxd.impl.ArrayIterator`
- Utilisé par : `h2d.col.IPolygon`, `h2d.col.Polygons`, `hxd.clipper.Clipper`

## h2d.col.Line

- Fichier : `h2d/col/Line.hx` — 110 lignes — 11 blocs doc
- Types : `class Line`
- Dépend de : `h2d.col.Point`, `hxd.Math`

## h2d.col.Matrix

- Fichier : `h2d/col/Matrix.hx` — 362 lignes — 35 blocs doc
- Types : `class Matrix`
- Dépend de : `h2d.col.Point`, `hxd.Math` (import/use)
- Utilisé par : `h2d.col.Point`

## h2d.col.PixelsCollider

- Fichier : `h2d/col/PixelsCollider.hx` — 113 lignes — 13 blocs doc
- Types : `class PixelsCollider`
- Héritage : `PixelsCollider` extends `Collider`
- Dépend de : `h2d.col.Bounds`, `h2d.col.Circle`, `h2d.col.Collider` (extends/use), `h2d.col.Point`, `hxd.Pixels`

## h2d.col.Point

- Fichier : `h2d/col/Point.hx` — 277 lignes — 36 blocs doc — contient du `#if`
- Types : `class PointImpl`, `abstract Point`
- Dépend de : `h2d.col.IPoint`, `h2d.col.Matrix`, `h2d.impl.PointApi`, `hxd.Math` (import/use)
- Utilisé par : `h2d.Camera`, `h2d.Dropdown`, `h2d.Flow`, `h2d.Interactive`, `h2d.Object`, `h2d.RenderContext`, `h2d.Scene`, `h2d.TextInput`, `h2d.col.Bounds`, `h2d.col.Circle`, `h2d.col.Collider`, `h2d.col.Delaunay`, `h2d.col.IPoint`, `h2d.col.IPolygon`, `h2d.col.IPolygons`, `h2d.col.Line`, `h2d.col.Matrix`, `h2d.col.PixelsCollider`, `h2d.col.Polygon`, `h2d.col.PolygonCollider`, `h2d.col.Polygons`, `h2d.col.Ray`, `h2d.col.RoundRect`, `h2d.col.Segment`, `h2d.col.Segments`, `h2d.col.Triangle`, `h2d.col.Voronoi`, `h2d.domkit.Style`, `h2d.filter.Filter`, `h2d.filter.Group`, `h3d.Vector`, `h3d.anim.BlendSpace2D`, `h3d.scene.CameraController`, `h3d.scene.HierarchicalWorld`, `hxd.clipper.Clipper`

## h2d.col.Polygon

- Fichier : `h2d/col/Polygon.hx` — 525 lignes — 28 blocs doc
- Types : `abstract Polygon`
- Dépend de : `h2d.col.Bounds`, `h2d.col.IPolygon`, `h2d.col.Point`, `h2d.col.PolygonCollider`, `h2d.col.Polynomial`, `h2d.col.Ray`, `h2d.col.Segment`, `h2d.col.Segments`, `hxd.Math` (import/use), `hxd.earcut.Earcut`, `hxd.impl.ArrayIterator`
- Utilisé par : `h2d.col.IPolygon`, `h2d.col.Polygons`, `h2d.col.Segments`, `h3d.col.Polygon`

## h2d.col.PolygonCollider

- Fichier : `h2d/col/PolygonCollider.hx` — 47 lignes — 7 blocs doc
- Types : `class PolygonCollider`
- Héritage : `PolygonCollider` extends `Collider`
- Dépend de : `h2d.col.Bounds`, `h2d.col.Circle`, `h2d.col.Collider` (extends/use), `h2d.col.Point`, `h2d.col.Polygons`
- Utilisé par : `h2d.col.Polygon`, `h2d.col.Polygons`

## h2d.col.Polygons

- Fichier : `h2d/col/Polygons.hx` — 104 lignes — 11 blocs doc
- Types : `abstract Polygons`
- Dépend de : `h2d.col.Bounds`, `h2d.col.IPolygons`, `h2d.col.Point`, `h2d.col.Polygon`, `h2d.col.PolygonCollider`, `hxd.Math` (import/use), `hxd.impl.ArrayIterator`
- Utilisé par : `h2d.col.IPolygons`, `h2d.col.PolygonCollider`

## h2d.col.Polynomial

- Fichier : `h2d/col/Polynomial.hx` — 149 lignes — 2 blocs doc
- Types : `class Matrix`, `class QR`, `class Polynomial`
- Utilisé par : `h2d.Object`, `h2d.col.Polygon`, `h2d.filter.AbstractMask`, `h3d.Matrix`, `h3d.pass.ColorMatrix`

## h2d.col.Ray

- Fichier : `h2d/col/Ray.hx` — 86 lignes — 12 blocs doc
- Types : `class Ray`
- Dépend de : `h2d.col.Point`, `hxd.Math` (import/use)
- Utilisé par : `h2d.col.Bounds`, `h2d.col.Polygon`, `h2d.col.Segment`

## h2d.col.RoundRect

- Fichier : `h2d/col/RoundRect.hx` — 126 lignes — 11 blocs doc
- Types : `class RoundRect`
- Héritage : `RoundRect` extends `Collider`
- Dépend de : `h2d.col.Bounds`, `h2d.col.Circle`, `h2d.col.Collider` (extends/use), `h2d.col.Point`, `hxd.Math`

## h2d.col.Segment

- Fichier : `h2d/col/Segment.hx` — 142 lignes — 14 blocs doc
- Types : `class Segment`
- Dépend de : `h2d.col.Point`, `h2d.col.Ray`, `hxd.Math` (import/use)
- Utilisé par : `h2d.col.Polygon`, `h2d.col.Segments`

## h2d.col.Segments

- Fichier : `h2d/col/Segments.hx` — 89 lignes — 8 blocs doc
- Types : `abstract Segments`
- Dépend de : `h2d.col.Point`, `h2d.col.Polygon`, `h2d.col.Segment`, `hxd.Math` (import/use), `hxd.impl.ArrayIterator`
- Utilisé par : `h2d.col.Polygon`

## h2d.col.Triangle

- Fichier : `h2d/col/Triangle.hx` — 101 lignes — 12 blocs doc
- Types : `class Triangle`
- Héritage : `Triangle` extends `Collider`
- Dépend de : `h2d.col.Bounds`, `h2d.col.Circle`, `h2d.col.Collider` (extends/use), `h2d.col.Point`, `h3d.col.Point`
- Utilisé par : `h3d.anim.BlendSpace2D`

## h2d.col.Voronoi

- Fichier : `h2d/col/Voronoi.hx` — 1710 lignes — 34 blocs doc
- Types : `class RBNode`, `class RBTree`, `class Cell`, `class Edge`, `class Halfedge`, `class Diagram`, `class Beachsection`, `class CircleEvent`, `class Voronoi`
- Héritage : `Beachsection` extends `RBNode`, `CircleEvent` extends `RBNode`
- Dépend de : `h2d.col.Bounds`, `h2d.col.Circle`, `h2d.col.Point`, `hxd.Math` (import/use)
