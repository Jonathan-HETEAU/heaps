# Package `h3d.shader`

[← retour](../DEPENDENCIES.md)

## h3d.shader.AlphaChannel

- Fichier : `h3d/shader/AlphaChannel.hx` — 17 lignes — 1 blocs doc
- Types : `class AlphaChannel`
- Héritage : `AlphaChannel` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.AlphaMSDF

- Fichier : `h3d/shader/AlphaMSDF.hx` — 39 lignes — 1 blocs doc
- Types : `class AlphaMSDF`
- Héritage : `AlphaMSDF` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.AlphaMap

- Fichier : `h3d/shader/AlphaMap.hx` — 38 lignes — 2 blocs doc
- Types : `class AlphaMap`
- Héritage : `AlphaMap` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.AlphaMult

- Fichier : `h3d/shader/AlphaMult.hx` — 15 lignes — 1 blocs doc
- Types : `class AlphaMult`
- Héritage : `AlphaMult` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.AmbientLight

- Fichier : `h3d/shader/AmbientLight.hx` — 43 lignes — 1 blocs doc
- Types : `class AmbientLight`
- Héritage : `AmbientLight` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.fwd.LightSystem`

## h3d.shader.AnimatedTexture

- Fichier : `h3d/shader/AnimatedTexture.hx` — 82 lignes — 2 blocs doc
- Types : `class AnimatedTexture`
- Héritage : `AnimatedTexture` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.ApplyTransformShader

- Fichier : `h3d/shader/ApplyTransformShader.hx` — 31 lignes — 1 blocs doc
- Types : `class ApplyTransformShader`
- Héritage : `ApplyTransformShader` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.Batcher`

## h3d.shader.Base2d

- Fichier : `h3d/shader/Base2d.hx` — 85 lignes — 1 blocs doc
- Types : `class Base2d`
- Héritage : `Base2d` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h2d.RenderContext`, `h3d.shader.SignedDistanceField`

## h3d.shader.BaseMesh

- Fichier : `h3d/shader/BaseMesh.hx` — 138 lignes — 2 blocs doc — contient du `#if`
- Types : `class BaseMesh`
- Héritage : `BaseMesh` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.Material`, `h3d.scene.pbr.Renderer`, `h3d.shader.DistanceFade`, `h3d.shader.GpuParticle`, `h3d.shader.Outline`, `h3d.shader.Parallax`, `h3d.shader.VolumeDecal`, `h3d.shader.ZCut`, `hxd.fmt.hmd.Library`

## h3d.shader.Blendshape

- Fichier : `h3d/shader/Blendshape.hx` — 30 lignes — 1 blocs doc
- Types : `class Blendshape`
- Héritage : `Blendshape` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.prim.Blendshape`

## h3d.shader.Bloom

- Fichier : `h3d/shader/Bloom.hx` — 21 lignes — 1 blocs doc
- Types : `class Bloom`
- Héritage : `Bloom` extends `ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h2d.filter.Bloom`

## h3d.shader.Blur

- Fichier : `h3d/shader/Blur.hx` — 103 lignes — 1 blocs doc
- Types : `class Blur`
- Héritage : `Blur` extends `ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h3d.pass.Blur`

## h3d.shader.Buffers

- Fichier : `h3d/shader/Buffers.hx` — 120 lignes — 20 blocs doc
- Types : `enum_abstract BufferKind`, `typedef ShaderBufferData`, `class ShaderBuffers`, `class Buffers`
- Dépend de : `h3d.Buffer`, `h3d.BufferHandle`, `h3d.mat.Texture`, `h3d.mat.TextureHandle`, `hxd.impl.TypedArray`, `hxsl.RuntimeShader`
- Utilisé par : `h3d.impl.Driver`, `h3d.impl.RenderContext`, `h3d.impl.RenderGraphDriver`, `hxsl.Shader`

## h3d.shader.CascadeShadow

- Fichier : `h3d/shader/CascadeShadow.hx` — 91 lignes — 1 blocs doc — contient du `#if`
- Types : `class CascadeShadow`
- Héritage : `CascadeShadow` extends `hxsl.Shader`
- Dépend de : `h3d.shader.ShadowSampling`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.pass.CascadeShadowMap`

## h3d.shader.Checker

- Fichier : `h3d/shader/Checker.hx` — 30 lignes — 1 blocs doc
- Types : `class Checker`
- Héritage : `Checker` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.CheckerboardDepth

- Fichier : `h3d/shader/CheckerboardDepth.hx` — 37 lignes — 1 blocs doc — contient du `#if`
- Types : `class CheckerboardDepth`
- Héritage : `CheckerboardDepth` extends `h3d.shader.ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use)

## h3d.shader.ColorAdd

- Fichier : `h3d/shader/ColorAdd.hx` — 27 lignes — 2 blocs doc
- Types : `class ColorAdd`
- Héritage : `ColorAdd` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h2d.Drawable`

## h3d.shader.ColorKey

- Fichier : `h3d/shader/ColorKey.hx` — 26 lignes — 2 blocs doc
- Types : `class ColorKey`
- Héritage : `ColorKey` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h2d.Drawable`

## h3d.shader.ColorMatrix

- Fichier : `h3d/shader/ColorMatrix.hx` — 29 lignes — 2 blocs doc
- Types : `class ColorMatrix`
- Héritage : `ColorMatrix` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h2d.Drawable`, `h2d.HtmlText`

## h3d.shader.ColorMult

- Fichier : `h3d/shader/ColorMult.hx` — 20 lignes — 1 blocs doc
- Types : `class ColorMult`
- Héritage : `ColorMult` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.ColorSpaces

- Fichier : `h3d/shader/ColorSpaces.hx` — 85 lignes — 1 blocs doc
- Types : `class ColorSpaces`
- Héritage : `ColorSpaces` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.pbr.Environment`, `h3d.shader.pbr.DefaultForward`, `h3d.shader.pbr.PropsImport`

## h3d.shader.CubeMap

- Fichier : `h3d/shader/CubeMap.hx` — 36 lignes — 2 blocs doc
- Types : `class CubeMap`
- Héritage : `CubeMap` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.DepthAwareUpsampling

- Fichier : `h3d/shader/DepthAwareUpsampling.hx` — 61 lignes — 1 blocs doc
- Types : `class DepthAwareUpsampling`
- Héritage : `DepthAwareUpsampling` extends `ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use)

## h3d.shader.DirLight

- Fichier : `h3d/shader/DirLight.hx` — 50 lignes — 2 blocs doc
- Types : `class DirLight`
- Héritage : `DirLight` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.fwd.DirLight`

## h3d.shader.DirShadow

- Fichier : `h3d/shader/DirShadow.hx` — 35 lignes — 1 blocs doc
- Types : `class DirShadow`
- Héritage : `DirShadow` extends `hxsl.Shader`
- Dépend de : `h3d.shader.ShadowSampling`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.pass.DirShadowMap`

## h3d.shader.Displacement

- Fichier : `h3d/shader/Displacement.hx` — 24 lignes — 1 blocs doc
- Types : `class Displacement`
- Héritage : `Displacement` extends `ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h2d.filter.Displacement`

## h3d.shader.DisplacementDisplay

- Fichier : `h3d/shader/DisplacementDisplay.hx` — 20 lignes — 1 blocs doc
- Types : `class DisplacementDisplay`
- Héritage : `DisplacementDisplay` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.DistanceFade

- Fichier : `h3d/shader/DistanceFade.hx` — 34 lignes — 1 blocs doc
- Types : `class DistanceFade`
- Héritage : `DistanceFade` extends `hxsl.Shader`
- Dépend de : `h3d.shader.BaseMesh`, `hxsl.Shader` (extends/use)

## h3d.shader.FixedColor

- Fichier : `h3d/shader/FixedColor.hx` — 30 lignes — 2 blocs doc
- Types : `class FixedColor`
- Héritage : `FixedColor` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.HierarchicalWorld`

## h3d.shader.FlipBackFaceNormal

- Fichier : `h3d/shader/FlipBackFaceNormal.hx` — 17 lignes — 1 blocs doc
- Types : `class FlipBackFaceNormal`
- Héritage : `FlipBackFaceNormal` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.PbrMaterial`

## h3d.shader.GenTexture

- Fichier : `h3d/shader/GenTexture.hx` — 22 lignes — 1 blocs doc
- Types : `class GenTexture`
- Héritage : `GenTexture` extends `ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h3d.mat.Texture`

## h3d.shader.GpuParticle

- Fichier : `h3d/shader/GpuParticle.hx` — 121 lignes — 1 blocs doc
- Types : `class GpuParticle`
- Héritage : `GpuParticle` extends `hxsl.Shader`
- Dépend de : `h3d.shader.BaseMesh`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.parts.GpuParticles`

## h3d.shader.HZB

- Fichier : `h3d/shader/HZB.hx` — 42 lignes — 1 blocs doc
- Types : `class HZB`
- Héritage : `HZB` extends `h3d.shader.ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h3d.scene.pbr.Renderer`

## h3d.shader.InstanceIndirect

- Fichier : `h3d/shader/InstanceIndirect.hx` — 283 lignes — 3 blocs doc
- Types : `class InstanceIndirectBase`, `class SubPartInstanceIndirect`, `class InstanceIndirect`
- Héritage : `InstanceIndirectBase` extends `hxsl.Shader`, `SubPartInstanceIndirect` extends `InstanceIndirectBase`, `InstanceIndirect` extends `InstanceIndirectBase`
- Dépend de : `h3d.Buffer`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.GPUMeshBatch`

## h3d.shader.KillAlpha

- Fichier : `h3d/shader/KillAlpha.hx` — 28 lignes — 2 blocs doc
- Types : `class KillAlpha`
- Héritage : `KillAlpha` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.LineShader

- Fichier : `h3d/shader/LineShader.hx` — 74 lignes — 2 blocs doc
- Types : `class LineShader`
- Héritage : `LineShader` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.Graphics`

## h3d.shader.LinearShadowDepth

- Fichier : `h3d/shader/LinearShadowDepth.hx` — 26 lignes — 1 blocs doc
- Types : `class LinearShadowDepth`
- Héritage : `LinearShadowDepth` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.pass.CubeShadowMap`

## h3d.shader.MinMaxShader

- Fichier : `h3d/shader/MinMaxShader.hx` — 43 lignes — 2 blocs doc
- Types : `class MinMaxShader`, `class CubeMinMaxShader`
- Héritage : `MinMaxShader` extends `ScreenShader`, `CubeMinMaxShader` extends `ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h3d.pass.CubeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.ProjectedShadowMap`

## h3d.shader.NoiseLib

- Fichier : `h3d/shader/NoiseLib.hx` — 471 lignes — 1 blocs doc
- Types : `class NoiseLib`
- Héritage : `NoiseLib` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.NormalMap

- Fichier : `h3d/shader/NormalMap.hx` — 48 lignes — 2 blocs doc
- Types : `class NormalMap`
- Héritage : `NormalMap` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.Material`, `hxd.fmt.hmd.Library`

## h3d.shader.Outline

- Fichier : `h3d/shader/Outline.hx` — 30 lignes — 1 blocs doc
- Types : `class Outline`
- Héritage : `Outline` extends `hxsl.Shader`
- Dépend de : `h3d.shader.BaseMesh`, `hxsl.Shader` (extends/use)

## h3d.shader.Outline2D

- Fichier : `h3d/shader/Outline2D.hx` — 35 lignes — 1 blocs doc
- Types : `class Outline2D`
- Héritage : `Outline2D` extends `ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h3d.pass.Outline`

## h3d.shader.Parallax

- Fichier : `h3d/shader/Parallax.hx` — 76 lignes — 4 blocs doc
- Types : `class Parallax`
- Héritage : `Parallax` extends `hxsl.Shader`
- Dépend de : `h3d.shader.BaseMesh`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.PbrMaterial`

## h3d.shader.ParticleShader

- Fichier : `h3d/shader/ParticleShader.hx` — 72 lignes — 2 blocs doc
- Types : `class ParticleShader`
- Héritage : `ParticleShader` extends `hxsl.Shader`
- Dépend de : `h3d.Vector`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.parts.Particles`

## h3d.shader.PointLight

- Fichier : `h3d/shader/PointLight.hx` — 64 lignes — 3 blocs doc
- Types : `class PointLight`
- Héritage : `PointLight` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.fwd.PointLight`

## h3d.shader.PointShadow

- Fichier : `h3d/shader/PointShadow.hx` — 45 lignes — 2 blocs doc
- Types : `class PointShadow`
- Héritage : `PointShadow` extends `hxsl.Shader`
- Dépend de : `h3d.shader.ShadowSampling`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.pass.CapsuleShadowMap`, `h3d.pass.PointShadowMap`

## h3d.shader.SAO

- Fichier : `h3d/shader/SAO.hx` — 134 lignes — 2 blocs doc
- Types : `class SAO`
- Héritage : `SAO` extends `ScreenShader`
- Dépend de : `h3d.mat.Texture`, `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h3d.pass.ScalableAO`

## h3d.shader.ScreenShader

- Fichier : `h3d/shader/ScreenShader.hx` — 35 lignes — 1 blocs doc
- Types : `class ScreenShader`
- Héritage : `ScreenShader` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h2d.filter.InnerGlow`, `h2d.filter.Mask`, `h2d.filter.Shader`, `h3d.mat.noise.WorleyNoise`, `h3d.pass.Border`, `h3d.pass.ColorMatrix`, `h3d.pass.Copy`, `h3d.pass.CubeCopy`, `h3d.pass.FXAA`, `h3d.pass.Merge`, `h3d.pass.MipMaps`, `h3d.pass.ScreenFx`, `h3d.pass.Timeout`, `h3d.scene.pbr.Environment`, `h3d.scene.pbr.Renderer`, `h3d.shader.Bloom`, `h3d.shader.Blur`, `h3d.shader.CheckerboardDepth`, `h3d.shader.DepthAwareUpsampling`, `h3d.shader.Displacement`, `h3d.shader.GenTexture`, `h3d.shader.HZB`, `h3d.shader.MinMaxShader`, `h3d.shader.Outline2D`, `h3d.shader.SAO`, `h3d.shader.pbr.Distortion`, `h3d.shader.pbr.PerformanceViewer`, `h3d.shader.pbr.SSR`, `h3d.shader.pbr.Slides`, `h3d.shader.pbr.ToneMapping`

## h3d.shader.Shadow

- Fichier : `h3d/shader/Shadow.hx` — 38 lignes — 2 blocs doc
- Types : `class Shadow`
- Héritage : `Shadow` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.Defaults`, `h3d.shader.pbr.Slides`

## h3d.shader.ShadowSampling

- Fichier : `h3d/shader/ShadowSampling.hx` — 151 lignes — 1 blocs doc
- Types : `class ShadowSampling`
- Héritage : `ShadowSampling` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.shader.CascadeShadow`, `h3d.shader.DirShadow`, `h3d.shader.PointShadow`, `h3d.shader.SpotShadow`, `h3d.shader.pbr.DefaultForward`

## h3d.shader.SignedDistanceField

- Fichier : `h3d/shader/SignedDistanceField.hx` — 48 lignes — 4 blocs doc
- Types : `class SignedDistanceField`
- Héritage : `SignedDistanceField` extends `hxsl.Shader`
- Dépend de : `h3d.shader.Base2d`, `hxsl.Shader` (extends/use)
- Utilisé par : `h2d.HtmlText`, `h2d.Text`

## h3d.shader.SinusDeform

- Fichier : `h3d/shader/SinusDeform.hx` — 33 lignes — 2 blocs doc
- Types : `class SinusDeform`
- Héritage : `SinusDeform` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.Skin

- Fichier : `h3d/shader/Skin.hx` — 75 lignes — 2 blocs doc
- Types : `class Utils`, `class Skin`
- Héritage : `Utils` extends `hxsl.Shader`, `Skin` extends `SkinBase`
- Dépend de : `h3d.shader.SkinBase` (extends/use), `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.Skin`, `h3d.shader.SkinTangent`

## h3d.shader.SkinBase

- Fichier : `h3d/shader/SkinBase.hx` — 31 lignes — 1 blocs doc
- Types : `class SkinBase`
- Héritage : `SkinBase` extends `hxsl.Shader`
- Dépend de : `h3d.Buffer`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.Skin`, `h3d.shader.Skin`, `h3d.shader.SkinTangent`

## h3d.shader.SkinTangent

- Fichier : `h3d/shader/SkinTangent.hx` — 50 lignes — 1 blocs doc
- Types : `class SkinTangent`
- Héritage : `SkinTangent` extends `SkinBase`
- Dépend de : `h3d.shader.Skin`, `h3d.shader.SkinBase` (extends/use)
- Utilisé par : `h3d.scene.Skin`

## h3d.shader.SpecularTexture

- Fichier : `h3d/shader/SpecularTexture.hx` — 26 lignes — 2 blocs doc
- Types : `class SpecularTexture`
- Héritage : `SpecularTexture` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.Material`, `hxd.fmt.hmd.Library`

## h3d.shader.SpotShadow

- Fichier : `h3d/shader/SpotShadow.hx` — 35 lignes — 1 blocs doc
- Types : `class SpotShadow`
- Héritage : `SpotShadow` extends `hxsl.Shader`
- Dépend de : `h3d.shader.ShadowSampling`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.pass.ProjectedShadowMap`

## h3d.shader.Texture

- Fichier : `h3d/shader/Texture.hx` — 49 lignes — 2 blocs doc
- Types : `class Texture`
- Héritage : `Texture` extends `hxsl.Shader`
- Dépend de : `h3d.mat.Defaults`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.Material`, `hxd.fmt.hmd.Library`

## h3d.shader.Texture2

- Fichier : `h3d/shader/Texture2.hx` — 45 lignes — 2 blocs doc
- Types : `class Texture2`
- Héritage : `Texture2` extends `hxsl.Shader`
- Dépend de : `h3d.mat.Defaults`, `hxsl.Shader` (extends/use)

## h3d.shader.UVAnim

- Fichier : `h3d/shader/UVAnim.hx` — 44 lignes — 2 blocs doc
- Types : `class UVAnim`
- Héritage : `UVAnim` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.UVDelta

- Fichier : `h3d/shader/UVDelta.hx` — 26 lignes — 2 blocs doc
- Types : `class UVDelta`
- Héritage : `UVDelta` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h2d.filter.DropShadow`, `h3d.anim.BufferAnimation`, `h3d.anim.LinearAnimation`

## h3d.shader.UVScroll

- Fichier : `h3d/shader/UVScroll.hx` — 27 lignes — 2 blocs doc
- Types : `class UVScroll`
- Héritage : `UVScroll` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.VertexColor

- Fichier : `h3d/shader/VertexColor.hx` — 25 lignes — 1 blocs doc
- Types : `class VertexColor`
- Héritage : `VertexColor` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.VertexColorAlpha

- Fichier : `h3d/shader/VertexColorAlpha.hx` — 25 lignes — 1 blocs doc
- Types : `class VertexColorAlpha`
- Héritage : `VertexColorAlpha` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.parts.Particles`, `h3d.scene.Graphics`

## h3d.shader.VertexDensity

- Fichier : `h3d/shader/VertexDensity.hx` — 50 lignes — 1 blocs doc
- Types : `class VertexDensity`
- Héritage : `VertexDensity` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.VolumeDecal

- Fichier : `h3d/shader/VolumeDecal.hx` — 55 lignes — 2 blocs doc
- Types : `class VolumeDecal`
- Héritage : `VolumeDecal` extends `hxsl.Shader`
- Dépend de : `h3d.shader.BaseMesh`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.Defaults`, `h3d.mat.PbrMaterial`

## h3d.shader.WhiteAlpha

- Fichier : `h3d/shader/WhiteAlpha.hx` — 20 lignes — 1 blocs doc
- Types : `class WhiteAlpha`
- Héritage : `WhiteAlpha` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.ZCut

- Fichier : `h3d/shader/ZCut.hx` — 33 lignes — 2 blocs doc
- Types : `class ZCut`
- Héritage : `ZCut` extends `hxsl.Shader`
- Dépend de : `h3d.shader.BaseMesh`, `hxsl.Shader` (extends/use)
