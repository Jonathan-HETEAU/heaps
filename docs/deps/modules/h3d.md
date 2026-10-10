# Package `h3d`

[← retour](../DEPENDENCIES.md)

## h3d.Buffer

- Fichier : `h3d/Buffer.hx` — 217 lignes — 23 blocs doc
- Types : `enum BufferFlag`, `class Buffer`
- Dépend de : `h3d.BufferHandle`, `h3d.Engine`, `h3d.impl.Driver`, `h3d.impl.MemoryManager`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.impl.AllocPos`
- Utilisé par : `h2d.Graphics`, `h2d.RenderContext`, `h2d.SpriteBatch`, `h2d.TileGroup`, `h2d.impl.BatchDrawState`, `h3d.BufferHandle`, `h3d.Engine`, `h3d.GPUCounter`, `h3d.Indexes`, `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.Driver`, `h3d.impl.GlDriver`, `h3d.impl.MemoryManager`, `h3d.impl.NullDriver`, `h3d.impl.RenderContext`, `h3d.impl.RenderGraphDriver`, `h3d.prim.BatchPrimitive`, `h3d.prim.BigPrimitive`, `h3d.prim.Blendshape`, `h3d.prim.HMDModel`, `h3d.prim.MeshPrimitive`, `h3d.prim.Plane2D`, `h3d.prim.Polygon`, `h3d.prim.Primitive`, `h3d.prim.Quads`, `h3d.scene.Batcher`, `h3d.scene.GPUMeshBatch`, `h3d.scene.MeshBatch`, `h3d.scene.RenderContext`, `h3d.scene.Skin`, `h3d.scene.pbr.LightBuffer`, `h3d.shader.Buffers`, `h3d.shader.InstanceIndirect`, `h3d.shader.SkinBase`, `h3d.shader.pbr.ClusterCull`, `h3d.shader.pbr.DefaultForward`, `hxd.impl.Allocator`, `hxd.impl.CacheAllocator`, `hxd.impl.FIFOBufferAllocator`, `hxsl.Types`

## h3d.BufferHandle

- Fichier : `h3d/BufferHandle.hx` — 21 lignes — 3 blocs doc
- Types : `class BufferHandle`
- Dépend de : `h3d.Buffer`, `h3d.impl.Driver`
- Utilisé par : `h3d.Buffer`, `h3d.impl.DX12Driver`, `h3d.impl.Driver`, `h3d.impl.RenderContext`, `h3d.scene.Batcher`, `h3d.scene.RenderContext`, `h3d.shader.Buffers`, `hxsl.Macros`, `hxsl.Types`

## h3d.Camera

- Fichier : `h3d/Camera.hx` — 630 lignes — 48 blocs doc
- Types : `class Camera`
- Dépend de : `h3d.Engine`, `h3d.Matrix`, `h3d.Vector`, `h3d.col.Bounds`, `h3d.col.Frustum`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.scene.Object`, `hxd.Math`
- Utilisé par : `h3d.parts.GpuParticles`, `h3d.pass.CascadeShadowMap`, `h3d.pass.CubeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.ProjectedShadowMap`, `h3d.pass.ScalableAO`, `h3d.pass.Shadows`, `h3d.scene.Mesh`, `h3d.scene.RenderContext`, `h3d.scene.Scene`, `h3d.scene.pbr.Renderer`, `h3d.scene.pbr.SpotLight`, `hxd.snd.Listener`

## h3d.Engine

- Fichier : `h3d/Engine.hx` — 659 lignes — 56 blocs doc — contient du `#if`
- Types : `class TargetTmp`, `enum DepthBinding`, `class Engine`
- Dépend de : `h3d.Buffer`, `h3d.Indexes`, `h3d.Vector4`, `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.Driver`, `h3d.impl.GlDriver`, `h3d.impl.InstanceBuffer`, `h3d.impl.MemoryManager`, `h3d.impl.NullDriver`, `h3d.impl.VulkanDriver`, `h3d.mat.Data` (import), `h3d.mat.Pass`, `h3d.mat.Texture`, `hxd.BufferFormat`, `hxd.System.js`, `hxd.Timer`, `hxd.Window.js`, `hxd.impl.Allocator`, `hxd.res.Resource`, `hxsl.RuntimeShader`
- Utilisé par : `h2d.Graphics`, `h2d.LoadingScene`, `h2d.ObjectFollower`, `h2d.Particles`, `h2d.Scene`, `h2d.TileGroup`, `h3d.Buffer`, `h3d.Camera`, `h3d.IDrawable`, `h3d.Indexes`, `h3d.impl.Benchmark`, `h3d.impl.DX12Driver`, `h3d.impl.Driver`, `h3d.impl.FpsGraph`, `h3d.impl.InstanceBuffer`, `h3d.impl.RenderContext`, `h3d.impl.RenderGraph`, `h3d.impl.RenderGraphDriver`, `h3d.impl.TextureCache`, `h3d.impl.Upscaling`, `h3d.mat.PbrMaterialSetup`, `h3d.mat.Texture`, `h3d.mat.Texture3D`, `h3d.mat.TextureArray`, `h3d.mat.noise.WorleyNoise`, `h3d.pass.Copy`, `h3d.pass.CubeCopy`, `h3d.pass.Merge`, `h3d.pass.MipMaps`, `h3d.pass.ScreenFx`, `h3d.pass.Shadows`, `h3d.pass.Timeout`, `h3d.prim.BatchPrimitive`, `h3d.prim.BigPrimitive`, `h3d.prim.Blendshape`, `h3d.prim.Capsule`, `h3d.prim.Cube`, `h3d.prim.Cylinder`, `h3d.prim.Disc`, `h3d.prim.DynamicPrimitive`, `h3d.prim.HMDModel`, `h3d.prim.Instanced`, `h3d.prim.MeshPrimitive`, `h3d.prim.Plane2D`, `h3d.prim.Polygon`, `h3d.prim.Primitive`, `h3d.prim.Quads`, `h3d.prim.RawPrimitive`, `h3d.prim.Sphere`, `h3d.scene.Batcher`, `h3d.scene.Interactive`, `h3d.scene.RenderContext`, `h3d.scene.Renderer`, `h3d.scene.Scene`, `h3d.scene.World`, `h3d.scene.pbr.Environment`, `h3d.scene.pbr.LightBuffer`, `h3d.scene.pbr.SpotLight`, `hxd.App`, `hxd.System.hl`, `hxd.fmt.pak.Loader`, `hxd.fs.LocalFileSystem`, `hxd.impl.AppContext`, `hxd.res.DefaultFont`, `hxd.res.TextureStream`, `hxsl.Cache`, `hxsl.CacheFile`, `hxsl.CacheFile2`

## h3d.GPUCounter

- Fichier : `h3d/GPUCounter.hx` — 74 lignes — 8 blocs doc
- Types : `class GPUCounter`
- Dépend de : `h3d.Buffer`, `hxd.BufferFormat`, `hxd.impl.Allocator`
- Utilisé par : `h3d.scene.Batcher`, `h3d.scene.GPUMeshBatch`

## h3d.IDrawable

- Fichier : `h3d/IDrawable.hx` — 11 lignes — 2 blocs doc
- Types : `interface IDrawable`
- Dépend de : `h3d.Engine`
- Utilisé par : `h2d.Scene`, `h3d.scene.Scene`, `hxd.App`

## h3d.Indexes

- Fichier : `h3d/Indexes.hx` — 54 lignes — 6 blocs doc
- Types : `abstract Indexes`
- Dépend de : `h3d.Buffer`, `h3d.Engine`, `hxd.BufferFormat`, `hxd.IndexBuffer`
- Utilisé par : `h2d.Graphics`, `h2d.impl.BatchDrawState`, `h3d.Engine`, `h3d.impl.MemoryManager`, `h3d.prim.BatchPrimitive`, `h3d.prim.BigPrimitive`, `h3d.prim.HMDModel`, `h3d.prim.Polygon`, `h3d.prim.Primitive`, `hxd.impl.Allocator`, `hxd.impl.CacheAllocator`, `hxd.impl.FIFOBufferAllocator`

## h3d.Matrix

- Fichier : `h3d/Matrix.hx` — 1248 lignes — 96 blocs doc
- Types : `typedef ColorAdjust`, `class MatrixImpl`, `abstract Matrix`
- Dépend de : `h2d.col.Polynomial`, `h3d.Quat`, `h3d.Vector`, `hxd.Math` (import/use)
- Utilisé par : `h2d.Drawable`, `h2d.ObjectFollower`, `h2d.domkit.BaseComponents`, `h2d.filter.Ambient`, `h2d.filter.ColorMatrix`, `h3d.Camera`, `h3d.Quat`, `h3d.Vector`, `h3d.Vector4`, `h3d.anim.BlendSpace2D`, `h3d.anim.BufferAnimation`, `h3d.anim.LinearAnimation`, `h3d.anim.Skin`, `h3d.anim.SmoothTarget`, `h3d.anim.SmoothTransition`, `h3d.col.Bounds`, `h3d.col.Capsule`, `h3d.col.Collider`, `h3d.col.Cylinder`, `h3d.col.Frustum`, `h3d.col.HeightMap`, `h3d.col.InsideCollider`, `h3d.col.ObjectCollider`, `h3d.col.OrientedBounds`, `h3d.col.Plane`, `h3d.col.Polygon`, `h3d.col.PolygonBuffer`, `h3d.col.Ray`, `h3d.col.SkinCollider`, `h3d.col.Sphere`, `h3d.col.TransformCollider`, `h3d.impl.Benchmark`, `h3d.impl.RenderContext`, `h3d.impl.Upscaling`, `h3d.parts.GpuParticles`, `h3d.pass.Blur`, `h3d.pass.CascadeShadowMap`, `h3d.pass.ColorMatrix`, `h3d.pass.CubeCopy`, `h3d.pass.CubeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.Shadows`, `h3d.prim.BigPrimitive`, `h3d.prim.ColliderData`, `h3d.prim.Instanced`, `h3d.prim.Quads`, `h3d.scene.AnimMeshBatcher`, `h3d.scene.Batcher`, `h3d.scene.Mesh`, `h3d.scene.MeshBatch`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `h3d.scene.Scene`, `h3d.scene.Skin`, `h3d.scene.World`, `h3d.scene.pbr.Environment`, `h3d.scene.pbr.LightBuffer`, `h3d.scene.pbr.Renderer`, `hxd.FloatBufferLoader`, `hxd.fmt.fbx.BaseLibrary`, `hxd.fmt.fbx.Geometry`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.hmd.Data`, `hxsl.DynamicShader`, `hxsl.Macros`, `hxsl.Types`

## h3d.Quat

- Fichier : `h3d/Quat.hx` — 498 lignes — 33 blocs doc
- Types : `class Quat`
- Dépend de : `h3d.Matrix`, `h3d.Vector`, `h3d.col.Point`, `hxd.Math` (use/using)
- Utilisé par : `h3d.Matrix`, `h3d.anim.BlendSpace2D`, `h3d.anim.LinearAnimation`, `h3d.anim.SmoothTarget`, `h3d.anim.SmoothTransition`, `h3d.parts.GpuParticles`, `h3d.scene.Object`, `h3d.scene.Skin`, `h3d.scene.Trail`, `hxd.fmt.fbx.BaseLibrary`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.fbx.Writer`, `hxd.fmt.hmd.Data`

## h3d.Vector

- Fichier : `h3d/Vector.hx` — 502 lignes — 56 blocs doc — contient du `#if`
- Types : `class VectorImpl`, `abstract Vector`
- Dépend de : `h2d.col.Point`, `h2d.impl.PointApi`, `h3d.Matrix`, `h3d.Vector4`, `hxd.Math` (use/using)
- Utilisé par : `h2d.Drawable`, `h2d.ObjectFollower`, `h3d.Camera`, `h3d.Matrix`, `h3d.Quat`, `h3d.Vector4`, `h3d.anim.BlendSpace2D`, `h3d.anim.Skin`, `h3d.col.Frustum`, `h3d.col.OrientedBounds`, `h3d.col.Point`, `h3d.col.Ray`, `h3d.impl.Benchmark`, `h3d.impl.Upscaling`, `h3d.parts.Collider`, `h3d.parts.Emitter`, `h3d.parts.Particles`, `h3d.pass.CascadeShadowMap`, `h3d.pass.DefaultShadowMap`, `h3d.pass.SSR`, `h3d.pass.Shadows`, `h3d.prim.HMDModel`, `h3d.prim.ModelDatabase`, `h3d.scene.Batcher`, `h3d.scene.CameraController`, `h3d.scene.Light`, `h3d.scene.MeshBatch`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `h3d.scene.Scene`, `h3d.scene.Skin`, `h3d.scene.World`, `h3d.scene.fwd.DirLight`, `h3d.scene.fwd.LightSystem`, `h3d.scene.fwd.PointLight`, `h3d.scene.pbr.DirLight`, `h3d.scene.pbr.Light`, `h3d.scene.pbr.LightBuffer`, `h3d.scene.pbr.Renderer`, `h3d.scene.pbr.SpotLight`, `h3d.shader.ParticleShader`, `hxd.FloatBufferLoader`, `hxd.fmt.fbx.BaseLibrary`, `hxd.fmt.fbx.Geometry`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.hmd.Data`, `hxd.fmt.hmd.Library`, `hxd.fmt.hmd.Reader`, `hxd.fmt.hmd.Writer`, `hxd.impl.Properties`, `hxd.snd.Driver`, `hxd.snd.Listener`, `hxd.snd.effect.Spatialization`, `hxd.snd.openal.Driver`, `hxd.snd.webaudio.Driver`, `hxsl.DynamicShader`, `hxsl.Types`

## h3d.Vector4

- Fichier : `h3d/Vector4.hx` — 471 lignes — 44 blocs doc — contient du `#if`
- Types : `class Vector4Impl`, `abstract Vector4`
- Dépend de : `h3d.Matrix`, `h3d.Vector`, `hxd.Math` (use/using)
- Utilisé par : `h2d.Drawable`, `h2d.TileGroup`, `h2d.domkit.BaseComponents`, `h3d.Engine`, `h3d.Vector`, `h3d.col.Plane`, `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.Driver`, `h3d.impl.GlDriver`, `h3d.impl.RenderContext`, `h3d.impl.RenderGraphDriver`, `h3d.mat.Material`, `h3d.mat.Texture`, `h3d.pass.CascadeShadowMap`, `h3d.pass.CubeShadowMap`, `h3d.scene.Batcher`, `h3d.scene.CameraController`, `h3d.scene.GPUMeshBatch`, `h3d.scene.Interactive`, `h3d.scene.MeshBatch`, `h3d.scene.RenderContext`, `h3d.scene.World`, `h3d.scene.pbr.LightBuffer`, `h3d.scene.pbr.Renderer`, `hxd.App`, `hxd.FloatBufferLoader`, `hxd.Pixels`, `hxd.fmt.hmd.Library`, `hxd.fmt.spine.Data`, `hxd.impl.Properties`, `hxd.res.Gradients`, `hxsl.DynamicShader`, `hxsl.Macros`, `hxsl.Types`
