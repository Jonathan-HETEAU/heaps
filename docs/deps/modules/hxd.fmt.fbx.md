# Package `hxd.fmt.fbx`

[← retour](../DEPENDENCIES.md)

## hxd.fmt.fbx.BaseLibrary

- Fichier : `hxd/fmt/fbx/BaseLibrary.hx` — 1695 lignes — 11 blocs doc — contient du `#if`
- Types : `class TmpObject`, `class AnimCurve`, `class DefaultMatrixes`, `class BaseLibrary`
- Dépend de : `h3d.Matrix`, `h3d.Quat`, `h3d.Vector`, `h3d.anim.Animation`, `h3d.anim.LinearAnimation`, `h3d.anim.Skin`, `h3d.col.Point` (import/use), `h3d.scene.Object`, `hxd.Math`, `hxd.fmt.fbx.Data` (use/using), `hxd.fmt.fbx.Geometry`, `hxd.fmt.fbx.Parser`
- Utilisé par : `hxd.fmt.fbx.Geometry`, `hxd.fmt.fbx.HMDOut`

## hxd.fmt.fbx.Data

- Fichier : `hxd/fmt/fbx/Data.hx` — 169 lignes — 0 blocs doc
- Types : `enum FbxProp`, `typedef FbxNode`, `class FbxTools`
- Utilisé par : `hxd.fmt.fbx.BaseLibrary`, `hxd.fmt.fbx.Filter`, `hxd.fmt.fbx.Geometry`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.fbx.Parser`, `hxd.fmt.fbx.Writer`, `hxd.fs.Convert`

## hxd.fmt.fbx.Filter

- Fichier : `hxd/fmt/fbx/Filter.hx` — 65 lignes — 0 blocs doc
- Types : `class Filter`
- Dépend de : `hxd.fmt.fbx.Data` (use/using)

## hxd.fmt.fbx.Geometry

- Fichier : `hxd/fmt/fbx/Geometry.hx` — 302 lignes — 1 blocs doc
- Types : `class Geometry`
- Dépend de : `h3d.Matrix`, `h3d.Vector`, `h3d.col.Point`, `hxd.Math`, `hxd.fmt.fbx.BaseLibrary`, `hxd.fmt.fbx.Data` (use/using)
- Utilisé par : `hxd.fmt.fbx.BaseLibrary`, `hxd.fmt.fbx.HMDOut`

## hxd.fmt.fbx.HMDOut

- Fichier : `hxd/fmt/fbx/HMDOut.hx` — 1838 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef CollideParams`, `typedef ShapeColliderParams`, `enum_abstract ShapeColliderType`, `class HMDOut`
- Héritage : `HMDOut` extends `BaseLibrary`
- Dépend de : `h3d.Matrix`, `h3d.Quat`, `h3d.Vector`, `h3d.anim.Animation`, `h3d.anim.LinearAnimation`, `h3d.anim.Skin`, `h3d.col.Bounds`, `h3d.col.Point`, `h3d.prim.Polygon`, `hxd.BufferFormat` (import/use), `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.Math`, `hxd.fmt.fbx.BaseLibrary` (extends/import/use), `hxd.fmt.fbx.Data` (use/using), `hxd.fmt.fbx.Geometry`, `hxd.fmt.hmd.Data` (import/use), `hxd.impl.TypedArray`, `hxd.tools.MeshOptimizer`, `hxd.tools.Mikktspace`
- Utilisé par : `hxd.fmt.hmd.Data`, `hxd.fmt.hmd.Dump`, `hxd.fs.Convert`

## hxd.fmt.fbx.Parser

- Fichier : `hxd/fmt/fbx/Parser.hx` — 528 lignes — 0 blocs doc — contient du `#if`
- Types : `enum Token`, `class Parser`
- Dépend de : `hxd.fmt.fbx.Data` (use/using)
- Utilisé par : `hxd.fmt.fbx.BaseLibrary`, `hxd.fs.Convert`

## hxd.fmt.fbx.Writer

- Fichier : `hxd/fmt/fbx/Writer.hx` — 957 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef ExportParams`, `class Writer`
- Dépend de : `h3d.Quat`, `h3d.prim.Cube`, `h3d.prim.HMDModel`, `h3d.prim.Polygon`, `h3d.prim.Primitive`, `h3d.scene.Box`, `h3d.scene.Interactive`, `h3d.scene.Mesh`, `h3d.scene.MultiMaterial`, `h3d.scene.Object`, `hxd.BufferFormat`, `hxd.File`, `hxd.Math`, `hxd.fmt.fbx.Data` (import/use), `hxd.fmt.hmd.Data` (import), `hxd.fmt.hmd.Library`
