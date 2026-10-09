# Package `h3d.mat`

[← retour](../DEPENDENCIES.md)

## h3d.mat.BaseMaterial

- Fichier : `h3d/mat/BaseMaterial.hx` — 120 lignes — 9 blocs doc
- Types : `class BaseMaterial`
- Héritage : `BaseMaterial` extends `hxd.impl.AnyProps`
- Dépend de : `h3d.mat.Data` (import), `h3d.mat.Pass` (import/use), `hxd.impl.AnyProps` (extends/use), `hxsl.Shader`
- Utilisé par : `h3d.mat.Material`, `h3d.mat.Pass`, `h3d.mat.PbrMaterial`

## h3d.mat.BigTexture

- Fichier : `h3d/mat/BigTexture.hx` — 373 lignes — 19 blocs doc — contient du `#if`
- Types : `class BigTextureElement`, `class QuadTree`, `class BigTexture`
- Dépend de : `h3d.mat.Texture`, `hxd.Pixels`, `hxd.res.Image`
- Utilisé par : `h3d.scene.World`

## h3d.mat.BlendMode

- Fichier : `h3d/mat/BlendMode.hx` — 6 lignes — 1 blocs doc
- Types : `typedef BlendMode`
- Dépend de : `h2d.BlendMode`
- Utilisé par : `h3d.mat.Material`, `h3d.mat.Pass`, `h3d.mat.PbrMaterial`, `h3d.pass.Copy`, `h3d.pass.CubeCopy`, `h3d.pass.Merge`, `h3d.scene.World`, `hxd.fmt.hmd.Data`

## h3d.mat.Data

- Fichier : `h3d/mat/Data.hx` — 329 lignes — 76 blocs doc
- Types : `enum Face`, `enum Blend`, `enum Compare`, `enum StencilOp`, `enum MipMap`, `enum Filter`, `enum Wrap`, `enum Operation`, `enum TextureFlags`, `typedef TextureFormat`
- Dépend de : `hxd.PixelFormat`
- Utilisé par : `h2d.ObjectFollower`, `h2d.ZGroup`, `h3d.Engine`, `h3d.impl.DX12Driver`, `h3d.impl.Driver`, `h3d.impl.GlDriver`, `h3d.impl.NullDriver`, `h3d.impl.RenderGraphDriver`, `h3d.impl.TextureCache`, `h3d.impl.VulkanDriver`, `h3d.mat.BaseMaterial`, `h3d.mat.Pass`, `h3d.mat.PbrMaterial`, `h3d.mat.Stencil`, `h3d.mat.Texture`, `h3d.mat.Texture3D`, `h3d.mat.TextureArray`, `h3d.mat.TextureChannels`, `h3d.scene.Renderer`, `h3d.scene.World`, `hxd.fmt.hmd.Reader`, `hxd.res.Image`

## h3d.mat.Defaults

- Fichier : `h3d/mat/Defaults.hx` — 44 lignes — 5 blocs doc
- Types : `class Defaults`
- Dépend de : `h3d.col.Bounds`, `h3d.shader.Shadow`, `h3d.shader.VolumeDecal`, `hxsl.Shader`
- Utilisé par : `h3d.mat.Material`, `h3d.shader.Texture`, `h3d.shader.Texture2`

## h3d.mat.Material

- Fichier : `h3d/mat/Material.hx` — 375 lignes — 17 blocs doc — contient du `#if`
- Types : `enum_abstract DefaultKind`, `typedef DefaultProps`, `class Material`
- Héritage : `Material` extends `BaseMaterial`
- Dépend de : `h3d.Vector4`, `h3d.mat.BaseMaterial` (extends/use), `h3d.mat.BlendMode`, `h3d.mat.Defaults`, `h3d.mat.MaterialSetup`, `h3d.mat.Pass`, `h3d.mat.Texture`, `h3d.shader.BaseMesh`, `h3d.shader.NormalMap`, `h3d.shader.SpecularTexture`, `h3d.shader.Texture`, `hxd.res.Resource`
- Utilisé par : `h3d.mat.MaterialDatabase`, `h3d.mat.MaterialSetup`, `h3d.mat.PbrMaterial`, `h3d.mat.PbrMaterialSetup`, `h3d.mat.Stencil`, `h3d.parts.GpuParticles`, `h3d.scene.AnimMeshBatcher`, `h3d.scene.Batcher`, `h3d.scene.Mesh`, `h3d.scene.MultiMaterial`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `hxd.fmt.hmd.Library`

## h3d.mat.MaterialDatabase

- Fichier : `h3d/mat/MaterialDatabase.hx` — 133 lignes — 5 blocs doc — contient du `#if`
- Types : `class MaterialDatabase`
- Dépend de : `h3d.mat.Material`, `h3d.mat.MaterialSetup`, `h3d.mat.PbrMaterial`, `hxd.fs.LocalFileSystem`, `hxd.res.Loader`, `hxd.res.NotFound`, `hxd.res.Resource`
- Utilisé par : `h3d.mat.MaterialSetup`

## h3d.mat.MaterialSetup

- Fichier : `h3d/mat/MaterialSetup.hx` — 94 lignes — 13 blocs doc
- Types : `class MaterialSetup`
- Dépend de : `h3d.mat.Material`, `h3d.mat.MaterialDatabase`, `h3d.scene.LightSystem`, `h3d.scene.Mesh`, `h3d.scene.Renderer`, `h3d.scene.fwd.LightSystem`, `h3d.scene.fwd.Renderer`
- Utilisé par : `h3d.mat.Material`, `h3d.mat.MaterialDatabase`, `h3d.mat.PbrMaterialSetup`, `h3d.parts.GpuParticles`, `h3d.scene.Mesh`, `h3d.scene.Scene`, `h3d.scene.Trail`, `hxd.fmt.hmd.Library`

## h3d.mat.Pass

- Fichier : `h3d/mat/Pass.hx` — 549 lignes — 38 blocs doc — contient du `#if`
- Types : `class Pass`
- Dépend de : `h3d.mat.BaseMaterial`, `h3d.mat.BlendMode`, `h3d.mat.Data` (import/use), `h3d.mat.Stencil`, `hxd.impl.BitsBuilder`, `hxsl.Channel`, `hxsl.Globals`, `hxsl.Shader`, `hxsl.ShaderList`
- Utilisé par : `h2d.RenderContext`, `h2d.filter.DropShadow`, `h3d.Engine`, `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.Driver`, `h3d.impl.GlDriver`, `h3d.impl.PipelineCache`, `h3d.impl.RenderGraphDriver`, `h3d.mat.BaseMaterial`, `h3d.mat.Material`, `h3d.pass.Copy`, `h3d.pass.Merge`, `h3d.pass.Output`, `h3d.pass.PassObject`, `h3d.pass.ScreenFx`, `h3d.scene.Batcher`, `h3d.scene.GPUMeshBatch`, `h3d.scene.MeshBatch`, `h3d.scene.RenderContext`, `h3d.scene.Scene`, `h3d.scene.pbr.Renderer`

## h3d.mat.PbrMaterial

- Fichier : `h3d/mat/PbrMaterial.hx` — 737 lignes — 46 blocs doc — contient du `#if`
- Types : `enum_abstract PbrMode`, `enum_abstract PbrBlend`, `enum_abstract PbrDepthTest`, `enum_abstract PbrDepthWrite`, `enum_abstract PbrStencilOp`, `enum_abstract PbrStencilCompare`, `enum_abstract PbrCullingMode`, `class PbrProps`, `class PbrMaterial`
- Héritage : `PbrMaterial` extends `Material`
- Dépend de : `h3d.mat.BaseMaterial`, `h3d.mat.BlendMode`, `h3d.mat.Data`, `h3d.mat.Material` (extends/use), `h3d.mat.Stencil`, `h3d.shader.FlipBackFaceNormal`, `h3d.shader.Parallax`, `h3d.shader.VolumeDecal`, `h3d.shader.pbr.AlphaMultiply`, `h3d.shader.pbr.GammaCorrect`, `h3d.shader.pbr.PropsTexture`, `h3d.shader.pbr.PropsValues`, `h3d.shader.pbr.StrengthValues`
- Utilisé par : `h3d.mat.MaterialDatabase`, `h3d.mat.PbrMaterialSetup`

## h3d.mat.PbrMaterialSetup

- Fichier : `h3d/mat/PbrMaterialSetup.hx` — 52 lignes — 4 blocs doc — contient du `#if`
- Types : `class PbrMaterialSetup`
- Héritage : `PbrMaterialSetup` extends `MaterialSetup`
- Dépend de : `h3d.Engine`, `h3d.mat.Material`, `h3d.mat.MaterialSetup` (extends/use), `h3d.mat.PbrMaterial`, `h3d.scene.Renderer`, `h3d.scene.pbr.Environment`, `h3d.scene.pbr.LightSystem`, `h3d.scene.pbr.Renderer`

## h3d.mat.Stencil

- Fichier : `h3d/mat/Stencil.hx` — 158 lignes — 19 blocs doc — contient du `#if`
- Types : `class Stencil`
- Dépend de : `h3d.mat.Data` (import/use), `h3d.mat.Material`, `hxd.impl.BitsBuilder`
- Utilisé par : `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.GlDriver`, `h3d.impl.PipelineCache`, `h3d.mat.Pass`, `h3d.mat.PbrMaterial`, `h3d.scene.pbr.Renderer`

## h3d.mat.Texture

- Fichier : `h3d/mat/Texture.hx` — 708 lignes — 50 blocs doc — contient du `#if`
- Types : `class Texture`
- Dépend de : `h2d.col.IBounds`, `h3d.Engine`, `h3d.Vector4`, `h3d.impl.Driver`, `h3d.impl.MemoryManager`, `h3d.mat.Data` (import/use), `h3d.mat.TextureHandle`, `h3d.pass.Copy`, `h3d.pass.CubeCopy`, `h3d.pass.ScreenFx`, `h3d.shader.GenTexture`, `hxd.BitmapData`, `hxd.Math`, `hxd.Pixels`, `hxd.impl.AllocPos`, `hxd.impl.BitsBuilder`
- Utilisé par : `h2d.LoadingScene`, `h2d.Object`, `h2d.Particles`, `h2d.RenderContext`, `h2d.Scene`, `h2d.Scene3D`, `h2d.Tile`, `h2d.Video`, `h2d.domkit.BaseComponents`, `h2d.impl.BatchDrawState`, `h3d.Engine`, `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.Driver`, `h3d.impl.GlDriver`, `h3d.impl.MemoryManager`, `h3d.impl.NullDriver`, `h3d.impl.PipelineCache`, `h3d.impl.RenderContext`, `h3d.impl.RenderGraph`, `h3d.impl.RenderGraphDriver`, `h3d.impl.TextureCache`, `h3d.impl.Upscaling`, `h3d.impl.VulkanDriver`, `h3d.mat.BigTexture`, `h3d.mat.Material`, `h3d.mat.Texture3D`, `h3d.mat.TextureArray`, `h3d.mat.TextureChannels`, `h3d.mat.TextureHandle`, `h3d.parts.GpuParticles`, `h3d.pass.Blur`, `h3d.pass.CascadeShadowMap`, `h3d.pass.ColorMatrix`, `h3d.pass.Copy`, `h3d.pass.CubeCopy`, `h3d.pass.CubeShadowMap`, `h3d.pass.DefaultShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.FXAA`, `h3d.pass.Merge`, `h3d.pass.MipMaps`, `h3d.pass.Outline`, `h3d.pass.Output`, `h3d.pass.ProjectedShadowMap`, `h3d.pass.SSR`, `h3d.pass.ScalableAO`, `h3d.pass.ScreenFx`, `h3d.pass.Shadows`, `h3d.prim.ModelCache`, `h3d.scene.Batcher`, `h3d.scene.Graphics`, `h3d.scene.MeshBatch`, `h3d.scene.RenderContext`, `h3d.scene.Renderer`, `h3d.scene.Scene`, `h3d.scene.Trail`, `h3d.scene.pbr.Environment`, `h3d.scene.pbr.LightBuffer`, `h3d.scene.pbr.Renderer`, `h3d.scene.pbr.SpotLight`, `h3d.shader.Buffers`, `h3d.shader.SAO`, `hxd.fmt.hmd.Library`, `hxd.res.FontBuilder`, `hxd.res.Gradients`, `hxd.res.Image`, `hxd.res.TextureStream`, `hxsl.Globals`, `hxsl.Types`

## h3d.mat.Texture3D

- Fichier : `h3d/mat/Texture3D.hx` — 52 lignes — 3 blocs doc
- Types : `class Texture3D`
- Héritage : `Texture3D` extends `Texture`
- Dépend de : `h3d.Engine`, `h3d.mat.Data` (import/use), `h3d.mat.Texture` (extends/use), `h3d.pass.Copy`, `hxd.PixelFormat`
- Utilisé par : `h3d.mat.noise.WorleyNoise`

## h3d.mat.TextureArray

- Fichier : `h3d/mat/TextureArray.hx` — 54 lignes — 3 blocs doc
- Types : `class TextureArray`
- Héritage : `TextureArray` extends `Texture`
- Dépend de : `h3d.Engine`, `h3d.mat.Data` (import/use), `h3d.mat.Texture` (extends/use), `h3d.pass.Copy`
- Utilisé par : `h3d.impl.TextureCache`, `h3d.pass.CascadeShadowMap`, `h3d.pass.Copy`, `h3d.scene.pbr.Renderer`, `hxd.res.Image`, `hxsl.Types`

## h3d.mat.TextureChannels

- Fichier : `h3d/mat/TextureChannels.hx` — 81 lignes — 4 blocs doc
- Types : `class TextureChannels`
- Héritage : `TextureChannels` extends `Texture`
- Dépend de : `h3d.mat.Data` (import/use), `h3d.mat.Texture` (extends/use), `hxd.Pixels`, `hxd.res.Image`

## h3d.mat.TextureHandle

- Fichier : `h3d/mat/TextureHandle.hx` — 21 lignes — 3 blocs doc
- Types : `class TextureHandle`
- Dépend de : `h3d.impl.Driver`, `h3d.mat.Texture`
- Utilisé par : `h3d.impl.DX12Driver`, `h3d.impl.Driver`, `h3d.impl.RenderContext`, `h3d.mat.Texture`, `h3d.scene.Batcher`, `h3d.scene.MeshBatch`, `h3d.scene.RenderContext`, `h3d.scene.pbr.LightBuffer`, `h3d.shader.Buffers`, `hxsl.Macros`, `hxsl.Types`
