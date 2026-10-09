# Package `h3d.col`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Bounds`](Bounds.md) | class | An axis aligned bounding box (AABB), defined by its minimum and maximum coordinates. |
| [`Capsule`](Capsule.md) | class | A capsule collider: the points closer than `r` to the segment `a`-`b`. |
| [`Collider`](Collider.md) | class | Base class of the collision shapes, used for picking (see `h3d.scene.Interactive`), culling and simple collision tests. |
| [`Cylinder`](Cylinder.md) | class | A cylinder collider of radius `r` between the centers of its two caps `a` and `b`. |
| [`FPoint`](FPoint.md) | class | A 3D point stored with 32-bit floats (smaller in memory than `Point`). |
| [`Frustum`](Frustum.md) | class | A view frustum (the volume seen by a camera), made of 6 planes, used for culling. |
| [`GroupCollider`](GroupCollider.md) | class | A collider made of several colliders: it is hit if any of them is hit. |
| [`HeightMap`](HeightMap.md) | class | This is an helper class to define a heightmap-based collider. |
| [`IPoint`](IPoint.md) | class | A 3D point with integer coordinates. |
| [`InsideCollider`](InsideCollider.md) | class | Wraps a collider so that a ray starting inside it hits it at distance 0, instead of missing it. |
| [`ObjectCollider`](ObjectCollider.md) | class | A collider following an object: the shape `collider`, in the object local space, is transformed by the current absolute transform of `obj` for each test. |
| [`OptimizedCollider`](OptimizedCollider.md) | class | A collider tested in two steps: the fast shape `a` (usually bounds) first, then the precise shape `b` only if `a` is hit. |
| [`OrientedBounds`](OrientedBounds.md) | class | An oriented bounding box (OBB): a box of half sizes `hx`, `hy`, `hz` around a center, with any rotation. |
| [`Plane`](Plane.md) | class | A plane of equation `nx * x + ny * y + nz * z = d`, where `(nx, ny, nz)` is its normal. |
| [`Point`](Point.md) | typedef | A 3D point: an alias for `h3d.Vector`. |
| [`Polygon`](Polygon.md) | class | A triangle mesh collider (a list of `TriPlane`), precise but slower than simple shapes. |
| [`PolygonBuffer`](PolygonBuffer.md) | class | A triangle mesh collider reading its triangles directly from vertex and index buffers (no preprocessing). |
| [`Ray`](Ray.md) | class | A ray: an origin and a direction (normalized when created with `fromPoints` or `fromValues`). |
| [`Seg`](Seg.md) | class | A segment between two points. |
| [`SkinCollider`](SkinCollider.md) | class | A collider following the deformation of a skinned mesh: its triangles are transformed by the current pose of the skin when tested. |
| [`SkinColliderDebugObj`](SkinColliderDebugObj.md) | class | The debug display of a `SkinCollider`. |
| [`Sphere`](Sphere.md) | class | A sphere collider, defined by its center and radius. |
| [`TransformCollider`](TransformCollider.md) | class | A collider whose shape is transformed by a fixed matrix. |
| [`TriPlane`](TriPlane.md) | class | A triangle collider, part of a `Polygon` (linked list of triangles). |
