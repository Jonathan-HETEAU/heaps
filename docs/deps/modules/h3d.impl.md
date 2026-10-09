# Package `h3d.impl`

[← retour](../DEPENDENCIES.md)

## h3d.impl.Benchmark

- Fichier : `h3d/impl/Benchmark.hx` — 463 lignes — 0 blocs doc — contient du `#if`
- Types : `class QueryObject`, `class StatsObject`, `class Benchmark`
- Héritage : `Benchmark` extends `h2d.Graphics`
- Dépend de : `h2d.Flow`, `h2d.Font`, `h2d.Graphics` (extends/use), `h2d.Interactive`, `h2d.Text`, `h2d.Tile`, `h3d.Engine`, `h3d.Matrix`, `h3d.Vector`, `h3d.impl.Driver`, `h3d.scene.CameraController`, `h3d.scene.Object`, `h3d.scene.Scene`, `hxd.App`, `hxd.Math`, `hxd.Pad`, `hxd.System.js`, `hxd.Window.js`, `hxd.res.DefaultFont`

## h3d.impl.DX12Driver

- Fichier : `h3d/impl/DX12Driver.hx` — 4133 lignes — 2 blocs doc — contient du `#if`
- Types : `typedef Driver`, `class PSOConfigCache`, `class ScratchHeapArray`, `class BufferAllocation`, `class BufferAllocatorPage`, `class BufferAllocator`, `class DxFrame`, `class ShaderRegisters`, `class CompiledShader`, `class TempObjects`, `class BaseHeap`, `class ScratchHeap`, `class BlockHeap`, `class ResourceData`, `class BufferData`, `class TextureData`, `class TextureHeapPage`, `class TextureHeapAllocator`, `class QueryData`, `class AsyncReadbackRequest`, `class DX12Driver`
- Héritage : `ScratchHeap` extends `BaseHeap`, `BlockHeap` extends `BaseHeap`, `BufferData` extends `ResourceData`, `TextureData` extends `ResourceData`, `DX12Driver` extends `h3d.impl.Driver`
- Dépend de : `h2d.col.IBounds`, `h3d.Buffer`, `h3d.BufferHandle`, `h3d.Engine`, `h3d.Vector4`, `h3d.impl.Driver` (extends/import/use), `h3d.impl.InstanceBuffer`, `h3d.impl.PipelineCache`, `h3d.impl.Upscaling` (import/use), `h3d.mat.Data`, `h3d.mat.Pass` (import/use), `h3d.mat.Stencil` (import/use), `h3d.mat.Texture`, `h3d.mat.TextureHandle`, `hxd.BufferFormat`, `hxd.Math`, `hxd.PixelFormat`, `hxd.Pixels`, `hxd.System.js`, `hxd.Timer`, `hxsl.Ast`, `hxsl.RuntimeShader`
- Utilisé par : `h3d.Engine`, `h3d.impl.Driver`, `h3d.impl.Upscaling`, `hxsl.CacheFileBuilder`

## h3d.impl.DirectXDriver

- Fichier : `h3d/impl/DirectXDriver.hx` — 1587 lignes — 0 blocs doc — contient du `#if`
- Types : `class ShaderContext`, `class CompiledShader`, `enum PipelineKind`, `class PipelineState`, `class DirectXDriver`
- Héritage : `DirectXDriver` extends `h3d.impl.Driver`
- Dépend de : `h2d.col.IBounds`, `h3d.Buffer`, `h3d.Vector4`, `h3d.impl.Driver` (extends/import/use), `h3d.mat.Pass` (import/use), `h3d.mat.Stencil`, `h3d.mat.Texture`, `hxd.BitmapData`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.Math`, `hxd.PixelFormat`, `hxd.Pixels`, `hxd.System.js`, `hxsl.Ast`, `hxsl.HlslOut`, `hxsl.RuntimeShader`
- Utilisé par : `h3d.Engine`

## h3d.impl.Driver

- Fichier : `h3d/impl/Driver.hx` — 420 lignes — 6 blocs doc — contient du `#if`
- Types : `typedef GPUBuffer`, `typedef Texture`, `typedef Query`, `typedef DriverImpl`, `typedef GPUBuffer`, `typedef Texture`, `typedef Query`, `typedef DriverImpl`, `typedef GPUBuffer`, `typedef Texture`, `typedef Query`, `typedef DriverImpl`, `typedef GPUBuffer`, `typedef Texture`, `typedef Query`, `typedef DriverImpl`, `typedef GPUBuffer`, `typedef Texture`, `typedef Query`, `typedef DriverImpl`, `typedef GPUBuffer`, `typedef Texture`, `typedef Query`, `typedef DriverImpl`, `typedef GPUBuffer`, `typedef Texture`, `typedef Query`, `typedef DriverImpl`, `typedef GPUBuffer`, `typedef Texture`, `typedef Query`, `typedef DriverImpl`, `enum Feature`, `enum QueryKind`, `enum RenderFlag`, `class Driver`
- Dépend de : `h2d.col.IBounds`, `h3d.Buffer`, `h3d.BufferHandle`, `h3d.Engine`, `h3d.Vector4`, `h3d.impl.DX12Driver`, `h3d.impl.GlDriver`, `h3d.impl.InstanceBuffer`, `h3d.impl.ShaderCache`, `h3d.impl.Upscaling`, `h3d.mat.Data`, `h3d.mat.Pass`, `h3d.mat.Texture`, `h3d.mat.TextureHandle`, `h3d.shader.Buffers`, `hxd.BitmapData`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.Pixels`, `hxsl.RuntimeShader`
- Utilisé par : `h3d.Buffer`, `h3d.BufferHandle`, `h3d.Engine`, `h3d.impl.Benchmark`, `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.FpsGraph`, `h3d.impl.GlDriver`, `h3d.impl.InstanceBuffer`, `h3d.impl.MemoryManager`, `h3d.impl.NullDriver`, `h3d.impl.RenderGraphDriver`, `h3d.impl.Upscaling`, `h3d.impl.VulkanDriver`, `h3d.mat.Texture`, `h3d.mat.TextureHandle`, `h3d.scene.pbr.Renderer`, `hxd.res.TextureStream`

## h3d.impl.FpsGraph

- Fichier : `h3d/impl/FpsGraph.hx` — 308 lignes — 3 blocs doc
- Types : `class FpsGraph`
- Dépend de : `h2d.Flow`, `h2d.Graphics`, `h2d.Object`, `h2d.Text`, `h3d.Engine`, `h3d.impl.Driver`, `h3d.impl.FrameData`, `hxd.Math`, `hxd.res.DefaultFont`

## h3d.impl.FrameData

- Fichier : `h3d/impl/FrameData.hx` — 74 lignes — 0 blocs doc
- Types : `class FrameDataImpl`, `abstract FrameData`
- Utilisé par : `h3d.impl.FpsGraph`, `h3d.impl.StutterBenchmark`

## h3d.impl.GlDriver

- Fichier : `h3d/impl/GlDriver.hx` — 2378 lignes — 1 blocs doc — contient du `#if`
- Types : `typedef GL`, `typedef Uniform`, `typedef Program`, `typedef GLShader`, `typedef Framebuffer`, `typedef Uniform`, `typedef Program`, `typedef GLShader`, `typedef Framebuffer`, `typedef Texture`, `typedef Query`, `typedef VertexArray`, `typedef Uniform`, `typedef Program`, `typedef GLShader`, `typedef Framebuffer`, `typedef Texture`, `typedef Query`, `typedef VertexArray`, `typedef ShaderCompiler`, `typedef ShaderCompiler`, `class CompiledShader`, `class CompiledAttribute`, `class CompiledProgram`, `class GlDriver`
- Héritage : `GlDriver` extends `Driver`
- Dépend de : `h3d.Buffer`, `h3d.Vector4`, `h3d.impl.Driver` (extends/import/use), `h3d.impl.MacroHelper`, `h3d.mat.Data` (import), `h3d.mat.Pass` (import), `h3d.mat.Stencil` (import/use), `h3d.mat.Texture`, `hxd.BufferFormat`, `hxd.Timer`, `hxd.Window.js`, `hxd.impl.TypedArray` (import), `hxsl.Ast`, `hxsl.GlslOut`, `hxsl.RuntimeShader`, `hxsl.SharedShader`
- Utilisé par : `h2d.Video`, `h3d.Engine`, `h3d.impl.Driver`, `h3d.scene.GPUMeshBatch`

## h3d.impl.InstanceBuffer

- Fichier : `h3d/impl/InstanceBuffer.hx` — 75 lignes — 1 blocs doc
- Types : `class InstanceBuffer`
- Dépend de : `h3d.Engine`, `h3d.impl.Driver`
- Utilisé par : `h3d.Engine`, `h3d.impl.DX12Driver`, `h3d.impl.Driver`, `h3d.prim.Instanced`, `h3d.scene.Batcher`, `h3d.scene.MeshBatch`

## h3d.impl.MacroHelper

- Fichier : `h3d/impl/MacroHelper.hx` — 39 lignes — 0 blocs doc — contient du `#if`
- Types : `class MacroHelper`
- Utilisé par : `h3d.impl.GlDriver`

## h3d.impl.MemoryManager

- Fichier : `h3d/impl/MemoryManager.hx` — 355 lignes — 4 blocs doc
- Types : `typedef StackStats`, `typedef AllocStats`, `typedef TextureStat`, `class MemoryManager`
- Dépend de : `h3d.Buffer`, `h3d.Indexes`, `h3d.impl.Driver`, `h3d.mat.Texture`, `hxd.IndexBuffer`, `hxd.Math`, `hxd.Pixels`, `hxd.Timer`, `hxd.impl.AllocPos`
- Utilisé par : `h3d.Buffer`, `h3d.Engine`, `h3d.mat.Texture`

## h3d.impl.NullDriver

- Fichier : `h3d/impl/NullDriver.hx` — 54 lignes — 0 blocs doc — contient du `#if`
- Types : `class NullDriver`
- Héritage : `NullDriver` extends `Driver`
- Dépend de : `h3d.Buffer`, `h3d.impl.Driver` (extends/import/use), `h3d.mat.Data`, `h3d.mat.Texture`, `hxsl.RuntimeShader`
- Utilisé par : `h3d.Engine`

## h3d.impl.PipelineCache

- Fichier : `h3d/impl/PipelineCache.hx` — 403 lignes — 0 blocs doc — contient du `#if`
- Types : `abstract Bytes`, `abstract Bytes`, `class CachedPipeline`, `abstract PipelineCache`, `class DepthProps`, `class PipelineBuilder`
- Dépend de : `h3d.mat.Pass`, `h3d.mat.Stencil`, `h3d.mat.Texture`, `hxd.BufferFormat`, `hxd.PixelFormat`, `hxsl.RuntimeShader`
- Utilisé par : `h3d.impl.DX12Driver`

## h3d.impl.RenderContext

- Fichier : `h3d/impl/RenderContext.hx` — 334 lignes — 0 blocs doc — contient du `#if`
- Types : `class RenderContext`
- Dépend de : `h3d.Buffer`, `h3d.BufferHandle`, `h3d.Engine`, `h3d.Matrix`, `h3d.Vector4`, `h3d.impl.TextureCache`, `h3d.mat.Texture`, `h3d.mat.TextureHandle`, `h3d.shader.Buffers`, `hxd.System.js`, `hxd.impl.TypedArray`, `hxsl.Ast`, `hxsl.Globals`, `hxsl.RuntimeShader`, `hxsl.Shader`, `hxsl.ShaderList`, `hxsl.Types`
- Utilisé par : `h2d.RenderContext`, `h2d.Scene`, `h3d.pass.Blur`, `h3d.pass.Outline`, `h3d.pass.ScreenFx`, `h3d.scene.RenderContext`, `hxsl.DynamicShader`, `hxsl.Macros`, `hxsl.Shader`

## h3d.impl.RenderGraph

- Fichier : `h3d/impl/RenderGraph.hx` — 329 lignes — 0 blocs doc — contient du `#if`
- Types : `class RenderGraph`, `class Frame`, `class RenderSection`, `class TargetSectionBase`, `class TargetSection`, `class TargetsSection`, `class DepthSection`, `class TexData`, `class Event`, `class ClearEvent`, `class SampleTextureEvent`
- Héritage : `TargetSection` extends `TargetSectionBase`, `TargetsSection` extends `TargetSectionBase`, `DepthSection` extends `TargetSectionBase`, `ClearEvent` extends `Event`, `SampleTextureEvent` extends `Event`
- Dépend de : `h3d.Engine` (import/use), `h3d.impl.RenderGraphDriver`, `h3d.mat.Texture`, `hxd.PixelFormat`
- Utilisé par : `h3d.impl.RenderGraphDriver`, `h3d.scene.pbr.Renderer`

## h3d.impl.RenderGraphDriver

- Fichier : `h3d/impl/RenderGraphDriver.hx` — 255 lignes — 0 blocs doc — contient du `#if`
- Types : `class RenderGraphDriver`
- Héritage : `RenderGraphDriver` extends `Driver`
- Dépend de : `h3d.Buffer`, `h3d.Engine`, `h3d.Vector4`, `h3d.impl.Driver` (extends/import/use), `h3d.impl.RenderGraph`, `h3d.mat.Data`, `h3d.mat.Pass`, `h3d.mat.Texture`, `h3d.shader.Buffers`, `hxd.BitmapData`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.Pixels`, `hxsl.RuntimeShader`
- Utilisé par : `h3d.impl.RenderGraph`

## h3d.impl.RendererFX

- Fichier : `h3d/impl/RendererFX.hx` — 34 lignes — 0 blocs doc
- Types : `enum Step`, `typedef RFXTransition`, `interface RendererFX`
- Dépend de : `h3d.scene.Renderer`
- Utilisé par : `h3d.pass.SSR`, `h3d.scene.Renderer`, `h3d.scene.pbr.Renderer`

## h3d.impl.SceneProf

- Fichier : `h3d/impl/SceneProf.hx` — 251 lignes — 0 blocs doc — contient du `#if`
- Types : `class Frame`, `class StackLink`, `class SceneProf`
- Dépend de : `h2d.Object`, `h3d.scene.Object`
- Utilisé par : `h2d.RenderContext`, `h2d.Scene`, `h2d.TileGroup`, `h3d.pass.Output`, `h3d.scene.Object`, `h3d.scene.Scene`

## h3d.impl.ShaderCache

- Fichier : `h3d/impl/ShaderCache.hx` — 264 lignes — 0 blocs doc — contient du `#if`
- Types : `enum_abstract ShaderCacheMode`, `class ShaderCache`
- Utilisé par : `h3d.impl.Driver`, `hxsl.CacheFileBuilder`

## h3d.impl.StutterBenchmark

- Fichier : `h3d/impl/StutterBenchmark.hx` — 112 lignes — 0 blocs doc
- Types : `class Stutter`, `enum StutterSeverity`, `class StutterBenchmark`
- Dépend de : `h3d.impl.FrameData`

## h3d.impl.TextureCache

- Fichier : `h3d/impl/TextureCache.hx` — 127 lignes — 0 blocs doc
- Types : `class TextureCache`
- Dépend de : `h2d.Tile`, `h3d.Engine`, `h3d.mat.Data`, `h3d.mat.Texture`, `h3d.mat.TextureArray`, `hxd.PixelFormat`
- Utilisé par : `h3d.impl.RenderContext`

## h3d.impl.Upscaling

- Fichier : `h3d/impl/Upscaling.hx` — 1826 lignes — 0 blocs doc — contient du `#if`
- Types : `enum UpscalingFeature`, `enum_abstract UpscalingProvider`, `enum UpscalingMode`, `enum FrameGenMode`, `enum FrameGenUIMode`, `enum LowLatencyMode`, `enum LatencyMarker`, `class UpscalingInputs`, `class UpscalingParams`, `class UpscalingSettings`, `class FrameGenSettings`, `class UpscalingBackend`, `class Upscaling`, `class DX12DlssBackend`, `class DX12FsrBackend`
- Héritage : `DX12DlssBackend` extends `UpscalingBackend`, `DX12FsrBackend` extends `UpscalingBackend`
- Dépend de : `h3d.Engine`, `h3d.Matrix`, `h3d.Vector`, `h3d.impl.DX12Driver`, `h3d.impl.Driver`, `h3d.mat.Texture`, `h3d.pass.Copy`, `hxd.Math`, `hxd.Timer`
- Utilisé par : `h3d.impl.DX12Driver`, `h3d.impl.Driver`, `h3d.scene.pbr.Renderer`

## h3d.impl.VarBinding

- Fichier : `h3d/impl/VarBinding.hx` — 183 lignes — 0 blocs doc — contient du `#if`
- Types : `interface VarBinding`, `class Init`, `class Macros`

## h3d.impl.VulkanDriver

- Fichier : `h3d/impl/VulkanDriver.hx` — 87 lignes — 0 blocs doc — contient du `#if`
- Types : `class VulkanDriver`
- Héritage : `VulkanDriver` extends `Driver`
- Dépend de : `h3d.impl.Driver` (extends/import/use), `h3d.mat.Data`, `h3d.mat.Texture`, `hxd.Window.js`, `hxsl.RuntimeShader`
- Utilisé par : `h3d.Engine`
