# Package `hxsl`

[← retour](../DEPENDENCIES.md)

## hxsl.Ast

- Fichier : `hxsl/Ast.hx` — 776 lignes — 1 blocs doc — contient du `#if`
- Types : `enum BufferKind`, `enum TexDimension`, `enum Type`, `enum VecType`, `enum SizeDecl`, `typedef FunType`, `class Error`, `typedef Position`, `typedef Expr`, `typedef Binop`, `typedef Unop`, `enum VarKind`, `enum VarQualifier`, `enum Prec`, `typedef VarDecl`, `typedef FunDecl`, `enum Const`, `enum ExprDef`, `enum TExprDef`, `class TVar`, `typedef TFunction`, `enum FunctionKind`, `enum TGlobal`, `enum SyntaxArgAccess`, `typedef SyntaxArg`, `enum Component`, `class TExpr`, `typedef ShaderData`, `class Tools`, `class Tools2`, `class Tools3`, `class Tools4`
- Dépend de : `hxsl.Output`, `hxsl.Printer`, `hxsl.Types`
- Utilisé par : `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.GlDriver`, `h3d.impl.RenderContext`, `h3d.scene.MeshBatch`, `hxd.BufferFormat`, `hxsl.Cache`, `hxsl.CacheFile`, `hxsl.Checker`, `hxsl.Clone`, `hxsl.Dce`, `hxsl.Debug`, `hxsl.DynamicShader`, `hxsl.Eval`, `hxsl.Flatten`, `hxsl.Globals`, `hxsl.GlslOut`, `hxsl.HlslOut`, `hxsl.Linker`, `hxsl.MacroParser`, `hxsl.Macros`, `hxsl.NXGlslOut`, `hxsl.Output`, `hxsl.Printer`, `hxsl.RuntimeShader`, `hxsl.Serializer`, `hxsl.Shader`, `hxsl.SharedShader`, `hxsl.Splitter`

## hxsl.BatchShader

- Fichier : `hxsl/BatchShader.hx` — 16 lignes — 0 blocs doc
- Types : `class BatchShader`
- Héritage : `BatchShader` extends `hxsl.Shader`
- Dépend de : `hxsl.RuntimeShader`, `hxsl.Shader` (extends/use)
- Utilisé par : `h3d.scene.Batcher`, `h3d.scene.MeshBatch`, `hxsl.Cache`

## hxsl.Cache

- Fichier : `hxsl/Cache.hx` — 1018 lignes — 1 blocs doc — contient du `#if`
- Types : `class ParamVar`, `class BatchInstanceParams`, `class SearchMap`, `class Cache`
- Dépend de : `h3d.Engine`, `hxsl.Ast` (use/using), `hxsl.BatchShader`, `hxsl.Dce`, `hxsl.Debug`, `hxsl.Flatten`, `hxsl.Linker`, `hxsl.Output`, `hxsl.Printer`, `hxsl.RuntimeShader` (import/use), `hxsl.Shader`, `hxsl.ShaderList`, `hxsl.SharedShader`, `hxsl.Splitter`
- Utilisé par : `h3d.pass.OutputShader`, `h3d.scene.Batcher`, `h3d.scene.MeshBatch`, `h3d.scene.RenderContext`, `hxsl.CacheFile`, `hxsl.CacheFile2`

## hxsl.CacheFile

- Fichier : `hxsl/CacheFile.hx` — 821 lignes — 2 blocs doc — contient du `#if`
- Types : `class NullShader`, `class CacheFile`
- Héritage : `NullShader` extends `hxsl.Shader`, `CacheFile` extends `Cache`
- Dépend de : `h3d.Engine`, `hxd.Math`, `hxd.System.js`, `hxd.res.Loader`, `hxd.res.NotFound`, `hxsl.Ast` (import), `hxsl.Cache` (extends/use), `hxsl.Channel`, `hxsl.Globals`, `hxsl.Output`, `hxsl.Printer`, `hxsl.RuntimeShader`, `hxsl.Shader` (extends/use), `hxsl.ShaderList`, `hxsl.SharedShader`
- Utilisé par : `hxsl.CacheFileBuilder`

## hxsl.CacheFile2

- Fichier : `hxsl/CacheFile2.hx` — 726 lignes — 1 blocs doc — contient du `#if`
- Types : `typedef DumpNode`, `class ShaderListInfo`, `class CacheFile2Loader`, `class CacheFile2`
- Héritage : `CacheFile2` extends `Cache`
- Dépend de : `h3d.Engine`, `hxd.BufferFormat`, `hxd.res.Loader`, `hxd.res.NotFound`, `hxsl.Cache` (extends/use), `hxsl.Output`, `hxsl.Printer`, `hxsl.RuntimeShader`, `hxsl.Shader`, `hxsl.ShaderList`, `hxsl.SharedShader`

## hxsl.CacheFileBuilder

- Fichier : `hxsl/CacheFileBuilder.hx` — 306 lignes — 0 blocs doc — contient du `#if`
- Types : `enum CacheFilePlatform`, `class CustomCacheFile`, `class CacheFileBuilder`
- Héritage : `CustomCacheFile` extends `CacheFile`
- Dépend de : `h3d.impl.DX12Driver`, `h3d.impl.ShaderCache`, `hxsl.CacheFile` (extends/use), `hxsl.DynamicShader`, `hxsl.GlslOut`, `hxsl.RuntimeShader`, `hxsl.Shader`, `hxsl.SharedShader`

## hxsl.Channel

- Fichier : `hxsl/Channel.hx` — 12 lignes — 0 blocs doc
- Types : `enum Channel`
- Utilisé par : `h2d.RenderContext`, `h3d.mat.Pass`, `h3d.pass.DefaultShadowMap`, `h3d.scene.pbr.Renderer`, `hxsl.CacheFile`, `hxsl.ChannelTexture`, `hxsl.Eval`, `hxsl.Macros`

## hxsl.ChannelTexture

- Fichier : `hxsl/ChannelTexture.hx` — 4 lignes — 0 blocs doc
- Types : `typedef ChannelTexture`
- Dépend de : `hxsl.Channel`, `hxsl.Types`
- Utilisé par : `hxsl.Shader`

## hxsl.Checker

- Fichier : `hxsl/Checker.hx` — 1546 lignes — 1 blocs doc
- Types : `enum FieldAccess`, `enum WithType`, `class Checker`
- Dépend de : `hxsl.Ast` (use/using), `hxsl.Output`
- Utilisé par : `hxsl.Macros`, `hxsl.SharedShader`

## hxsl.Clone

- Fichier : `hxsl/Clone.hx` — 79 lignes — 0 blocs doc — contient du `#if`
- Types : `class Clone`
- Dépend de : `hxsl.Ast` (use/using)
- Utilisé par : `hxsl.Linker`

## hxsl.Dce

- Fichier : `hxsl/Dce.hx` — 402 lignes — 0 blocs doc
- Types : `class Exit`, `class VarRel`, `class VarDeps`, `class WriteTo`, `class Dce`
- Dépend de : `hxsl.Ast` (use/using), `hxsl.Debug` (import/use), `hxsl.Output`
- Utilisé par : `hxsl.Cache`

## hxsl.Debug

- Fichier : `hxsl/Debug.hx` — 35 lignes — 0 blocs doc — contient du `#if`
- Types : `class Debug`
- Dépend de : `hxsl.Ast`
- Utilisé par : `hxsl.Cache`, `hxsl.Dce`, `hxsl.Linker`

## hxsl.DynamicShader

- Fichier : `hxsl/DynamicShader.hx` — 238 lignes — 0 blocs doc
- Types : `enum_abstract AccessKind`, `class Access`, `class DynamicShader`
- Héritage : `DynamicShader` extends `Shader`
- Dépend de : `h3d.Matrix`, `h3d.Vector`, `h3d.Vector4`, `h3d.impl.RenderContext`, `hxsl.Ast`, `hxsl.Globals`, `hxsl.Shader` (extends/use), `hxsl.SharedShader`
- Utilisé par : `hxsl.CacheFileBuilder`

## hxsl.Eval

- Fichier : `hxsl/Eval.hx` — 625 lignes — 1 blocs doc — contient du `#if`
- Types : `class Eval`
- Dépend de : `hxsl.Ast` (use/using), `hxsl.Channel`, `hxsl.Printer`
- Utilisé par : `hxsl.SharedShader`

## hxsl.Flatten

- Fichier : `hxsl/Flatten.hx` — 611 lignes — 0 blocs doc
- Types : `class Alloc`, `enum ARead`, `class Flatten`
- Dépend de : `hxsl.Ast` (use/using)
- Utilisé par : `hxsl.Cache`

## hxsl.Globals

- Fichier : `hxsl/Globals.hx` — 88 lignes — 0 blocs doc — contient du `#if`
- Types : `abstract GlobalSlot`, `class Globals`
- Dépend de : `h3d.mat.Texture` (import/use), `hxsl.Ast`
- Utilisé par : `h3d.impl.RenderContext`, `h3d.mat.Pass`, `h3d.pass.DefaultShadowMap`, `h3d.pass.Output`, `h3d.pass.OutputShader`, `h3d.scene.Batcher`, `h3d.scene.LightSystem`, `h3d.scene.MeshBatch`, `h3d.scene.fwd.LightSystem`, `h3d.scene.fwd.Renderer`, `h3d.scene.pbr.LightSystem`, `hxsl.CacheFile`, `hxsl.DynamicShader`, `hxsl.Macros`, `hxsl.NXGlslOut`, `hxsl.RuntimeShader`, `hxsl.Shader`, `hxsl.SharedShader`

## hxsl.GlslOut

- Fichier : `hxsl/GlslOut.hx` — 929 lignes — 1 blocs doc — contient du `#if`
- Types : `class GlslOut`
- Dépend de : `hxsl.Ast` (import/use), `hxsl.Output`, `hxsl.Printer`
- Utilisé par : `h3d.impl.GlDriver`, `hxsl.CacheFileBuilder`, `hxsl.NXGlslOut`

## hxsl.HlslOut

- Fichier : `hxsl/HlslOut.hx` — 1224 lignes — 0 blocs doc
- Types : `class Samplers`, `typedef SamplerRef`, `class GlobalsCollect`, `class HlslOut`
- Dépend de : `hxsl.Ast` (use/using), `hxsl.Output`, `hxsl.Printer`
- Utilisé par : `h3d.impl.DirectXDriver`

## hxsl.Linker

- Fichier : `hxsl/Linker.hx` — 677 lignes — 0 blocs doc — contient du `#if`
- Types : `class AllocatedVar`, `enum ShaderStage`, `class ShaderInfos`, `class Linker`
- Dépend de : `hxsl.Ast` (use/using), `hxsl.Clone`, `hxsl.Debug` (import), `hxsl.Output`, `hxsl.RuntimeShader`
- Utilisé par : `hxsl.Cache`

## hxsl.MacroParser

- Fichier : `hxsl/MacroParser.hx` — 345 lignes — 0 blocs doc
- Types : `class MacroParser`
- Dépend de : `hxsl.Ast`
- Utilisé par : `hxsl.Macros`, `hxsl.SharedShader`

## hxsl.Macros

- Fichier : `hxsl/Macros.hx` — 727 lignes — 0 blocs doc — contient du `#if`
- Types : `class Macros`
- Dépend de : `h3d.BufferHandle`, `h3d.Matrix`, `h3d.Vector4`, `h3d.impl.RenderContext`, `h3d.mat.TextureHandle`, `hxsl.Ast` (use/using), `hxsl.Channel`, `hxsl.Checker`, `hxsl.Globals`, `hxsl.MacroParser`, `hxsl.Serializer`, `hxsl.Shader`, `hxsl.SharedShader`, `hxsl.Types`
- Utilisé par : `h3d.scene.RenderContext`, `hxsl.Shader`

## hxsl.NXGlslOut

- Fichier : `hxsl/NXGlslOut.hx` — 118 lignes — 0 blocs doc
- Types : `enum BlockType`, `class NXGlslOut`
- Héritage : `NXGlslOut` extends `hxsl.GlslOut`
- Dépend de : `hxsl.Ast` (import/use/using), `hxsl.Globals`, `hxsl.GlslOut` (extends/use), `hxsl.Output`

## hxsl.Output

- Fichier : `hxsl/Output.hx` — 13 lignes — 0 blocs doc
- Types : `enum Output`
- Dépend de : `hxsl.Ast`
- Utilisé par : `h2d.Object`, `h2d.Scene`, `h3d.pass.OutputShader`, `h3d.scene.pbr.Renderer`, `hxsl.Ast`, `hxsl.Cache`, `hxsl.CacheFile`, `hxsl.CacheFile2`, `hxsl.Checker`, `hxsl.Dce`, `hxsl.GlslOut`, `hxsl.HlslOut`, `hxsl.Linker`, `hxsl.NXGlslOut`, `hxsl.Printer`, `hxsl.Splitter`

## hxsl.Printer

- Fichier : `hxsl/Printer.hx` — 427 lignes — 0 blocs doc
- Types : `class Printer`
- Dépend de : `hxsl.Ast` (use/using), `hxsl.Output`
- Utilisé par : `hxsl.Ast`, `hxsl.Cache`, `hxsl.CacheFile`, `hxsl.CacheFile2`, `hxsl.Eval`, `hxsl.GlslOut`, `hxsl.HlslOut`, `hxsl.SharedShader`

## hxsl.RuntimeShader

- Fichier : `hxsl/RuntimeShader.hx` — 160 lignes — 1 blocs doc — contient du `#if`
- Types : `enum LinkMode`, `class AllocParam`, `class AllocGlobal`, `class RuntimeShaderData`, `class ShaderInstanceDesc`, `class RuntimeShader`
- Dépend de : `hxd.BufferFormat`, `hxsl.Ast`, `hxsl.Globals`, `hxsl.SharedShader`
- Utilisé par : `h2d.RenderContext`, `h3d.Engine`, `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.Driver`, `h3d.impl.GlDriver`, `h3d.impl.NullDriver`, `h3d.impl.PipelineCache`, `h3d.impl.RenderContext`, `h3d.impl.RenderGraphDriver`, `h3d.impl.VulkanDriver`, `h3d.pass.OutputShader`, `h3d.pass.PassObject`, `h3d.scene.MeshBatch`, `h3d.shader.Buffers`, `hxsl.BatchShader`, `hxsl.Cache`, `hxsl.CacheFile`, `hxsl.CacheFile2`, `hxsl.CacheFileBuilder`, `hxsl.Linker`

## hxsl.Serializer

- Fichier : `hxsl/Serializer.hx` — 524 lignes — 0 blocs doc
- Types : `class Serializer`
- Dépend de : `hxsl.Ast` (use/using)
- Utilisé par : `hxsl.Macros`, `hxsl.SharedShader`

## hxsl.Shader

- Fichier : `hxsl/Shader.hx` — 122 lignes — 1 blocs doc — contient du `#if`
- Types : `typedef ShaderParamBuffer`, `class Shader`
- Dépend de : `h3d.impl.RenderContext`, `h3d.shader.Buffers`, `hxsl.Ast` (use/using), `hxsl.ChannelTexture`, `hxsl.Globals`, `hxsl.Macros`, `hxsl.SharedShader`, `hxsl.Types`
- Utilisé par : `h2d.Drawable`, `h2d.HtmlText`, `h2d.Particles`, `h3d.impl.RenderContext`, `h3d.mat.BaseMaterial`, `h3d.mat.Defaults`, `h3d.mat.Pass`, `h3d.mat.noise.WorleyNoise`, `h3d.pass.ScreenFx`, `h3d.pass.Shadows`, `h3d.scene.AnimMeshBatcher`, `h3d.scene.Batcher`, `h3d.scene.Light`, `h3d.scene.MeshBatch`, `h3d.scene.RenderContext`, `h3d.scene.Renderer`, `h3d.scene.World`, `h3d.scene.fwd.LightSystem`, `h3d.scene.pbr.LightSystem`, `h3d.scene.pbr.Renderer`, `h3d.shader.AlphaChannel`, `h3d.shader.AlphaMSDF`, `h3d.shader.AlphaMap`, `h3d.shader.AlphaMult`, `h3d.shader.AmbientLight`, `h3d.shader.AnimatedTexture`, `h3d.shader.ApplyTransformShader`, `h3d.shader.Base2d`, `h3d.shader.BaseMesh`, `h3d.shader.Blendshape`, `h3d.shader.CascadeShadow`, `h3d.shader.Checker`, `h3d.shader.ColorAdd`, `h3d.shader.ColorKey`, `h3d.shader.ColorMatrix`, `h3d.shader.ColorMult`, `h3d.shader.ColorSpaces`, `h3d.shader.CubeMap`, `h3d.shader.DirLight`, `h3d.shader.DirShadow`, `h3d.shader.DisplacementDisplay`, `h3d.shader.DistanceFade`, `h3d.shader.FixedColor`, `h3d.shader.FlipBackFaceNormal`, `h3d.shader.GpuParticle`, `h3d.shader.InstanceIndirect`, `h3d.shader.KillAlpha`, `h3d.shader.LineShader`, `h3d.shader.LinearShadowDepth`, `h3d.shader.NoiseLib`, `h3d.shader.NormalMap`, `h3d.shader.Outline`, `h3d.shader.Parallax`, `h3d.shader.ParticleShader`, `h3d.shader.PointLight`, `h3d.shader.PointShadow`, `h3d.shader.ScreenShader`, `h3d.shader.Shadow`, `h3d.shader.ShadowSampling`, `h3d.shader.SignedDistanceField`, `h3d.shader.SinusDeform`, `h3d.shader.Skin`, `h3d.shader.SkinBase`, `h3d.shader.SpecularTexture`, `h3d.shader.SpotShadow`, `h3d.shader.Texture`, `h3d.shader.Texture2`, `h3d.shader.UVAnim`, `h3d.shader.UVDelta`, `h3d.shader.UVScroll`, `h3d.shader.VertexColor`, `h3d.shader.VertexColorAlpha`, `h3d.shader.VertexDensity`, `h3d.shader.VolumeDecal`, `h3d.shader.WhiteAlpha`, `h3d.shader.ZCut`, `h3d.shader.pbr.AlphaMask`, `h3d.shader.pbr.AlphaMultiply`, `h3d.shader.pbr.BRDF`, `h3d.shader.pbr.ClusterCull`, `h3d.shader.pbr.CubeLod`, `h3d.shader.pbr.DefaultForward`, `h3d.shader.pbr.GammaCorrect`, `h3d.shader.pbr.Light`, `h3d.shader.pbr.PropsDefinition`, `h3d.shader.pbr.PropsImport`, `h3d.shader.pbr.PropsTexture`, `h3d.shader.pbr.PropsValues`, `h3d.shader.pbr.SSR`, `h3d.shader.pbr.StrengthValues`, `h3d.shader.pbr.VolumeDecal`, `hxsl.BatchShader`, `hxsl.Cache`, `hxsl.CacheFile`, `hxsl.CacheFile2`, `hxsl.CacheFileBuilder`, `hxsl.DynamicShader`, `hxsl.Macros`, `hxsl.ShaderList`

## hxsl.ShaderList

- Fichier : `hxsl/ShaderList.hx` — 74 lignes — 0 blocs doc
- Types : `class ShaderList`, `class ShaderIterator`
- Dépend de : `hxsl.Shader`
- Utilisé par : `h2d.Drawable`, `h2d.RenderContext`, `h3d.impl.RenderContext`, `h3d.mat.Pass`, `h3d.pass.CubeShadowMap`, `h3d.pass.Output`, `h3d.pass.OutputShader`, `h3d.pass.PassObject`, `h3d.pass.ScreenFx`, `h3d.scene.Batcher`, `h3d.scene.LightSystem`, `h3d.scene.RenderContext`, `h3d.scene.fwd.LightSystem`, `h3d.scene.pbr.LightSystem`, `hxsl.Cache`, `hxsl.CacheFile`, `hxsl.CacheFile2`

## hxsl.SharedShader

- Fichier : `hxsl/SharedShader.hx` — 400 lignes — 0 blocs doc — contient du `#if`
- Types : `class ShaderInstance`, `class ShaderGlobal`, `class ShaderConst`, `class SharedShader`
- Dépend de : `hxd.BufferFormat`, `hxd.fs.FileEntry`, `hxd.fs.SourceLoader`, `hxsl.Ast` (use/using), `hxsl.Checker`, `hxsl.Eval`, `hxsl.Globals`, `hxsl.MacroParser`, `hxsl.Printer`, `hxsl.Serializer`
- Utilisé par : `h3d.impl.GlDriver`, `hxsl.Cache`, `hxsl.CacheFile`, `hxsl.CacheFile2`, `hxsl.CacheFileBuilder`, `hxsl.DynamicShader`, `hxsl.Macros`, `hxsl.RuntimeShader`, `hxsl.Shader`

## hxsl.Splitter

- Fichier : `hxsl/Splitter.hx` — 380 lignes — 0 blocs doc
- Types : `class VarProps`, `class Splitter`
- Dépend de : `hxsl.Ast` (use/using), `hxsl.Output`
- Utilisé par : `hxsl.Cache`

## hxsl.Types

- Fichier : `hxsl/Types.hx` — 19 lignes — 0 blocs doc
- Types : `typedef Vec`, `typedef Vec4`, `typedef IVec`, `typedef BVec`, `typedef Matrix`, `typedef Texture`, `typedef TextureArray`, `typedef TextureChannel`, `typedef TextureHandle`, `typedef Buffer`, `typedef BufferHandle`, `class ChannelTools`
- Dépend de : `h3d.Buffer`, `h3d.BufferHandle`, `h3d.Matrix`, `h3d.Vector`, `h3d.Vector4`, `h3d.mat.Texture`, `h3d.mat.TextureArray`, `h3d.mat.TextureHandle`
- Utilisé par : `h3d.impl.RenderContext`, `hxsl.Ast`, `hxsl.ChannelTexture`, `hxsl.Macros`, `hxsl.Shader`
