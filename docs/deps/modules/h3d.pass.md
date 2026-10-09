# Package `h3d.pass`

[← retour](../DEPENDENCIES.md)

## h3d.pass.Blur

- Fichier : `h3d/pass/Blur.hx` — 202 lignes — 9 blocs doc
- Types : `class Blur`
- Héritage : `Blur` extends `ScreenFx`
- Dépend de : `h3d.Matrix`, `h3d.impl.RenderContext`, `h3d.mat.Texture`, `h3d.pass.Copy`, `h3d.pass.ScreenFx` (extends/use), `h3d.shader.Blur`, `hxd.Math`
- Utilisé par : `h2d.filter.Blur`, `h3d.pass.Shadows`, `h3d.scene.pbr.Renderer`

## h3d.pass.Border

- Fichier : `h3d/pass/Border.hx` — 77 lignes — 2 blocs doc
- Types : `class BorderShader`, `class Border`
- Héritage : `BorderShader` extends `h3d.shader.ScreenShader`, `Border` extends `ScreenFx`
- Dépend de : `h3d.pass.ScreenFx` (extends/use), `h3d.prim.RawPrimitive`, `h3d.shader.ScreenShader` (extends/use), `hxd.BufferFormat`, `hxd.FloatBuffer`

## h3d.pass.CapsuleShadowMap

- Fichier : `h3d/pass/CapsuleShadowMap.hx` — 66 lignes — 2 blocs doc
- Types : `class CapsuleShadowMap`
- Héritage : `CapsuleShadowMap` extends `CubeShadowMap`
- Dépend de : `h3d.col.Collider`, `h3d.col.Sphere`, `h3d.pass.CubeShadowMap` (extends/use), `h3d.pass.Shadows`, `h3d.scene.Light`, `h3d.scene.pbr.CapsuleLight`, `h3d.shader.PointShadow`
- Utilisé par : `h3d.scene.pbr.CapsuleLight`

## h3d.pass.CascadeShadowMap

- Fichier : `h3d/pass/CascadeShadowMap.hx` — 508 lignes — 30 blocs doc — contient du `#if`
- Types : `typedef CascadeParams`, `typedef CascadeCamera`, `class CascadeShadowMap`
- Héritage : `CascadeShadowMap` extends `Shadows`
- Dépend de : `h3d.Camera`, `h3d.Matrix`, `h3d.Vector`, `h3d.Vector4`, `h3d.col.Bounds`, `h3d.col.Frustum`, `h3d.mat.Texture`, `h3d.mat.TextureArray`, `h3d.pass.Copy`, `h3d.pass.PassList`, `h3d.pass.Shadows` (extends/use), `h3d.scene.Graphics`, `h3d.scene.Light`, `h3d.scene.MeshBatch`, `h3d.shader.CascadeShadow`, `hxd.Math`, `hxd.PixelFormat`
- Utilisé par : `h3d.scene.pbr.DirLight`, `h3d.scene.pbr.LightBuffer`, `h3d.scene.pbr.Renderer`

## h3d.pass.ColorMatrix

- Fichier : `h3d/pass/ColorMatrix.hx` — 97 lignes — 6 blocs doc
- Types : `class ColorMatrixShader`, `class ColorMatrix`
- Héritage : `ColorMatrixShader` extends `h3d.shader.ScreenShader`, `ColorMatrix` extends `ScreenFx`
- Dépend de : `h2d.col.Polynomial`, `h3d.Matrix`, `h3d.mat.Texture`, `h3d.pass.ScreenFx` (extends/use), `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h2d.filter.Ambient`, `h2d.filter.ColorMatrix`

## h3d.pass.Copy

- Fichier : `h3d/pass/Copy.hx` — 168 lignes — 10 blocs doc — contient du `#if`
- Types : `class Copy`, `class ArrayCopyShader`, `class ArrayCopy`, `class CopyShader`, `class Copy`
- Héritage : `ArrayCopyShader` extends `h3d.shader.ScreenShader`, `ArrayCopy` extends `ScreenFx`, `CopyShader` extends `h3d.shader.ScreenShader`, `Copy` extends `ScreenFx`
- Dépend de : `h3d.Engine`, `h3d.mat.BlendMode`, `h3d.mat.Pass`, `h3d.mat.Texture`, `h3d.mat.TextureArray`, `h3d.pass.ScreenFx` (extends/use), `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h2d.LoadingScene`, `h2d.filter.Bloom`, `h2d.filter.DropShadow`, `h2d.filter.Glow`, `h2d.filter.InnerGlow`, `h3d.impl.Upscaling`, `h3d.mat.Texture`, `h3d.mat.Texture3D`, `h3d.mat.TextureArray`, `h3d.pass.Blur`, `h3d.pass.CascadeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.MipMaps`, `h3d.pass.ProjectedShadowMap`, `h3d.pass.SSR`, `h3d.pass.ScreenFx`, `h3d.scene.Renderer`, `h3d.scene.pbr.Renderer`

## h3d.pass.CubeCopy

- Fichier : `h3d/pass/CubeCopy.hx` — 65 lignes — 4 blocs doc
- Types : `class CubeCopyShader`, `class CubeCopy`
- Héritage : `CubeCopyShader` extends `h3d.shader.ScreenShader`, `CubeCopy` extends `ScreenFx`
- Dépend de : `h3d.Engine`, `h3d.Matrix`, `h3d.mat.BlendMode`, `h3d.mat.Texture`, `h3d.pass.ScreenFx` (extends/use), `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h3d.mat.Texture`

## h3d.pass.CubeShadowMap

- Fichier : `h3d/pass/CubeShadowMap.hx` — 263 lignes — 4 blocs doc
- Types : `enum CubeFaceFlag`, `class CubeShadowMap`
- Héritage : `CubeShadowMap` extends `Shadows`
- Dépend de : `h3d.Camera`, `h3d.Matrix`, `h3d.Vector4`, `h3d.col.Collider`, `h3d.mat.Texture`, `h3d.pass.PassList`, `h3d.pass.PassObject`, `h3d.pass.ScreenFx`, `h3d.pass.Shadows` (extends/use), `h3d.scene.Light`, `h3d.shader.LinearShadowDepth`, `h3d.shader.MinMaxShader`, `hxd.Pixels`, `hxsl.ShaderList`
- Utilisé par : `h3d.pass.CapsuleShadowMap`, `h3d.pass.PointShadowMap`

## h3d.pass.DefaultShadowMap

- Fichier : `h3d/pass/DefaultShadowMap.hx` — 46 lignes — 3 blocs doc
- Types : `class DefaultShadowMap`
- Héritage : `DefaultShadowMap` extends `DirShadowMap`
- Dépend de : `h3d.Vector`, `h3d.mat.Texture`, `h3d.pass.DirShadowMap` (extends/use), `hxd.PixelFormat`, `hxsl.Channel`, `hxsl.Globals`
- Utilisé par : `h3d.scene.fwd.Renderer`

## h3d.pass.DirShadowMap

- Fichier : `h3d/pass/DirShadowMap.hx` — 416 lignes — 7 blocs doc — contient du `#if`
- Types : `class DirShadowMap`
- Héritage : `DirShadowMap` extends `Shadows`
- Dépend de : `h3d.Camera`, `h3d.Matrix`, `h3d.col.Bounds`, `h3d.col.Plane`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.mat.Texture`, `h3d.pass.Copy`, `h3d.pass.PassList`, `h3d.pass.ScreenFx`, `h3d.pass.Shadows` (extends/use), `h3d.prim.Instanced`, `h3d.scene.Graphics`, `h3d.scene.Light`, `h3d.scene.Object`, `h3d.shader.DirShadow`, `h3d.shader.MinMaxShader`, `hxd.Math`, `hxd.PixelFormat`, `hxd.Pixels`
- Utilisé par : `h3d.pass.DefaultShadowMap`, `h3d.scene.pbr.DirLight`

## h3d.pass.FXAA

- Fichier : `h3d/pass/FXAA.hx` — 69 lignes — 3 blocs doc
- Types : `class FXAAShader`, `class FXAA`
- Héritage : `FXAAShader` extends `h3d.shader.ScreenShader`, `FXAA` extends `ScreenFx`
- Dépend de : `h3d.mat.Texture`, `h3d.pass.ScreenFx` (extends/use), `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h3d.scene.pbr.Renderer`

## h3d.pass.Merge

- Fichier : `h3d/pass/Merge.hx` — 102 lignes — 7 blocs doc — contient du `#if`
- Types : `class Merge`, `class MergeShader`, `class Merge`
- Héritage : `MergeShader` extends `h3d.shader.ScreenShader`, `Merge` extends `ScreenFx`
- Dépend de : `h3d.Engine`, `h3d.mat.BlendMode`, `h3d.mat.Pass`, `h3d.mat.Texture`, `h3d.pass.ScreenFx` (extends/use), `h3d.shader.ScreenShader` (extends/use)

## h3d.pass.MipMaps

- Fichier : `h3d/pass/MipMaps.hx` — 84 lignes — 4 blocs doc
- Types : `class GenerateMipMapsShader`, `class MipMaps`
- Héritage : `GenerateMipMapsShader` extends `h3d.shader.ScreenShader`, `MipMaps` extends `ScreenFx`
- Dépend de : `h3d.Engine`, `h3d.mat.Texture` (import/use), `h3d.pass.Copy`, `h3d.pass.ScreenFx` (extends/use), `h3d.shader.ScreenShader` (extends/use)

## h3d.pass.Outline

- Fichier : `h3d/pass/Outline.hx` — 68 lignes — 8 blocs doc
- Types : `class Outline`
- Héritage : `Outline` extends `ScreenFx`
- Dépend de : `h3d.impl.RenderContext`, `h3d.mat.Texture`, `h3d.pass.ScreenFx` (extends/use), `h3d.shader.Outline2D`
- Utilisé par : `h2d.filter.Outline`

## h3d.pass.Output

- Fichier : `h3d/pass/Output.hx` — 151 lignes — 7 blocs doc — contient du `#if`
- Types : `class Output`
- Dépend de : `h3d.impl.SceneProf`, `h3d.mat.Pass`, `h3d.mat.Texture`, `h3d.pass.OutputShader`, `h3d.pass.PassList`, `h3d.pass.PassObject`, `h3d.pass.SortByMaterial`, `h3d.scene.RenderContext`, `hxsl.Globals`, `hxsl.ShaderList`
- Utilisé par : `h3d.pass.Shadows`, `h3d.scene.Renderer`, `h3d.scene.fwd.Renderer`, `h3d.scene.pbr.Renderer`

## h3d.pass.OutputShader

- Fichier : `h3d/pass/OutputShader.hx` — 41 lignes — 4 blocs doc
- Types : `class OutputShader`
- Dépend de : `hxsl.Cache`, `hxsl.Globals`, `hxsl.Output`, `hxsl.RuntimeShader`, `hxsl.ShaderList`
- Utilisé par : `h2d.RenderContext`, `h3d.pass.Output`, `h3d.pass.ScreenFx`

## h3d.pass.PassList

- Fichier : `h3d/pass/PassList.hx` — 184 lignes — 16 blocs doc
- Types : `class PassListIterator`, `class PassList`
- Dépend de : `h3d.pass.PassObject`
- Utilisé par : `h3d.pass.CascadeShadowMap`, `h3d.pass.CubeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.Output`, `h3d.pass.ProjectedShadowMap`, `h3d.pass.Shadows`, `h3d.pass.SortByMaterial`, `h3d.scene.Renderer`, `h3d.scene.pbr.LightSystem`, `h3d.scene.pbr.Renderer`

## h3d.pass.PassObject

- Fichier : `h3d/pass/PassObject.hx` — 42 lignes — 8 blocs doc
- Types : `class PassObject`
- Dépend de : `h3d.mat.Pass`, `h3d.scene.Object`, `hxsl.RuntimeShader`, `hxsl.ShaderList`
- Utilisé par : `h3d.pass.CubeShadowMap`, `h3d.pass.Output`, `h3d.pass.PassList`, `h3d.scene.RenderContext`

## h3d.pass.PointShadowMap

- Fichier : `h3d/pass/PointShadowMap.hx` — 66 lignes — 2 blocs doc
- Types : `class PointShadowMap`
- Héritage : `PointShadowMap` extends `CubeShadowMap`
- Dépend de : `h3d.col.Collider`, `h3d.col.Sphere`, `h3d.pass.CubeShadowMap` (extends/use), `h3d.pass.Shadows`, `h3d.scene.Light`, `h3d.scene.pbr.PointLight`, `h3d.shader.PointShadow`
- Utilisé par : `h3d.scene.pbr.PointLight`

## h3d.pass.ProjectedShadowMap

- Fichier : `h3d/pass/ProjectedShadowMap.hx` — 165 lignes — 2 blocs doc
- Types : `class ProjectedShadowMap`
- Héritage : `ProjectedShadowMap` extends `Shadows`
- Dépend de : `h3d.Camera`, `h3d.mat.Texture`, `h3d.pass.Copy`, `h3d.pass.PassList`, `h3d.pass.ScreenFx`, `h3d.pass.Shadows` (extends/use), `h3d.scene.Light`, `h3d.shader.MinMaxShader`, `h3d.shader.SpotShadow`, `hxd.Pixels`
- Utilisé par : `h3d.pass.RectangleShadowMap`, `h3d.pass.SpotShadowMap`

## h3d.pass.RectangleShadowMap

- Fichier : `h3d/pass/RectangleShadowMap.hx` — 36 lignes — 1 blocs doc
- Types : `class RectangleShadowMap`
- Héritage : `RectangleShadowMap` extends `ProjectedShadowMap`
- Dépend de : `h3d.pass.ProjectedShadowMap` (extends/use), `h3d.scene.pbr.RectangleLight`, `hxd.Math`
- Utilisé par : `h3d.scene.pbr.RectangleLight`

## h3d.pass.SSR

- Fichier : `h3d/pass/SSR.hx` — 229 lignes — 21 blocs doc
- Types : `class SSR`
- Héritage : `SSR` implements `h3d.impl.RendererFX`
- Dépend de : `h3d.Vector`, `h3d.impl.RendererFX` (implements/use), `h3d.mat.Texture`, `h3d.pass.Copy`, `h3d.pass.ScreenFx`, `h3d.scene.Renderer`, `h3d.scene.pbr.Renderer`, `h3d.shader.pbr.SSR`, `hxd.Window.js`

## h3d.pass.ScalableAO

- Fichier : `h3d/pass/ScalableAO.hx` — 35 lignes — 3 blocs doc
- Types : `class ScalableAO`
- Héritage : `ScalableAO` extends `h3d.pass.ScreenFx`
- Dépend de : `h3d.Camera`, `h3d.mat.Texture`, `h3d.pass.ScreenFx` (extends/use), `h3d.shader.SAO`

## h3d.pass.ScreenFx

- Fichier : `h3d/pass/ScreenFx.hx` — 120 lignes — 11 blocs doc
- Types : `class ScreenFx`
- Dépend de : `h3d.Engine`, `h3d.impl.RenderContext`, `h3d.mat.Pass`, `h3d.mat.Texture`, `h3d.pass.Copy`, `h3d.pass.OutputShader`, `h3d.prim.Plane2D`, `h3d.prim.Primitive`, `h3d.shader.ScreenShader`, `hxsl.Shader`, `hxsl.ShaderList`
- Utilisé par : `h2d.filter.Bloom`, `h2d.filter.Displacement`, `h2d.filter.InnerGlow`, `h2d.filter.Mask`, `h2d.filter.Shader`, `h2d.filter.ToneMapping`, `h3d.mat.Texture`, `h3d.mat.noise.WorleyNoise`, `h3d.pass.Blur`, `h3d.pass.Border`, `h3d.pass.ColorMatrix`, `h3d.pass.Copy`, `h3d.pass.CubeCopy`, `h3d.pass.CubeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.FXAA`, `h3d.pass.Merge`, `h3d.pass.MipMaps`, `h3d.pass.Outline`, `h3d.pass.ProjectedShadowMap`, `h3d.pass.SSR`, `h3d.pass.ScalableAO`, `h3d.pass.Timeout`, `h3d.scene.pbr.Environment`, `h3d.scene.pbr.LightSystem`, `h3d.scene.pbr.Renderer`

## h3d.pass.Shadows

- Fichier : `h3d/pass/Shadows.hx` — 312 lignes — 30 blocs doc
- Types : `enum RenderMode`, `enum_abstract ShadowSamplingKind`, `class Shadows`
- Héritage : `Shadows` extends `Output`
- Dépend de : `h3d.Camera`, `h3d.Engine`, `h3d.Matrix`, `h3d.Vector`, `h3d.col.Collider`, `h3d.mat.Texture`, `h3d.pass.Blur`, `h3d.pass.Output` (extends/use), `h3d.pass.PassList`, `h3d.scene.Graphics`, `h3d.scene.Light`, `hxd.PixelFormat`, `hxsl.Shader`
- Utilisé par : `h3d.pass.CapsuleShadowMap`, `h3d.pass.CascadeShadowMap`, `h3d.pass.CubeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.PointShadowMap`, `h3d.pass.ProjectedShadowMap`, `h3d.scene.Renderer`, `h3d.scene.pbr.Light`, `h3d.scene.pbr.LightBuffer`, `h3d.scene.pbr.Renderer`

## h3d.pass.SortByMaterial

- Fichier : `h3d/pass/SortByMaterial.hx` — 41 lignes — 3 blocs doc — contient du `#if`
- Types : `class SortByMaterial`
- Dépend de : `h3d.pass.PassList`
- Utilisé par : `h3d.pass.Output`

## h3d.pass.SpotShadowMap

- Fichier : `h3d/pass/SpotShadowMap.hx` — 24 lignes — 1 blocs doc
- Types : `class SpotShadowMap`
- Héritage : `SpotShadowMap` extends `ProjectedShadowMap`
- Dépend de : `h3d.pass.ProjectedShadowMap` (extends/use), `h3d.scene.pbr.SpotLight`
- Utilisé par : `h3d.scene.pbr.SpotLight`

## h3d.pass.Timeout

- Fichier : `h3d/pass/Timeout.hx` — 46 lignes — 4 blocs doc
- Types : `class TimeoutShader`, `class Timeout`
- Héritage : `TimeoutShader` extends `h3d.shader.ScreenShader`, `Timeout` extends `ScreenFx`
- Dépend de : `h3d.Engine`, `h3d.pass.ScreenFx` (extends/use), `h3d.shader.ScreenShader` (extends/use)
