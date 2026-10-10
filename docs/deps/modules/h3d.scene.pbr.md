# Package `h3d.scene.pbr`

[← retour](../DEPENDENCIES.md)

## h3d.scene.pbr.CapsuleLight

- Fichier : `h3d/scene/pbr/CapsuleLight.hx` — 117 lignes — 6 blocs doc
- Types : `class CapsuleLight`
- Héritage : `CapsuleLight` extends `Light`
- Dépend de : `h3d.col.Frustum`, `h3d.col.Sphere`, `h3d.pass.CapsuleShadowMap`, `h3d.prim.Capsule`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `h3d.scene.pbr.Light` (extends/use), `h3d.shader.pbr.Light`, `hxd.Math`
- Utilisé par : `h3d.pass.CapsuleShadowMap`, `h3d.scene.pbr.LightBuffer`

## h3d.scene.pbr.Decal

- Fichier : `h3d/scene/pbr/Decal.hx` — 28 lignes — 2 blocs doc
- Types : `class Decal`
- Héritage : `Decal` extends `Mesh`
- Dépend de : `h3d.scene.Mesh` (extends/use), `h3d.scene.RenderContext`, `h3d.shader.pbr.VolumeDecal`

## h3d.scene.pbr.DirLight

- Fichier : `h3d/scene/pbr/DirLight.hx` — 48 lignes — 2 blocs doc
- Types : `class DirLight`
- Héritage : `DirLight` extends `Light`
- Dépend de : `h3d.Vector`, `h3d.pass.CascadeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `h3d.scene.pbr.Light` (extends/use), `h3d.shader.pbr.Light`
- Utilisé par : `h3d.scene.pbr.LightBuffer`

## h3d.scene.pbr.Environment

- Fichier : `h3d/scene/pbr/Environment.hx` — 511 lignes — 25 blocs doc
- Types : `class IrradBase`, `class IrradShader`, `class IrradLut`, `class PanoramaToCube`, `class CubeToPanorama`, `class Environment`
- Héritage : `IrradBase` extends `h3d.shader.ScreenShader`, `IrradShader` extends `IrradBase`, `IrradLut` extends `IrradBase`, `PanoramaToCube` extends `h3d.shader.ScreenShader`, `CubeToPanorama` extends `h3d.shader.ScreenShader`
- Dépend de : `h3d.Engine`, `h3d.Matrix`, `h3d.mat.Texture`, `h3d.pass.ScreenFx`, `h3d.shader.ColorSpaces`, `h3d.shader.ScreenShader` (extends/use), `hxd.PixelFormat`, `hxd.Pixels`, `hxd.res.Embed`
- Utilisé par : `h3d.mat.PbrMaterialSetup`, `h3d.scene.pbr.Renderer`

## h3d.scene.pbr.Light

- Fichier : `h3d/scene/pbr/Light.hx` — 93 lignes — 8 blocs doc
- Types : `class Light`
- Héritage : `Light` extends `h3d.scene.Light`
- Dépend de : `h3d.Vector`, `h3d.col.Frustum`, `h3d.pass.Shadows`, `h3d.prim.Primitive`, `h3d.scene.Light` (extends/use), `hxd.Math`
- Utilisé par : `h3d.scene.Batcher`, `h3d.scene.pbr.CapsuleLight`, `h3d.scene.pbr.DirLight`, `h3d.scene.pbr.LightBuffer`, `h3d.scene.pbr.LightSystem`, `h3d.scene.pbr.PointLight`, `h3d.scene.pbr.RectangleLight`, `h3d.scene.pbr.Renderer`, `h3d.scene.pbr.SpotLight`

## h3d.scene.pbr.LightBuffer

- Fichier : `h3d/scene/pbr/LightBuffer.hx` — 761 lignes — 14 blocs doc — contient du `#if`
- Types : `class LightBuffer`
- Dépend de : `h3d.Buffer`, `h3d.Engine`, `h3d.Matrix`, `h3d.Vector`, `h3d.Vector4`, `h3d.mat.Texture`, `h3d.mat.TextureHandle`, `h3d.pass.CascadeShadowMap` (import/use), `h3d.pass.Shadows`, `h3d.scene.Graphics`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `h3d.scene.pbr.CapsuleLight`, `h3d.scene.pbr.DirLight`, `h3d.scene.pbr.Light`, `h3d.scene.pbr.PointLight`, `h3d.scene.pbr.RectangleLight`, `h3d.scene.pbr.Renderer`, `h3d.scene.pbr.SpotLight`, `h3d.shader.pbr.ClusterCull`, `h3d.shader.pbr.DefaultForward`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.Math`
- Utilisé par : `h3d.scene.pbr.LightSystem`

## h3d.scene.pbr.LightSystem

- Fichier : `h3d/scene/pbr/LightSystem.hx` — 98 lignes — 7 blocs doc
- Types : `class LightSystem`
- Héritage : `LightSystem` extends `h3d.scene.LightSystem`
- Dépend de : `h3d.pass.PassList`, `h3d.pass.ScreenFx`, `h3d.scene.LightSystem` (extends/use), `h3d.scene.Object`, `h3d.scene.Renderer`, `h3d.scene.pbr.Light`, `h3d.scene.pbr.LightBuffer`, `h3d.shader.pbr.DefaultForward`, `hxsl.Globals`, `hxsl.Shader`, `hxsl.ShaderList`
- Utilisé par : `h3d.mat.PbrMaterialSetup`, `h3d.scene.pbr.Renderer`

## h3d.scene.pbr.PointLight

- Fichier : `h3d/scene/pbr/PointLight.hx` — 98 lignes — 5 blocs doc
- Types : `class PointLight`
- Héritage : `PointLight` extends `Light`
- Dépend de : `h3d.col.Frustum`, `h3d.col.Sphere`, `h3d.pass.PointShadowMap`, `h3d.prim.Sphere`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `h3d.scene.pbr.Light` (extends/use), `h3d.shader.pbr.Light`, `hxd.Math`
- Utilisé par : `h3d.pass.PointShadowMap`, `h3d.scene.pbr.LightBuffer`

## h3d.scene.pbr.RectangleLight

- Fichier : `h3d/scene/pbr/RectangleLight.hx` — 221 lignes — 9 blocs doc
- Types : `class RectangleLight`
- Héritage : `RectangleLight` extends `Light`
- Dépend de : `h3d.col.Frustum`, `h3d.col.Point`, `h3d.col.Sphere`, `h3d.pass.RectangleShadowMap` (import/use), `h3d.prim.Polygon`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `h3d.scene.pbr.Light` (extends/use), `h3d.shader.pbr.Light`, `hxd.Math`
- Utilisé par : `h3d.pass.RectangleShadowMap`, `h3d.scene.pbr.LightBuffer`

## h3d.scene.pbr.Renderer

- Fichier : `h3d/scene/pbr/Renderer.hx` — 1289 lignes — 45 blocs doc — contient du `#if`
- Types : `enum_abstract DisplayMode`, `enum_abstract SkyMode`, `enum_abstract TonemapMap`, `typedef RenderProps`, `class DepthCopy`, `class Renderer`
- Héritage : `DepthCopy` extends `h3d.shader.ScreenShader`, `Renderer` extends `h3d.scene.Renderer`
- Dépend de : `h3d.Camera`, `h3d.Matrix`, `h3d.Vector`, `h3d.Vector4`, `h3d.col.Collider`, `h3d.impl.Driver` (import), `h3d.impl.RenderGraph`, `h3d.impl.RendererFX`, `h3d.impl.Upscaling` (import/use), `h3d.mat.Pass`, `h3d.mat.Stencil`, `h3d.mat.Texture`, `h3d.mat.TextureArray`, `h3d.pass.Blur`, `h3d.pass.CascadeShadowMap`, `h3d.pass.Copy`, `h3d.pass.FXAA`, `h3d.pass.Output`, `h3d.pass.PassList`, `h3d.pass.ScreenFx`, `h3d.pass.Shadows`, `h3d.scene.Renderer` (extends/use), `h3d.scene.pbr.Environment`, `h3d.scene.pbr.Light`, `h3d.scene.pbr.LightSystem`, `h3d.shader.BaseMesh`, `h3d.shader.HZB`, `h3d.shader.ScreenShader` (extends/use), `h3d.shader.pbr.AlphaMask`, `h3d.shader.pbr.Light`, `h3d.shader.pbr.Lighting`, `h3d.shader.pbr.PerformanceViewer`, `h3d.shader.pbr.PropsImport`, `h3d.shader.pbr.Slides`, `h3d.shader.pbr.ToneMapping`, `hxd.Math`, `hxd.Pad`, `hxd.Timer`, `hxd.Window.js`, `hxd.res.Embed`, `hxsl.Channel`, `hxsl.Output`, `hxsl.Shader`
- Utilisé par : `h2d.Scene3D`, `h3d.mat.PbrMaterialSetup`, `h3d.pass.SSR`, `h3d.scene.pbr.LightBuffer`

## h3d.scene.pbr.SpotLight

- Fichier : `h3d/scene/pbr/SpotLight.hx` — 192 lignes — 7 blocs doc
- Types : `class SpotLight`
- Héritage : `SpotLight` extends `Light`
- Dépend de : `h3d.Camera`, `h3d.Engine`, `h3d.Vector`, `h3d.col.Frustum`, `h3d.col.Plane`, `h3d.col.Point`, `h3d.mat.Texture`, `h3d.pass.SpotShadowMap`, `h3d.prim.Polygon`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `h3d.scene.pbr.Light` (extends/use), `h3d.shader.pbr.Light`, `hxd.Math`
- Utilisé par : `h3d.pass.SpotShadowMap`, `h3d.scene.pbr.LightBuffer`
