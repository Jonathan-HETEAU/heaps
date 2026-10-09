# Package `h3d.anim`

[← retour](../DEPENDENCIES.md)

## h3d.anim.Animation

- Fichier : `h3d/anim/Animation.hx` — 375 lignes — 3 blocs doc — contient du `#if`
- Types : `class AnimatedObject`, `typedef Event`, `class Animation`
- Dépend de : `h3d.scene.Object`, `h3d.scene.Skin`
- Utilisé par : `h3d.anim.BlendSpace2D`, `h3d.anim.BufferAnimation`, `h3d.anim.LinearAnimation`, `h3d.anim.SimpleBlend`, `h3d.anim.SmoothTarget`, `h3d.anim.SmoothTransition`, `h3d.anim.Transition`, `h3d.prim.ModelCache`, `h3d.scene.AnimMeshBatcher`, `h3d.scene.Object`, `h3d.scene.Skin`, `hxd.fmt.fbx.BaseLibrary`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.hmd.Dump`, `hxd.fmt.hmd.Library`, `hxd.fs.Convert`

## h3d.anim.BlendSpace2D

- Fichier : `h3d/anim/BlendSpace2D.hx` — 546 lignes — 8 blocs doc
- Types : `class BlendSpace2D`, `class BlendSpace2DPoint`, `class BlendSpaceObject`
- Héritage : `BlendSpace2D` extends `h3d.anim.Animation`, `BlendSpaceObject` extends `h3d.anim.Animation.AnimatedObject`
- Dépend de : `h2d.col.Delaunay`, `h2d.col.Point`, `h2d.col.Triangle`, `h3d.Matrix`, `h3d.Quat`, `h3d.Vector`, `h3d.anim.Animation` (extends/use), `h3d.scene.Object`, `h3d.scene.Skin`, `hxd.Math`

## h3d.anim.BufferAnimation

- Fichier : `h3d/anim/BufferAnimation.hx` — 301 lignes — 0 blocs doc — contient du `#if`
- Types : `enum DataLayout`, `class BufferObject`, `class BufferAnimation`
- Héritage : `BufferObject` extends `AnimatedObject`, `BufferAnimation` extends `Animation`
- Dépend de : `h3d.Matrix`, `h3d.anim.Animation` (extends/import/use), `h3d.scene.Skin`, `h3d.shader.UVDelta`, `hxd.Math`, `hxd.impl.Float32` (import/use), `hxd.impl.TypedArray`
- Utilisé par : `hxd.fmt.hmd.Library`

## h3d.anim.LinearAnimation

- Fichier : `h3d/anim/LinearAnimation.hx` — 291 lignes — 0 blocs doc — contient du `#if`
- Types : `class LinearFrame`, `class LinearObject`, `class LinearAnimation`
- Héritage : `LinearObject` extends `AnimatedObject`, `LinearAnimation` extends `Animation`
- Dépend de : `h3d.Matrix`, `h3d.Quat`, `h3d.anim.Animation` (extends/import/use), `h3d.scene.Skin`, `h3d.shader.UVDelta`
- Utilisé par : `hxd.fmt.fbx.BaseLibrary`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.hmd.Library`

## h3d.anim.SimpleBlend

- Fichier : `h3d/anim/SimpleBlend.hx` — 51 lignes — 0 blocs doc
- Types : `class SimpleBlend`
- Héritage : `SimpleBlend` extends `Transition`
- Dépend de : `h3d.anim.Animation`, `h3d.anim.Transition` (extends/use)

## h3d.anim.Skin

- Fichier : `h3d/anim/Skin.hx` — 395 lignes — 1 blocs doc — contient du `#if`
- Types : `class Joint`, `class DynamicJoint`, `class Permut`, `class Influence`, `class Skin`
- Héritage : `DynamicJoint` extends `Joint`
- Dépend de : `h3d.Matrix`, `h3d.Vector`, `h3d.col.Bounds`, `h3d.prim.Primitive`, `h3d.scene.Skin`
- Utilisé par : `h3d.prim.ModelDatabase`, `h3d.scene.Skin`, `hxd.fmt.fbx.BaseLibrary`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.hmd.Library`

## h3d.anim.SmoothTarget

- Fichier : `h3d/anim/SmoothTarget.hx` — 224 lignes — 0 blocs doc — contient du `#if`
- Types : `class SmoothObject`, `class SmoothTarget`
- Héritage : `SmoothObject` extends `Animation.AnimatedObject`, `SmoothTarget` extends `Animation`
- Dépend de : `h3d.Matrix`, `h3d.Quat`, `h3d.anim.Animation` (extends/use), `h3d.scene.Object`, `hxd.Math` (import/use)

## h3d.anim.SmoothTransition

- Fichier : `h3d/anim/SmoothTransition.hx` — 152 lignes — 0 blocs doc
- Types : `class SmoothedObject`, `class SmoothTransition`
- Héritage : `SmoothedObject` extends `Animation.AnimatedObject`, `SmoothTransition` extends `Transition`
- Dépend de : `h3d.Matrix`, `h3d.Quat`, `h3d.anim.Animation`, `h3d.anim.Transition` (extends/use), `h3d.scene.Skin`

## h3d.anim.Transition

- Fichier : `h3d/anim/Transition.hx` — 76 lignes — 0 blocs doc — contient du `#if`
- Types : `class Transition`
- Héritage : `Transition` extends `Animation`
- Dépend de : `h3d.anim.Animation` (extends/use), `h3d.scene.Object`
- Utilisé par : `h3d.anim.SimpleBlend`, `h3d.anim.SmoothTransition`
