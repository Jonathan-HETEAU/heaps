# Package `hxd.fmt.hmd`

[← retour](../DEPENDENCIES.md)

## hxd.fmt.hmd.Data

- Fichier : `hxd/fmt/hmd/Data.hx` — 602 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef GeometryDataFormat`, `typedef GeometryFormat`, `typedef DataPosition`, `typedef Index`, `enum Property`, `typedef Properties`, `enum_abstract ColliderType`, `class Position`, `class Geometry`, `class BlendShape`, `enum ResolveResult`, `class Collider`, `typedef ConvexHullParams`, `class ConvexHullsCollider`, `class MeshCollider`, `class GroupCollider`, `class SphereCollider`, `class BoxCollider`, `class CapsuleCollider`, `class CylinderCollider`, `class EmptyCollider`, `class Material`, `class SkinJoint`, `class SkinSplit`, `class Skin`, `class Model`, `enum AnimationFlag`, `class AnimationObject`, `class AnimationEvent`, `class Animation`, `class Data`
- Héritage : `ConvexHullsCollider` extends `Collider`, `MeshCollider` extends `Collider`, `GroupCollider` extends `Collider`, `SphereCollider` extends `Collider`, `BoxCollider` extends `Collider`, `CapsuleCollider` extends `Collider`, `CylinderCollider` extends `Collider`, `EmptyCollider` extends `Collider`
- Dépend de : `h3d.Matrix`, `h3d.Quat`, `h3d.Vector`, `h3d.col.Bounds`, `h3d.col.Point`, `h3d.mat.BlendMode`, `hxd.BufferFormat`, `hxd.Math`, `hxd.fmt.fbx.HMDOut` (import/use), `hxd.tools.VHACD`
- Utilisé par : `h3d.prim.Blendshape`, `h3d.prim.ColliderData`, `h3d.prim.HMDModel`, `h3d.scene.World`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.fbx.Writer`, `hxd.fmt.hmd.Dump`, `hxd.fmt.hmd.Library`, `hxd.fmt.hmd.Reader`, `hxd.fmt.hmd.Writer`

## hxd.fmt.hmd.Dump

- Fichier : `hxd/fmt/hmd/Dump.hx` — 279 lignes — 0 blocs doc — contient du `#if`
- Types : `class Dump`
- Dépend de : `h3d.anim.Animation`, `hxd.Math`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.hmd.Data` (import/use), `hxd.fmt.hmd.Reader`, `hxd.fmt.hmd.Writer`

## hxd.fmt.hmd.Library

- Fichier : `hxd/fmt/hmd/Library.hx` — 920 lignes — 0 blocs doc — contient du `#if`
- Types : `class FormatMap`, `class ContextShared`, `class GeometryBuffer`, `class Library`
- Héritage : `ContextShared` extends `hrt.prefab.ContextShared`
- Dépend de : `h3d.Vector`, `h3d.Vector4`, `h3d.anim.Animation`, `h3d.anim.BufferAnimation`, `h3d.anim.LinearAnimation`, `h3d.anim.Skin`, `h3d.col.Bounds`, `h3d.col.Point`, `h3d.mat.Material`, `h3d.mat.MaterialSetup`, `h3d.mat.Texture`, `h3d.prim.HMDModel` (import/use), `h3d.prim.ModelDatabase`, `h3d.scene.Mesh`, `h3d.scene.MultiMaterial`, `h3d.scene.Object`, `h3d.scene.Skin`, `h3d.shader.BaseMesh`, `h3d.shader.NormalMap`, `h3d.shader.SpecularTexture`, `h3d.shader.Texture`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.Math`, `hxd.fmt.hmd.Data` (import/use), `hxd.impl.Float32`, `hxd.impl.TypedArray`, `hxd.res.Loader`, `hxd.res.Resource`
- Utilisé par : `h3d.prim.ColliderData`, `h3d.prim.HMDModel`, `h3d.prim.ModelCache`, `hxd.fmt.fbx.Writer`, `hxd.res.Model`

## hxd.fmt.hmd.Reader

- Fichier : `hxd/fmt/hmd/Reader.hx` — 359 lignes — 0 blocs doc
- Types : `class Reader`
- Dépend de : `h2d.BlendMode`, `h3d.Vector`, `h3d.col.Bounds`, `h3d.mat.Data`, `hxd.BufferFormat`, `hxd.fmt.hmd.Data` (import/use)
- Utilisé par : `hxd.fmt.hmd.Dump`, `hxd.res.Model`

## hxd.fmt.hmd.Writer

- Fichier : `hxd/fmt/hmd/Writer.hx` — 307 lignes — 0 blocs doc — contient du `#if`
- Types : `class Writer`
- Dépend de : `h3d.Vector`, `h3d.col.Bounds`, `hxd.BufferFormat`, `hxd.fmt.hmd.Data` (import/use)
- Utilisé par : `hxd.fmt.hmd.Dump`, `hxd.fs.Convert`
