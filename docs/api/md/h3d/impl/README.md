# Package `h3d.impl`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AllocStats`](AllocStats.md) | typedef | The allocations made from the same code position (see `MemoryManager.allocStats`). |
| [`Benchmark`](Benchmark.md) | class | A 2D bar displaying the GPU time of each section of the frame (with GPU timestamp queries), with the draw calls. |
| [`CachedPipeline`](CachedPipeline.md) | class | A pipeline state cached for a signature (render states, render target formats and vertex layout). |
| [`DepthProps`](DepthProps.md) | class | The depth settings of a pipeline. |
| [`DirectXDriver`](DirectXDriver.md) | class | The DirectX 11 driver (HashLink with the `hldx` library). |
| [`Driver`](Driver.md) | class | The base class of the graphics drivers (OpenGL/WebGL, DirectX 11 and 12...): it allocates the GPU resources and executes the draw calls requested by `h3d.Engine`. |
| [`DriverImpl`](DriverImpl.md) | typedef | The driver class of the current platform. |
| [`Feature`](Feature.md) | enum | The optional features of a driver, tested with `Driver.hasFeature`. |
| [`FpsGraph`](FpsGraph.md) | class | A 2D graph of the frame rate and of the CPU and GPU frame times, for profiling. |
| [`FrameData`](FrameData.md) | abstract | A ring buffer of the values of the last frames, with array access. |
| [`FrameDataImpl`](FrameDataImpl.md) | class | A ring buffer of the values of the last frames. |
| [`FrameGenMode`](FrameGenMode.md) | enum | The frame generation mode. |
| [`FrameGenSettings`](FrameGenSettings.md) | class | The state and capabilities of the frame generation. |
| [`FrameGenUIMode`](FrameGenUIMode.md) | enum | How the UI is handled by the frame generation, so that it is not interpolated: `BackBuffer` (the whole back buffer is interpolated), `HudLess` (a copy of the frame without UI is marked with `Upscaling.markFrameGenHudl... |
| [`GPUBuffer`](GPUBuffer.md) | typedef | The native GPU buffer of the current driver. |
| [`GlDriver`](GlDriver.md) | class | The OpenGL driver: WebGL (1 or 2) on JS, OpenGL with SDL on HashLink. |
| [`InstanceBuffer`](InstanceBuffer.md) | class | The draw commands of an instanced draw call (`h3d.Engine.renderInstanced`): either a single command, or a GPU buffer of indirect draw commands. |
| [`LatencyMarker`](LatencyMarker.md) | enum | The points of the frame reported to the low latency technology. |
| [`LowLatencyMode`](LowLatencyMode.md) | enum | The low latency mode (such as NVIDIA Reflex). |
| [`MacroHelper`](MacroHelper.md) | class | Macros used by the drivers. |
| [`MemoryManager`](MemoryManager.md) | class | Tracks the GPU memory used by the textures and buffers, frees the unused textures when the memory is low, and provides the shared index buffers. |
| [`NullDriver`](NullDriver.md) | class | A driver that draws nothing, for headless applications and tests. |
| [`PipelineBuilder`](PipelineBuilder.md) | class | Builds the signature of the current pipeline state (render states, render targets, vertex layout) as the driver state changes, to look up the cached pipelines. |
| [`PipelineCache`](PipelineCache.md) | abstract | The pipeline states of a shader, by signature hash. |
| [`PipelineKind`](PipelineKind.md) | enum | A stage of the DirectX 11 pipeline. |
| [`PipelineState`](PipelineState.md) | class | The resources bound to a stage of the DirectX 11 pipeline. |
| [`Query`](Query.md) | typedef | The native query of the current driver. |
| [`QueryKind`](QueryKind.md) | enum | The kind of a GPU query. |
| [`RFXTransition`](RFXTransition.md) | typedef | A transition between two effects, created by `RendererFX.transition`. |
| [`RenderContext`](RenderContext.md) | class | The base class of the 2D and 3D render contexts (`h2d.RenderContext`, `h3d.scene.RenderContext`): time, globals, temporary textures, and the filling of the shader buffers. |
| [`RenderFlag`](RenderFlag.md) | enum | Driver settings changed with `Driver.setRenderFlag`. |
| [`RendererFX`](RendererFX.md) | interface | A rendering effect added to a renderer (see `h3d.scene.Renderer.effects`): it is called at the start of the frame and around each rendering step. |
| [`ShaderCache`](ShaderCache.md) | class | A cache of the shaders compiled by the driver, by source code and configuration, saved to a file to avoid compiling them at the next run (see `Driver.setShaderCache`). |
| [`ShaderCacheMode`](ShaderCacheMode.md) | enum abstract | How the shader binaries are stored in the cache file. |
| [`StackStats`](StackStats.md) | typedef | The allocations made from the same call stack (see `MemoryManager.allocStats`). |
| [`Step`](Step.md) | enum | The steps of the rendering at which a `RendererFX` can render. |
| [`Stutter`](Stutter.md) | class | A stutter: one or more consecutive frames much longer than usual. |
| [`StutterBenchmark`](StutterBenchmark.md) | class | Detects the frames much longer than the median of the last 60 frames, and counts the stutters of the last minute. |
| [`StutterSeverity`](StutterSeverity.md) | enum | The severity of a stutter, by its impact: `Minor` under 20 ms, `Major` under 50 ms, `Severe` above. |
| [`Texture`](Texture.md) | typedef | The native texture of the current driver. |
| [`TextureCache`](TextureCache.md) | class | A cache of temporary render target textures, reused from one frame to the next in the order they are allocated. |
| [`TextureStat`](TextureStat.md) | typedef | An allocated texture or buffer. |
| [`Upscaling`](Upscaling.md) | class | Selects and drives the upscaling technologies of the driver: upscaling of a lower resolution rendering (DLSS, FSR), frame generation, and low latency. |
| [`UpscalingBackend`](UpscalingBackend.md) | class | The base class of the implementations of an upscaling technology (DLSS, FSR) for a driver. |
| [`UpscalingFeature`](UpscalingFeature.md) | enum | The features of an upscaling backend. |
| [`UpscalingInputs`](UpscalingInputs.md) | class | The textures used by the upscaler. |
| [`UpscalingMode`](UpscalingMode.md) | enum | The quality mode of the upscaler: the lower the quality, the smaller the render resolution. |
| [`UpscalingParams`](UpscalingParams.md) | class | The camera and frame parameters of the upscaler and the frame generation. |
| [`UpscalingProvider`](UpscalingProvider.md) | enum abstract | An upscaling technology. |
| [`UpscalingSettings`](UpscalingSettings.md) | class | The render resolution to use for an upscaling mode. |
| [`VarBinding`](VarBinding.md) | interface | Implement this interface to use field initializers that reference other fields: they are moved to the constructor, in dependency order. |
