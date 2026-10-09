# Package `h3d.prim`

[← retour](../DEPENDENCIES.md)

## h3d.prim.BatchPrimitive

- Fichier : `h3d/prim/BatchPrimitive.hx` — 564 lignes — 33 blocs doc — contient du `#if`
- Types : `class BytesArray`, `class SubMesh`, `class SubPart`, `class BatchPrimitive`
- Héritage : `BatchPrimitive` extends `MeshPrimitive`
- Dépend de : `h3d.Buffer`, `h3d.Engine`, `h3d.Indexes`, `h3d.col.Bounds`, `h3d.col.Point`, `h3d.prim.HMDModel`, `h3d.prim.MeshPrimitive` (extends/use), `h3d.prim.Polygon`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.Math`
- Utilisé par : `h3d.scene.Batcher`

## h3d.prim.BigPrimitive

- Fichier : `h3d/prim/BigPrimitive.hx` — 344 lignes — 14 blocs doc — contient du `#if`
- Types : `class BigPrimitive`
- Héritage : `BigPrimitive` extends `Primitive`
- Dépend de : `h3d.Buffer`, `h3d.Engine`, `h3d.Indexes`, `h3d.Matrix`, `h3d.col.Bounds`, `h3d.col.Point`, `h3d.prim.Primitive` (extends/use), `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.impl.AllocPos`, `hxd.impl.Allocator`, `hxd.impl.Float32`
- Utilisé par : `h3d.scene.Graphics`, `h3d.scene.World`

## h3d.prim.Blendshape

- Fichier : `h3d/prim/Blendshape.hx` — 390 lignes — 18 blocs doc — contient du `#if`
- Types : `class BlendshapeInstance`, `class Blendshape`
- Dépend de : `h3d.Buffer`, `h3d.Engine`, `h3d.prim.HMDModel`, `h3d.scene.Mesh`, `h3d.shader.Blendshape`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.Math`, `hxd.fmt.hmd.Data`, `hxd.impl.Allocator`
- Utilisé par : `h3d.prim.HMDModel`, `h3d.scene.Mesh`

## h3d.prim.Capsule

- Fichier : `h3d/prim/Capsule.hx` — 148 lignes — 4 blocs doc
- Types : `enum_abstract Axis`, `class Capsule`
- Héritage : `Capsule` extends `Polygon`
- Dépend de : `h3d.Engine`, `h3d.col.Collider`, `h3d.col.Point` (import/use), `h3d.col.Sphere`, `h3d.prim.Polygon` (extends/use), `hxd.IndexBuffer`
- Utilisé par : `h3d.prim.ColliderData`, `h3d.scene.pbr.CapsuleLight`

## h3d.prim.ColliderData

- Fichier : `h3d/prim/ColliderData.hx` — 148 lignes — 3 blocs doc
- Types : `class ColliderData`
- Dépend de : `h3d.Matrix`, `h3d.col.Bounds`, `h3d.col.Capsule`, `h3d.col.Collider`, `h3d.col.Cylinder`, `h3d.col.OrientedBounds`, `h3d.col.PolygonBuffer`, `h3d.col.Sphere`, `h3d.prim.Capsule`, `h3d.prim.Cylinder`, `h3d.prim.HMDModel`, `h3d.prim.Sphere`, `hxd.fmt.hmd.Data`, `hxd.fmt.hmd.Library` (import/use)
- Utilisé par : `h3d.prim.HMDModel`

## h3d.prim.Cube

- Fichier : `h3d/prim/Cube.hx` — 124 lignes — 4 blocs doc
- Types : `class Cube`
- Héritage : `Cube` extends `Polygon`
- Dépend de : `h3d.Engine`, `h3d.col.Bounds`, `h3d.col.Collider`, `h3d.col.Point` (import/use), `h3d.prim.Polygon` (extends/use), `h3d.prim.UV`, `hxd.IndexBuffer`
- Utilisé par : `h3d.col.Bounds`, `hxd.fmt.fbx.Writer`

## h3d.prim.Cylinder

- Fichier : `h3d/prim/Cylinder.hx` — 94 lignes — 3 blocs doc
- Types : `class Cylinder`
- Héritage : `Cylinder` extends `Quads`
- Dépend de : `h3d.Engine`, `h3d.col.Collider`, `h3d.col.Cylinder`, `h3d.col.Point` (import/use), `h3d.prim.Quads` (extends/use), `h3d.prim.UV`
- Utilisé par : `h3d.col.Capsule`, `h3d.col.Cylinder`, `h3d.prim.ColliderData`

## h3d.prim.Disc

- Fichier : `h3d/prim/Disc.hx` — 67 lignes — 5 blocs doc
- Types : `class Disc`
- Héritage : `Disc` extends `Polygon`
- Dépend de : `h3d.Engine`, `h3d.col.Point` (import/use), `h3d.prim.Polygon` (extends/use), `h3d.prim.UV`, `hxd.IndexBuffer`
- Utilisé par : `h3d.col.Cylinder`

## h3d.prim.DynamicPrimitive

- Fichier : `h3d/prim/DynamicPrimitive.hx` — 114 lignes — 8 blocs doc
- Types : `class DynamicPrimitive`
- Héritage : `DynamicPrimitive` extends `Primitive`
- Dépend de : `h3d.Engine`, `h3d.col.Bounds`, `h3d.prim.Primitive` (extends/use), `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.Math`, `hxd.impl.Allocator`
- Utilisé par : `h3d.scene.Trail`

## h3d.prim.GeoSphere

- Fichier : `h3d/prim/GeoSphere.hx` — 64 lignes — 2 blocs doc
- Types : `class GeoSphere`
- Héritage : `GeoSphere` extends `Polygon`
- Dépend de : `h3d.col.Point` (import/use), `h3d.prim.Polygon` (extends/use), `hxd.IndexBuffer`

## h3d.prim.Grid

- Fichier : `h3d/prim/Grid.hx` — 60 lignes — 6 blocs doc
- Types : `class Grid`
- Héritage : `Grid` extends `Polygon`
- Dépend de : `h3d.col.Point`, `h3d.prim.Polygon` (extends/use), `h3d.prim.UV`, `hxd.IndexBuffer`, `hxd.Math`

## h3d.prim.HMDModel

- Fichier : `h3d/prim/HMDModel.hx` — 415 lignes — 11 blocs doc
- Types : `class HMDModel`
- Héritage : `HMDModel` extends `MeshPrimitive`
- Dépend de : `h3d.Buffer`, `h3d.Engine`, `h3d.Indexes`, `h3d.Vector`, `h3d.col.Collider`, `h3d.col.Point`, `h3d.col.PolygonBuffer`, `h3d.prim.Blendshape`, `h3d.prim.ColliderData`, `h3d.prim.MeshPrimitive` (extends/use), `h3d.prim.Polygon`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.Math`, `hxd.fmt.hmd.Data`, `hxd.fmt.hmd.Library`
- Utilisé par : `h3d.prim.BatchPrimitive`, `h3d.prim.Blendshape`, `h3d.prim.ColliderData`, `h3d.prim.ModelDatabase`, `h3d.scene.Batcher`, `h3d.scene.GPUMeshBatch`, `h3d.scene.Mesh`, `h3d.scene.MeshBatch`, `h3d.scene.Skin`, `hxd.fmt.fbx.Writer`, `hxd.fmt.hmd.Library`

## h3d.prim.Instanced

- Fichier : `h3d/prim/Instanced.hx` — 109 lignes — 8 blocs doc
- Types : `class Instanced`
- Héritage : `Instanced` extends `Primitive`
- Dépend de : `h3d.Engine`, `h3d.Matrix`, `h3d.col.Bounds`, `h3d.impl.InstanceBuffer`, `h3d.prim.MeshPrimitive`, `h3d.prim.Primitive` (extends/use)
- Utilisé par : `h3d.pass.DirShadowMap`, `h3d.scene.MeshBatch`

## h3d.prim.MeshPrimitive

- Fichier : `h3d/prim/MeshPrimitive.hx` — 88 lignes — 5 blocs doc
- Types : `class MeshPrimitive`
- Héritage : `MeshPrimitive` extends `Primitive`
- Dépend de : `h3d.Buffer`, `h3d.Engine`, `h3d.prim.Primitive` (extends/use), `hxd.BufferFormat`
- Utilisé par : `h3d.prim.BatchPrimitive`, `h3d.prim.HMDModel`, `h3d.prim.Instanced`, `h3d.prim.Polygon`, `h3d.scene.AnimMeshBatcher`, `h3d.scene.MeshBatch`

## h3d.prim.ModelCache

- Fichier : `h3d/prim/ModelCache.hx` — 274 lignes — 13 blocs doc — contient du `#if`
- Types : `typedef HideProps`, `class ModelCache`
- Dépend de : `h3d.anim.Animation`, `h3d.col.Collider`, `h3d.col.TransformCollider`, `h3d.mat.Texture`, `h3d.scene.Object`, `hxd.fmt.hmd.Library`, `hxd.res.Loader`, `hxd.res.Model`, `hxd.res.NotFound`, `hxd.res.Prefab`

## h3d.prim.ModelDatabase

- Fichier : `h3d/prim/ModelDatabase.hx` — 417 lignes — 22 blocs doc — contient du `#if`
- Types : `typedef ModelDataInput`, `typedef ModelProps`, `class ModelDatabase`
- Dépend de : `h3d.Vector`, `h3d.anim.Skin`, `h3d.prim.HMDModel`, `h3d.scene.Skin`, `hxd.fs.FileConfig` (import/use), `hxd.fs.LocalFileSystem`, `hxd.res.Loader`, `hxd.res.NotFound`
- Utilisé par : `hxd.fmt.hmd.Library`, `hxd.fs.Convert`

## h3d.prim.Plane2D

- Fichier : `h3d/prim/Plane2D.hx` — 65 lignes — 3 blocs doc
- Types : `class Plane2D`
- Héritage : `Plane2D` extends `Primitive`
- Dépend de : `h3d.Buffer`, `h3d.Engine`, `h3d.prim.Primitive` (extends/use), `hxd.BufferFormat`, `hxd.FloatBuffer`
- Utilisé par : `h3d.pass.ScreenFx`

## h3d.prim.Polygon

- Fichier : `h3d/prim/Polygon.hx` — 390 lignes — 22 blocs doc
- Types : `typedef PolygonLod`, `class Polygon`
- Héritage : `Polygon` extends `MeshPrimitive`
- Dépend de : `h3d.Buffer`, `h3d.Engine`, `h3d.Indexes`, `h3d.col.Bounds`, `h3d.col.Collider`, `h3d.col.Point` (import/use), `h3d.col.Polygon`, `h3d.prim.MeshPrimitive` (extends/use), `h3d.prim.UV`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.impl.Float32`
- Utilisé par : `h3d.col.Polygon`, `h3d.col.PolygonBuffer`, `h3d.prim.BatchPrimitive`, `h3d.prim.Capsule`, `h3d.prim.Cube`, `h3d.prim.Disc`, `h3d.prim.GeoSphere`, `h3d.prim.Grid`, `h3d.prim.HMDModel`, `h3d.prim.Sphere`, `h3d.scene.Batcher`, `h3d.scene.pbr.RectangleLight`, `h3d.scene.pbr.SpotLight`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.fbx.Writer`

## h3d.prim.Primitive

- Fichier : `h3d/prim/Primitive.hx` — 169 lignes — 21 blocs doc
- Types : `class Primitive`
- Dépend de : `h3d.Buffer`, `h3d.Engine`, `h3d.Indexes`, `h3d.col.Bounds`, `h3d.col.Collider`
- Utilisé par : `h2d.Graphics`, `h2d.TileGroup`, `h3d.anim.Skin`, `h3d.parts.GpuParticles`, `h3d.pass.ScreenFx`, `h3d.prim.BigPrimitive`, `h3d.prim.DynamicPrimitive`, `h3d.prim.Instanced`, `h3d.prim.MeshPrimitive`, `h3d.prim.Plane2D`, `h3d.prim.Quads`, `h3d.prim.RawPrimitive`, `h3d.scene.Mesh`, `h3d.scene.pbr.Light`, `hxd.fmt.fbx.Writer`

## h3d.prim.Quads

- Fichier : `h3d/prim/Quads.hx` — 172 lignes — 6 blocs doc
- Types : `class Quads`
- Héritage : `Quads` extends `Primitive`
- Dépend de : `h3d.Buffer`, `h3d.Engine`, `h3d.Matrix`, `h3d.col.Bounds`, `h3d.col.Point` (import/use), `h3d.prim.Primitive` (extends/use), `h3d.prim.UV`, `hxd.BufferFormat`, `hxd.FloatBuffer`
- Utilisé par : `h3d.prim.Cylinder`

## h3d.prim.RawPrimitive

- Fichier : `h3d/prim/RawPrimitive.hx` — 66 lignes — 3 blocs doc
- Types : `class RawPrimitive`
- Héritage : `RawPrimitive` extends `Primitive`
- Dépend de : `h3d.Engine`, `h3d.col.Bounds`, `h3d.prim.Primitive` (extends/use), `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.impl.Allocator`
- Utilisé par : `h3d.parts.GpuParticles`, `h3d.pass.Border`

## h3d.prim.Sphere

- Fichier : `h3d/prim/Sphere.hx` — 97 lignes — 3 blocs doc
- Types : `class Sphere`
- Héritage : `Sphere` extends `Polygon`
- Dépend de : `h3d.Engine`, `h3d.col.Collider`, `h3d.col.Point` (import/use), `h3d.col.Sphere`, `h3d.prim.Polygon` (extends/use), `h3d.prim.UV`, `hxd.IndexBuffer`
- Utilisé par : `h3d.col.Capsule`, `h3d.col.Sphere`, `h3d.prim.ColliderData`, `h3d.scene.pbr.PointLight`

## h3d.prim.UV

- Fichier : `h3d/prim/UV.hx` — 36 lignes — 5 blocs doc
- Types : `class UV`
- Dépend de : `hxd.Math`
- Utilisé par : `h3d.parts.GpuParticles`, `h3d.prim.Cube`, `h3d.prim.Cylinder`, `h3d.prim.Disc`, `h3d.prim.Grid`, `h3d.prim.Polygon`, `h3d.prim.Quads`, `h3d.prim.Sphere`
