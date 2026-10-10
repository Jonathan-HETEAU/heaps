# Package `h3d.shader.pbr`

[← retour](../DEPENDENCIES.md)

## h3d.shader.pbr.AlphaMask

- Fichier : `h3d/shader/pbr/AlphaMask.hx` — 23 lignes — 1 blocs doc — contient du `#if`
- Types : `class AlphaMask`
- Héritage : `AlphaMask` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.pbr.Renderer`

## h3d.shader.pbr.AlphaMultiply

- Fichier : `h3d/shader/pbr/AlphaMultiply.hx` — 13 lignes — 1 blocs doc
- Types : `class AlphaMultiply`
- Héritage : `AlphaMultiply` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.PbrMaterial`

## h3d.shader.pbr.BRDF

- Fichier : `h3d/shader/pbr/BRDF.hx` — 71 lignes — 1 blocs doc
- Types : `class BRDF`
- Héritage : `BRDF` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.shader.pbr.DefaultForward`, `h3d.shader.pbr.Lighting`

## h3d.shader.pbr.ClusterCull

- Fichier : `h3d/shader/pbr/ClusterCull.hx` — 339 lignes — 2 blocs doc
- Types : `class ClusterCull`, `class ClusterLightOcclusion`
- Héritage : `ClusterCull` extends `hxsl.Shader`, `ClusterLightOcclusion` extends `hxsl.Shader`
- Dépend de : `h3d.Buffer`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.pbr.LightBuffer`

## h3d.shader.pbr.CubeLod

- Fichier : `h3d/shader/pbr/CubeLod.hx` — 28 lignes — 2 blocs doc
- Types : `class CubeLod`
- Héritage : `CubeLod` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)

## h3d.shader.pbr.DefaultForward

- Fichier : `h3d/shader/pbr/DefaultForward.hx` — 524 lignes — 1 blocs doc
- Types : `class DefaultForward`
- Héritage : `DefaultForward` extends `hxsl.Shader`
- Dépend de : `h3d.Buffer`, `h3d.shader.ColorSpaces`, `h3d.shader.ShadowSampling`, `h3d.shader.pbr.BRDF`, `h3d.shader.pbr.Light`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.pbr.LightBuffer`, `h3d.scene.pbr.LightSystem`

## h3d.shader.pbr.Distortion

- Fichier : `h3d/shader/pbr/Distortion.hx` — 19 lignes — 1 blocs doc
- Types : `class Distortion`
- Héritage : `Distortion` extends `h3d.shader.ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use)

## h3d.shader.pbr.GammaCorrect

- Fichier : `h3d/shader/pbr/GammaCorrect.hx` — 20 lignes — 1 blocs doc
- Types : `class GammaCorrect`
- Héritage : `GammaCorrect` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.PbrMaterial`

## h3d.shader.pbr.Light

- Fichier : `h3d/shader/pbr/Light.hx` — 285 lignes — 8 blocs doc
- Types : `class LightEvaluation`, `class Light`, `class SpotLight`, `class PointLight`, `class DirLight`, `class Performance`, `class CapsuleLight`, `class RectangleLight`
- Héritage : `LightEvaluation` extends `hxsl.Shader`, `Light` extends `LightEvaluation`, `SpotLight` extends `Light`, `PointLight` extends `Light`, `DirLight` extends `Light`, `Performance` extends `hxsl.Shader`, `CapsuleLight` extends `Light`, `RectangleLight` extends `Light`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.pbr.CapsuleLight`, `h3d.scene.pbr.DirLight`, `h3d.scene.pbr.PointLight`, `h3d.scene.pbr.RectangleLight`, `h3d.scene.pbr.Renderer`, `h3d.scene.pbr.SpotLight`, `h3d.shader.pbr.DefaultForward`

## h3d.shader.pbr.Lighting

- Fichier : `h3d/shader/pbr/Lighting.hx` — 159 lignes — 2 blocs doc — contient du `#if`
- Types : `class Indirect`, `class Direct`
- Héritage : `Indirect` extends `PropsDefinition`, `Direct` extends `PropsDefinition`
- Dépend de : `h3d.shader.pbr.BRDF`, `h3d.shader.pbr.PropsDefinition` (extends/use)
- Utilisé par : `h3d.scene.pbr.Renderer`

## h3d.shader.pbr.PerformanceViewer

- Fichier : `h3d/shader/pbr/PerformanceViewer.hx` — 18 lignes — 1 blocs doc
- Types : `class PerformanceViewer`
- Héritage : `PerformanceViewer` extends `ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h3d.scene.pbr.Renderer`

## h3d.shader.pbr.PropsDefinition

- Fichier : `h3d/shader/pbr/PropsDefinition.hx` — 41 lignes — 1 blocs doc
- Types : `class PropsDefinition`
- Héritage : `PropsDefinition` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.shader.pbr.Lighting`

## h3d.shader.pbr.PropsImport

- Fichier : `h3d/shader/pbr/PropsImport.hx` — 89 lignes — 1 blocs doc — contient du `#if`
- Types : `class PropsImport`
- Héritage : `PropsImport` extends `hxsl.Shader`
- Dépend de : `h3d.shader.ColorSpaces`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.pbr.Renderer`

## h3d.shader.pbr.PropsTexture

- Fichier : `h3d/shader/pbr/PropsTexture.hx` — 68 lignes — 2 blocs doc
- Types : `class PropsTexture`
- Héritage : `PropsTexture` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.PbrMaterial`

## h3d.shader.pbr.PropsValues

- Fichier : `h3d/shader/pbr/PropsValues.hx` — 74 lignes — 2 blocs doc
- Types : `class PropsValues`
- Héritage : `PropsValues` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.PbrMaterial`

## h3d.shader.pbr.SSR

- Fichier : `h3d/shader/pbr/SSR.hx` — 387 lignes — 3 blocs doc
- Types : `class SSRResolve`, `class SSRFilter`, `class SSR`
- Héritage : `SSRResolve` extends `h3d.shader.ScreenShader`, `SSRFilter` extends `h3d.shader.ScreenShader`, `SSR` extends `hxsl.Shader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use), `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.pass.SSR`

## h3d.shader.pbr.Slides

- Fichier : `h3d/shader/pbr/Slides.hx` — 190 lignes — 15 blocs doc
- Types : `enum_abstract DebugMode`, `class Slides`
- Héritage : `Slides` extends `ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use), `h3d.shader.Shadow`
- Utilisé par : `h3d.scene.pbr.Renderer`

## h3d.shader.pbr.StrengthValues

- Fichier : `h3d/shader/pbr/StrengthValues.hx` — 45 lignes — 2 blocs doc
- Types : `class StrengthValues`
- Héritage : `StrengthValues` extends `hxsl.Shader`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.mat.PbrMaterial`

## h3d.shader.pbr.ToneMapping

- Fichier : `h3d/shader/pbr/ToneMapping.hx` — 98 lignes — 4 blocs doc
- Types : `class ToneMapping`
- Héritage : `ToneMapping` extends `ScreenShader`
- Dépend de : `h3d.shader.ScreenShader` (extends/use)
- Utilisé par : `h2d.filter.ToneMapping`, `h3d.scene.pbr.Renderer`

## h3d.shader.pbr.VolumeDecal

- Fichier : `h3d/shader/pbr/VolumeDecal.hx` — 234 lignes — 5 blocs doc
- Types : `class BaseDecal`, `class DecalOverlay`, `class DecalPBR`
- Héritage : `BaseDecal` extends `hxsl.Shader`, `DecalOverlay` extends `BaseDecal`, `DecalPBR` extends `BaseDecal`
- Dépend de : `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.pbr.Decal`
