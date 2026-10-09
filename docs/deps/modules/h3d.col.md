# Package `h3d.col`

[← retour](../DEPENDENCIES.md)

## h3d.col.Bounds

- Fichier : `h3d/col/Bounds.hx` — 443 lignes — 1 blocs doc — contient du `#if`
- Types : `class Bounds`
- Héritage : `Bounds` extends `Collider`
- Dépend de : `h3d.Matrix`, `h3d.col.Collider` (extends/use), `h3d.col.Frustum`, `h3d.col.Plane`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.col.Sphere`, `h3d.prim.Cube`, `h3d.scene.Mesh`, `h3d.scene.Object`, `hxd.Math` (import/use)
- Utilisé par : `h3d.Camera`, `h3d.anim.Skin`, `h3d.col.Frustum`, `h3d.col.Polygon`, `h3d.col.PolygonBuffer`, `h3d.col.Ray`, `h3d.col.SkinCollider`, `h3d.mat.Defaults`, `h3d.parts.GpuParticles`, `h3d.pass.CascadeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.prim.BatchPrimitive`, `h3d.prim.BigPrimitive`, `h3d.prim.ColliderData`, `h3d.prim.Cube`, `h3d.prim.DynamicPrimitive`, `h3d.prim.Instanced`, `h3d.prim.Polygon`, `h3d.prim.Primitive`, `h3d.prim.Quads`, `h3d.prim.RawPrimitive`, `h3d.scene.Batcher`, `h3d.scene.Box`, `h3d.scene.HierarchicalWorld`, `h3d.scene.Mesh`, `h3d.scene.MeshBatch`, `h3d.scene.Object`, `h3d.scene.Skin`, `h3d.scene.World`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.hmd.Data`, `hxd.fmt.hmd.Library`, `hxd.fmt.hmd.Reader`, `hxd.fmt.hmd.Writer`

## h3d.col.Capsule

- Fichier : `h3d/col/Capsule.hx` — 112 lignes — 0 blocs doc — contient du `#if`
- Types : `class Capsule`
- Héritage : `Capsule` extends `Collider`
- Dépend de : `h3d.Matrix`, `h3d.col.Collider` (extends/use), `h3d.col.Frustum`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.col.Seg`, `h3d.col.Sphere`, `h3d.prim.Cylinder`, `h3d.prim.Sphere`, `h3d.scene.Mesh`, `h3d.scene.Object`, `hxd.Math`
- Utilisé par : `h3d.prim.ColliderData`

## h3d.col.Collider

- Fichier : `h3d/col/Collider.hx` — 159 lignes — 1 blocs doc — contient du `#if`
- Types : `class Collider`, `class OptimizedCollider`, `class GroupCollider`
- Héritage : `OptimizedCollider` extends `Collider`, `GroupCollider` extends `Collider`
- Dépend de : `h3d.Matrix`, `h3d.col.Frustum`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.col.Sphere`, `h3d.scene.Object`
- Utilisé par : `h3d.col.Bounds`, `h3d.col.Capsule`, `h3d.col.Cylinder`, `h3d.col.HeightMap`, `h3d.col.InsideCollider`, `h3d.col.ObjectCollider`, `h3d.col.OrientedBounds`, `h3d.col.Polygon`, `h3d.col.PolygonBuffer`, `h3d.col.SkinCollider`, `h3d.col.Sphere`, `h3d.col.TransformCollider`, `h3d.pass.CapsuleShadowMap`, `h3d.pass.CubeShadowMap`, `h3d.pass.PointShadowMap`, `h3d.pass.Shadows`, `h3d.prim.Capsule`, `h3d.prim.ColliderData`, `h3d.prim.Cube`, `h3d.prim.Cylinder`, `h3d.prim.HMDModel`, `h3d.prim.ModelCache`, `h3d.prim.Polygon`, `h3d.prim.Primitive`, `h3d.prim.Sphere`, `h3d.scene.Interactive`, `h3d.scene.Mesh`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `h3d.scene.Scene`, `h3d.scene.Skin`, `h3d.scene.pbr.Renderer`

## h3d.col.Cylinder

- Fichier : `h3d/col/Cylinder.hx` — 113 lignes — 0 blocs doc — contient du `#if`
- Types : `class Cylinder`
- Héritage : `Cylinder` extends `Collider`
- Dépend de : `h3d.Matrix`, `h3d.col.Collider` (extends/use), `h3d.col.Frustum`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.col.Sphere`, `h3d.prim.Cylinder`, `h3d.prim.Disc`, `h3d.scene.Mesh`, `h3d.scene.Object`, `hxd.Math`
- Utilisé par : `h3d.prim.ColliderData`, `h3d.prim.Cylinder`

## h3d.col.FPoint

- Fichier : `h3d/col/FPoint.hx` — 63 lignes — 0 blocs doc
- Types : `class FPoint`
- Dépend de : `hxd.Math` (use/using), `hxd.impl.Float32`
- Utilisé par : `h3d.col.PolygonBuffer`

## h3d.col.Frustum

- Fichier : `h3d/col/Frustum.hx` — 186 lignes — 0 blocs doc
- Types : `class Frustum`
- Dépend de : `h3d.Matrix`, `h3d.Vector`, `h3d.col.Bounds`, `h3d.col.OrientedBounds`, `h3d.col.Plane`, `h3d.col.Point`, `h3d.col.Sphere`
- Utilisé par : `h3d.Camera`, `h3d.col.Bounds`, `h3d.col.Capsule`, `h3d.col.Collider`, `h3d.col.Cylinder`, `h3d.col.HeightMap`, `h3d.col.InsideCollider`, `h3d.col.ObjectCollider`, `h3d.col.OrientedBounds`, `h3d.col.Polygon`, `h3d.col.PolygonBuffer`, `h3d.col.Sphere`, `h3d.col.TransformCollider`, `h3d.pass.CascadeShadowMap`, `h3d.scene.RenderContext`, `h3d.scene.pbr.CapsuleLight`, `h3d.scene.pbr.Light`, `h3d.scene.pbr.PointLight`, `h3d.scene.pbr.RectangleLight`, `h3d.scene.pbr.SpotLight`

## h3d.col.HeightMap

- Fichier : `h3d/col/HeightMap.hx` — 95 lignes — 4 blocs doc — contient du `#if`
- Types : `class HeightMap`
- Héritage : `HeightMap` extends `Collider`
- Dépend de : `h3d.Matrix`, `h3d.col.Collider` (extends/use), `h3d.col.Frustum`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.col.Sphere`, `h3d.scene.Object`

## h3d.col.IPoint

- Fichier : `h3d/col/IPoint.hx` — 87 lignes — 0 blocs doc — contient du `#if`
- Types : `class IPoint`
- Dépend de : `h2d.impl.PointApi`, `hxd.Math` (use/using)
- Utilisé par : `h3d.mat.noise.WorleyNoise`

## h3d.col.InsideCollider

- Fichier : `h3d/col/InsideCollider.hx` — 48 lignes — 1 blocs doc — contient du `#if`
- Types : `class InsideCollider`
- Héritage : `InsideCollider` extends `Collider`
- Dépend de : `h3d.Matrix`, `h3d.col.Collider` (extends/use), `h3d.col.Frustum`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.col.Sphere`, `h3d.scene.Object`

## h3d.col.ObjectCollider

- Fichier : `h3d/col/ObjectCollider.hx` — 86 lignes — 0 blocs doc — contient du `#if`
- Types : `class ObjectCollider`
- Héritage : `ObjectCollider` extends `Collider`
- Dépend de : `h3d.Matrix`, `h3d.col.Collider` (extends/use), `h3d.col.Frustum`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.col.Sphere`, `h3d.scene.Object`, `hxd.Math`
- Utilisé par : `h3d.scene.Object`

## h3d.col.OrientedBounds

- Fichier : `h3d/col/OrientedBounds.hx` — 403 lignes — 0 blocs doc — contient du `#if`
- Types : `class OrientedBounds`
- Héritage : `OrientedBounds` extends `Collider`
- Dépend de : `h3d.Matrix`, `h3d.Vector`, `h3d.col.Collider` (extends/use), `h3d.col.Frustum`, `h3d.col.Plane`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.col.Sphere`, `h3d.scene.Graphics`, `hxd.Math`
- Utilisé par : `h3d.col.Frustum`, `h3d.prim.ColliderData`

## h3d.col.Plane

- Fichier : `h3d/col/Plane.hx` — 146 lignes — 3 blocs doc
- Types : `class Plane`
- Dépend de : `h3d.Matrix`, `h3d.Vector4`, `h3d.col.Point`, `hxd.Math` (import/use)
- Utilisé par : `h3d.col.Bounds`, `h3d.col.Frustum`, `h3d.col.OrientedBounds`, `h3d.col.Ray`, `h3d.pass.DirShadowMap`, `h3d.scene.RenderContext`, `h3d.scene.pbr.SpotLight`

## h3d.col.Point

- Fichier : `h3d/col/Point.hx` — 3 lignes — 0 blocs doc
- Types : `typedef Point`
- Dépend de : `h3d.Vector`
- Utilisé par : `h2d.col.Triangle`, `h3d.Camera`, `h3d.Quat`, `h3d.col.Bounds`, `h3d.col.Capsule`, `h3d.col.Collider`, `h3d.col.Cylinder`, `h3d.col.Frustum`, `h3d.col.HeightMap`, `h3d.col.InsideCollider`, `h3d.col.ObjectCollider`, `h3d.col.OrientedBounds`, `h3d.col.Plane`, `h3d.col.Polygon`, `h3d.col.PolygonBuffer`, `h3d.col.Ray`, `h3d.col.Seg`, `h3d.col.SkinCollider`, `h3d.col.Sphere`, `h3d.col.TransformCollider`, `h3d.mat.noise.WorleyNoise`, `h3d.parts.GpuParticles`, `h3d.pass.DirShadowMap`, `h3d.prim.BatchPrimitive`, `h3d.prim.BigPrimitive`, `h3d.prim.Capsule`, `h3d.prim.Cube`, `h3d.prim.Cylinder`, `h3d.prim.Disc`, `h3d.prim.GeoSphere`, `h3d.prim.Grid`, `h3d.prim.HMDModel`, `h3d.prim.Polygon`, `h3d.prim.Quads`, `h3d.prim.Sphere`, `h3d.scene.CameraController`, `h3d.scene.Graphics`, `h3d.scene.HierarchicalWorld`, `h3d.scene.Object`, `h3d.scene.Trail`, `h3d.scene.pbr.RectangleLight`, `h3d.scene.pbr.SpotLight`, `hxd.fmt.fbx.BaseLibrary`, `hxd.fmt.fbx.Geometry`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.hmd.Data`, `hxd.fmt.hmd.Library`

## h3d.col.Polygon

- Fichier : `h3d/col/Polygon.hx` — 428 lignes — 0 blocs doc — contient du `#if`
- Types : `class TriPlane`, `class Polygon`
- Héritage : `TriPlane` extends `Collider`, `Polygon` extends `Collider`
- Dépend de : `h2d.col.Polygon`, `h3d.Matrix`, `h3d.col.Bounds`, `h3d.col.Collider` (extends/use), `h3d.col.Frustum`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.col.Sphere`, `h3d.prim.Polygon`, `h3d.scene.Mesh`, `h3d.scene.Object`, `hxd.Math`, `hxd.impl.Float32`
- Utilisé par : `h3d.prim.Polygon`

## h3d.col.PolygonBuffer

- Fichier : `h3d/col/PolygonBuffer.hx` — 257 lignes — 0 blocs doc — contient du `#if`
- Types : `class PolygonBuffer`
- Héritage : `PolygonBuffer` extends `Collider`
- Dépend de : `h3d.Matrix`, `h3d.col.Bounds`, `h3d.col.Collider` (extends/use), `h3d.col.FPoint`, `h3d.col.Frustum`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.col.Sphere`, `h3d.prim.Polygon`, `h3d.scene.Mesh`, `h3d.scene.Object`, `hxd.IndexBuffer`, `hxd.Math`, `hxd.fs.FileEntry`, `hxd.impl.BitSet`, `hxd.impl.Float32`
- Utilisé par : `h3d.col.SkinCollider`, `h3d.prim.ColliderData`, `h3d.prim.HMDModel`, `h3d.scene.Skin`

## h3d.col.Ray

- Fichier : `h3d/col/Ray.hx` — 169 lignes — 0 blocs doc
- Types : `class Ray`
- Dépend de : `h3d.Matrix`, `h3d.Vector`, `h3d.col.Bounds`, `h3d.col.Plane`, `h3d.col.Point`, `hxd.Math` (import/use)
- Utilisé par : `h3d.Camera`, `h3d.col.Bounds`, `h3d.col.Capsule`, `h3d.col.Collider`, `h3d.col.Cylinder`, `h3d.col.HeightMap`, `h3d.col.InsideCollider`, `h3d.col.ObjectCollider`, `h3d.col.OrientedBounds`, `h3d.col.Polygon`, `h3d.col.PolygonBuffer`, `h3d.col.Sphere`, `h3d.col.TransformCollider`, `h3d.pass.DirShadowMap`, `h3d.scene.Interactive`, `h3d.scene.Scene`

## h3d.col.Seg

- Fichier : `h3d/col/Seg.hx` — 34 lignes — 0 blocs doc
- Types : `class Seg`
- Dépend de : `h3d.col.Point`, `hxd.Math` (import/use)
- Utilisé par : `h3d.col.Capsule`

## h3d.col.SkinCollider

- Fichier : `h3d/col/SkinCollider.hx` — 170 lignes — 0 blocs doc — contient du `#if`
- Types : `class SkinCollider`, `class SkinColliderDebugObj`
- Héritage : `SkinCollider` extends `Collider`, `SkinColliderDebugObj` extends `h3d.scene.Object`
- Dépend de : `h3d.Matrix`, `h3d.col.Bounds`, `h3d.col.Collider` (extends/use), `h3d.col.Point`, `h3d.col.PolygonBuffer`, `h3d.col.Sphere`, `h3d.scene.Box`, `h3d.scene.Object` (extends/use), `h3d.scene.RenderContext`, `h3d.scene.Skin`
- Utilisé par : `h3d.scene.Skin`

## h3d.col.Sphere

- Fichier : `h3d/col/Sphere.hx` — 125 lignes — 0 blocs doc — contient du `#if`
- Types : `class Sphere`
- Héritage : `Sphere` extends `Collider`
- Dépend de : `h3d.Matrix`, `h3d.col.Collider` (extends/use), `h3d.col.Frustum`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.prim.Sphere`, `h3d.scene.Mesh`, `h3d.scene.Object`, `hxd.Math`
- Utilisé par : `h3d.col.Bounds`, `h3d.col.Capsule`, `h3d.col.Collider`, `h3d.col.Cylinder`, `h3d.col.Frustum`, `h3d.col.HeightMap`, `h3d.col.InsideCollider`, `h3d.col.ObjectCollider`, `h3d.col.OrientedBounds`, `h3d.col.Polygon`, `h3d.col.PolygonBuffer`, `h3d.col.SkinCollider`, `h3d.col.TransformCollider`, `h3d.pass.CapsuleShadowMap`, `h3d.pass.PointShadowMap`, `h3d.prim.Capsule`, `h3d.prim.ColliderData`, `h3d.prim.Sphere`, `h3d.scene.fwd.LightSystem`, `h3d.scene.pbr.CapsuleLight`, `h3d.scene.pbr.PointLight`, `h3d.scene.pbr.RectangleLight`

## h3d.col.TransformCollider

- Fichier : `h3d/col/TransformCollider.hx` — 109 lignes — 0 blocs doc — contient du `#if`
- Types : `class TransformCollider`
- Héritage : `TransformCollider` extends `Collider`
- Dépend de : `h3d.Matrix`, `h3d.col.Collider` (extends/use), `h3d.col.Frustum`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.col.Sphere`, `h3d.scene.Object`, `hxd.Math`
- Utilisé par : `h3d.prim.ModelCache`, `h3d.scene.Skin`
