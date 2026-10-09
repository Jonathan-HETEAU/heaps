# Package `hxd`

[← retour](../DEPENDENCIES.md)

## hxd.App

- Fichier : `hxd/App.hx` — 237 lignes — 11 blocs doc
- Types : `class App`
- Héritage : `App` implements `h3d.IDrawable`
- Dépend de : `h2d.Scene`, `h3d.Engine`, `h3d.IDrawable` (implements/use), `h3d.Vector4`, `h3d.scene.Scene`, `hxd.Key`, `hxd.SceneEvents`, `hxd.System.js`, `hxd.Timer`
- Utilisé par : `h3d.impl.Benchmark`, `hxd.impl.AppContext`

## hxd.BitmapData

- Fichier : `hxd/BitmapData.hx` — 529 lignes — 4 blocs doc — contient du `#if`
- Types : `typedef BitmapInnerData`, `typedef BitmapInnerData`, `class BitmapInnerDataImpl`, `class BitmapData`
- Dépend de : `h2d.BlendMode`, `hxd.Pixels`
- Utilisé par : `h2d.Tile`, `h3d.impl.DirectXDriver`, `h3d.impl.Driver`, `h3d.impl.RenderGraphDriver`, `h3d.mat.Texture`, `hxd.Cursor`, `hxd.Window`, `hxd.Window.hl`, `hxd.Window.js`, `hxd.fs.LoadedBitmap`, `hxd.res.BDFFont`, `hxd.res.FontBuilder`, `hxd.res.Image`

## hxd.BufferFormat

- Fichier : `hxd/BufferFormat.hx` — 565 lignes — 1 blocs doc — contient du `#if`
- Types : `enum_abstract Precision`, `enum_abstract InputFormat`, `class BufferInput`, `abstract BufferMapping`, `class BufferFormat`, `typedef MultiFormatCache`, `class MultiFormat`
- Dépend de : `hxd.Math`, `hxsl.Ast`
- Utilisé par : `h2d.Graphics`, `h2d.RenderContext`, `h2d.SpriteBatch`, `h2d.TileGroup`, `h3d.Buffer`, `h3d.Engine`, `h3d.GPUCounter`, `h3d.Indexes`, `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.Driver`, `h3d.impl.GlDriver`, `h3d.impl.PipelineCache`, `h3d.impl.RenderGraphDriver`, `h3d.parts.GpuParticles`, `h3d.parts.Particles`, `h3d.pass.Border`, `h3d.prim.BatchPrimitive`, `h3d.prim.BigPrimitive`, `h3d.prim.Blendshape`, `h3d.prim.DynamicPrimitive`, `h3d.prim.HMDModel`, `h3d.prim.MeshPrimitive`, `h3d.prim.Plane2D`, `h3d.prim.Polygon`, `h3d.prim.Quads`, `h3d.prim.RawPrimitive`, `h3d.scene.Batcher`, `h3d.scene.GPUMeshBatch`, `h3d.scene.Graphics`, `h3d.scene.MeshBatch`, `h3d.scene.RenderContext`, `h3d.scene.Skin`, `h3d.scene.Trail`, `h3d.scene.World`, `h3d.scene.pbr.LightBuffer`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.fbx.Writer`, `hxd.fmt.hmd.Data`, `hxd.fmt.hmd.Library`, `hxd.fmt.hmd.Reader`, `hxd.fmt.hmd.Writer`, `hxd.fs.Convert`, `hxd.impl.Allocator`, `hxd.impl.CacheAllocator`, `hxd.impl.FIFOBufferAllocator`, `hxsl.CacheFile2`, `hxsl.RuntimeShader`, `hxsl.SharedShader`

## hxd.ByteConversions

- Fichier : `hxd/ByteConversions.hx` — 19 lignes — 1 blocs doc — contient du `#if`
- Types : `class ByteConversions`

## hxd.BytesBuffer

- Fichier : `hxd/BytesBuffer.hx` — 47 lignes — 0 blocs doc
- Types : `abstract BytesBuffer`

## hxd.Charset

- Fichier : `hxd/Charset.hx` — 156 lignes — 7 blocs doc — contient du `#if`
- Types : `class Charset`
- Utilisé par : `h2d.Font`, `hxd.res.FontBuilder`

## hxd.Cursor

- Fichier : `hxd/Cursor.hx` — 114 lignes — 1 blocs doc — contient du `#if`
- Types : `enum Cursor`, `class CustomCursor`
- Dépend de : `hxd.BitmapData`, `hxd.System.js`
- Utilisé par : `h2d.Interactive`, `h2d.domkit.BaseComponents`, `h3d.scene.Interactive`, `hxd.SceneEvents`, `hxd.System`, `hxd.System.hl`, `hxd.System.js`

## hxd.Direction

- Fichier : `hxd/Direction.hx` — 61 lignes — 0 blocs doc
- Types : `enum_abstract Direction`
- Dépend de : `hxd.Math`

## hxd.DropFileEvent

- Fichier : `hxd/DropFileEvent.hx` — 69 lignes — 9 blocs doc — contient du `#if`
- Types : `class DroppedFile`, `class DropFileEvent`
- Utilisé par : `hxd.Window`, `hxd.Window.hl`, `hxd.Window.js`

## hxd.Event

- Fichier : `hxd/Event.hx` — 58 lignes — 3 blocs doc
- Types : `enum EventKind`, `class Event`
- Utilisé par : `hxd.Key`, `hxd.SceneEvents`, `hxd.Window`, `hxd.Window.hl`, `hxd.Window.js`

## hxd.File

- Fichier : `hxd/File.hx` — 246 lignes — 9 blocs doc — contient du `#if`
- Types : `typedef BrowseOptions`, `typedef BrowseSelect`, `class File`
- Dépend de : `hxd.System.js`
- Utilisé par : `hxd.Res`, `hxd.fmt.fbx.Writer`, `hxd.fmt.pak.Build`, `hxd.fmt.pak.FileSystem`, `hxd.fmt.pak.Reader`, `hxd.fmt.pak.Writer`, `hxd.fs.Convert`

## hxd.FloatBuffer

- Fichier : `hxd/FloatBuffer.hx` — 118 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef InnerData`, `abstract Float32Expand`, `class InnerIterator`, `abstract FloatBuffer`
- Dépend de : `hxd.impl.Float32`, `hxd.impl.TypedArray` (import/use)
- Utilisé par : `h2d.Graphics`, `h2d.RenderContext`, `h2d.SpriteBatch`, `h2d.TileGroup`, `h3d.Buffer`, `h3d.impl.DirectXDriver`, `h3d.impl.Driver`, `h3d.impl.RenderGraphDriver`, `h3d.parts.GpuParticles`, `h3d.parts.Particles`, `h3d.pass.Border`, `h3d.prim.BatchPrimitive`, `h3d.prim.BigPrimitive`, `h3d.prim.Blendshape`, `h3d.prim.DynamicPrimitive`, `h3d.prim.HMDModel`, `h3d.prim.Plane2D`, `h3d.prim.Polygon`, `h3d.prim.Quads`, `h3d.prim.RawPrimitive`, `h3d.scene.Batcher`, `h3d.scene.MeshBatch`, `h3d.scene.Skin`, `h3d.scene.World`, `h3d.scene.pbr.LightBuffer`, `hxd.FloatBufferLoader`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.hmd.Library`, `hxd.impl.Allocator`

## hxd.FloatBufferLoader

- Fichier : `hxd/FloatBufferLoader.hx` — 83 lignes — 0 blocs doc — contient du `#if`
- Types : `class FloatBufferLoader`
- Dépend de : `h3d.Matrix`, `h3d.Vector`, `h3d.Vector4`, `hxd.FloatBuffer`, `hxd.impl.TypedArray`
- Utilisé par : `h3d.scene.Batcher`, `h3d.scene.MeshBatch`, `h3d.scene.Skin`

## hxd.IndexBuffer

- Fichier : `hxd/IndexBuffer.hx` — 75 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef InnerData`, `class InnerIterator`, `abstract IndexBuffer`
- Dépend de : `hxd.impl.UInt16`
- Utilisé par : `h2d.Graphics`, `h3d.Indexes`, `h3d.col.PolygonBuffer`, `h3d.impl.DirectXDriver`, `h3d.impl.Driver`, `h3d.impl.MemoryManager`, `h3d.prim.BatchPrimitive`, `h3d.prim.BigPrimitive`, `h3d.prim.Capsule`, `h3d.prim.Cube`, `h3d.prim.Disc`, `h3d.prim.DynamicPrimitive`, `h3d.prim.GeoSphere`, `h3d.prim.Grid`, `h3d.prim.HMDModel`, `h3d.prim.Polygon`, `h3d.prim.RawPrimitive`, `h3d.prim.Sphere`, `h3d.scene.World`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.hmd.Library`, `hxd.impl.Allocator`

## hxd.Key

- Fichier : `hxd/Key.hx` — 311 lignes — 3 blocs doc
- Types : `class Key`
- Dépend de : `hxd.Event`, `hxd.Timer`, `hxd.Window`
- Utilisé par : `h2d.Console`, `h2d.TextInput`, `h2d.domkit.Style`, `h3d.scene.CameraController`, `hxd.App`, `hxd.Window.hl`

## hxd.Math

- Fichier : `hxd/Math.hx` — 352 lignes — 10 blocs doc
- Types : `class Math`
- Dépend de : `hxd.Timer`
- Utilisé par : `h2d.Dropdown`, `h2d.Flow`, `h2d.Graphics`, `h2d.HtmlText`, `h2d.KeyFrames`, `h2d.Layers`, `h2d.Mask`, `h2d.Object`, `h2d.Particles`, `h2d.RenderContext`, `h2d.Scene`, `h2d.Text`, `h2d.TextInput`, `h2d.TileGroup`, `h2d.col.Bounds`, `h2d.col.Circle`, `h2d.col.IBounds`, `h2d.col.IPoint`, `h2d.col.IPolygon`, `h2d.col.IPolygons`, `h2d.col.Line`, `h2d.col.Matrix`, `h2d.col.Point`, `h2d.col.Polygon`, `h2d.col.Polygons`, `h2d.col.Ray`, `h2d.col.RoundRect`, `h2d.col.Segment`, `h2d.col.Segments`, `h2d.col.Voronoi`, `h2d.domkit.BaseComponents`, `h2d.domkit.Style`, `h2d.filter.Displacement`, `h2d.filter.DropShadow`, `h3d.Camera`, `h3d.Matrix`, `h3d.Quat`, `h3d.Vector`, `h3d.Vector4`, `h3d.anim.BlendSpace2D`, `h3d.anim.BufferAnimation`, `h3d.anim.SmoothTarget`, `h3d.col.Bounds`, `h3d.col.Capsule`, `h3d.col.Cylinder`, `h3d.col.FPoint`, `h3d.col.IPoint`, `h3d.col.ObjectCollider`, `h3d.col.OrientedBounds`, `h3d.col.Plane`, `h3d.col.Polygon`, `h3d.col.PolygonBuffer`, `h3d.col.Ray`, `h3d.col.Seg`, `h3d.col.Sphere`, `h3d.col.TransformCollider`, `h3d.impl.Benchmark`, `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.FpsGraph`, `h3d.impl.MemoryManager`, `h3d.impl.Upscaling`, `h3d.mat.Texture`, `h3d.mat.noise.WorleyNoise`, `h3d.parts.GpuParticles`, `h3d.parts.Particles`, `h3d.pass.Blur`, `h3d.pass.CascadeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.RectangleShadowMap`, `h3d.prim.BatchPrimitive`, `h3d.prim.Blendshape`, `h3d.prim.DynamicPrimitive`, `h3d.prim.Grid`, `h3d.prim.HMDModel`, `h3d.prim.UV`, `h3d.scene.Batcher`, `h3d.scene.CameraController`, `h3d.scene.Capsule`, `h3d.scene.GPUMeshBatch`, `h3d.scene.Graphics`, `h3d.scene.Mesh`, `h3d.scene.MeshBatch`, `h3d.scene.Object`, `h3d.scene.Scene`, `h3d.scene.Skin`, `h3d.scene.Sphere`, `h3d.scene.Trail`, `h3d.scene.World`, `h3d.scene.fwd.LightSystem`, `h3d.scene.fwd.PointLight`, `h3d.scene.pbr.CapsuleLight`, `h3d.scene.pbr.Light`, `h3d.scene.pbr.LightBuffer`, `h3d.scene.pbr.PointLight`, `h3d.scene.pbr.RectangleLight`, `h3d.scene.pbr.Renderer`, `h3d.scene.pbr.SpotLight`, `hxd.BufferFormat`, `hxd.Direction`, `hxd.Pad`, `hxd.Perlin`, `hxd.System.js`, `hxd.Timer`, `hxd.Window.hl`, `hxd.Window.js`, `hxd.clipper.Clipper`, `hxd.earcut.Earcut`, `hxd.fmt.fbx.BaseLibrary`, `hxd.fmt.fbx.Geometry`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.fbx.Writer`, `hxd.fmt.hdr.Reader`, `hxd.fmt.hmd.Data`, `hxd.fmt.hmd.Dump`, `hxd.fmt.hmd.Library`, `hxd.fmt.pak.Build`, `hxd.fmt.spine.Library`, `hxd.fs.FileConverter`, `hxd.fs.FileInput`, `hxd.impl.Allocator`, `hxd.impl.CacheAllocator`, `hxd.poly2tri.Constants`, `hxd.poly2tri.Node`, `hxd.poly2tri.SweepContext`, `hxd.res.BDFFont`, `hxd.res.FontBuilder`, `hxd.res.Gradients`, `hxd.res.Image`, `hxd.res.TextureStream`, `hxd.snd.Data`, `hxd.snd.Manager`, `hxd.snd.Mp3Data`, `hxd.snd.effect.Spatialization`, `hxd.snd.openal.ReverbDriver`, `hxd.snd.webaudio.AudioTypes`, `hxd.snd.webaudio.Driver`, `hxd.snd.webaudio.LowPassDriver`, `hxsl.CacheFile`

## hxd.Pad

- Fichier : `hxd/Pad.hx` — 560 lignes — 6 blocs doc — contient du `#if`
- Types : `typedef Event`, `class GameController`, `typedef PadConfig`, `class Pad`
- Dépend de : `hxd.Math`
- Utilisé par : `h2d.Camera`, `h2d.Console`, `h2d.Dropdown`, `h2d.Flow`, `h2d.Interactive`, `h2d.Scene`, `h2d.Slider`, `h2d.TextInput`, `h2d.domkit.Style`, `h3d.impl.Benchmark`, `h3d.scene.CameraController`, `h3d.scene.Interactive`, `h3d.scene.Scene`, `h3d.scene.pbr.Renderer`, `hxd.SceneEvents`, `hxd.Window`, `hxd.Window.hl`, `hxd.Window.js`, `hxd.impl.MouseMode`

## hxd.Perlin

- Fichier : `hxd/Perlin.hx` — 441 lignes — 2 blocs doc
- Types : `class Perlin`
- Dépend de : `hxd.Math`

## hxd.PixelFormat

- Fichier : `hxd/PixelFormat.hx` — 32 lignes — 0 blocs doc
- Types : `enum PixelFormat`
- Utilisé par : `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.PipelineCache`, `h3d.impl.RenderGraph`, `h3d.impl.TextureCache`, `h3d.mat.Data`, `h3d.mat.Texture3D`, `h3d.pass.CascadeShadowMap`, `h3d.pass.DefaultShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.Shadows`, `h3d.scene.pbr.Environment`, `hxd.Pixels`, `hxd.res.Image`

## hxd.Pixels

- Fichier : `hxd/Pixels.hx` — 780 lignes — 2 blocs doc — contient du `#if`
- Types : `enum Flags`, `abstract PixelsARGB`, `abstract PixelsFloat`, `abstract PixelsFloatRGBA`, `enum_abstract Channel`, `class Pixels`
- Dépend de : `h3d.Vector4`, `hxd.PixelFormat`, `hxd.impl.UncheckedBytes`
- Utilisé par : `h2d.Tile`, `h2d.Video`, `h2d.col.PixelsCollider`, `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.Driver`, `h3d.impl.MemoryManager`, `h3d.impl.RenderGraphDriver`, `h3d.mat.BigTexture`, `h3d.mat.Texture`, `h3d.mat.TextureChannels`, `h3d.mat.noise.WorleyNoise`, `h3d.pass.CubeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.ProjectedShadowMap`, `h3d.scene.pbr.Environment`, `hxd.BitmapData`, `hxd.fmt.tiff.Reader`, `hxd.fmt.tiff.Writer`, `hxd.fs.Convert`, `hxd.res.Gradients`, `hxd.res.Image`, `hxd.res.TextureStream`

## hxd.Rand

- Fichier : `hxd/Rand.hx` — 106 lignes — 8 blocs doc — contient du `#if`
- Types : `class Rand`
- Utilisé par : `h3d.mat.noise.WorleyNoise`, `h3d.parts.GpuParticles`

## hxd.Res

- Fichier : `hxd/Res.hx` — 45 lignes — 0 blocs doc — contient du `#if`
- Types : `class Res`
- Dépend de : `hxd.File`, `hxd.fmt.pak.FileSystem`, `hxd.fs.EmbedFileSystem`, `hxd.fs.LocalFileSystem`, `hxd.res.EmbedOptions`, `hxd.res.FileTree`, `hxd.res.Loader`

## hxd.Save

- Fichier : `hxd/Save.hx` — 115 lignes — 6 blocs doc — contient du `#if`
- Types : `class Save`

## hxd.SceneEvents

- Fichier : `hxd/SceneEvents.hx` — 456 lignes — 3 blocs doc
- Types : `interface InteractiveScene`, `interface Interactive`, `class SceneEvents`
- Dépend de : `hxd.Cursor`, `hxd.Event`, `hxd.Pad`, `hxd.System.js`, `hxd.Window.js`
- Utilisé par : `h2d.Interactive`, `h2d.Scene`, `h2d.Scene3D`, `h3d.scene.Interactive`, `h3d.scene.Scene`, `hxd.App`

## hxd.Stage

- Fichier : `hxd/Stage.hx` — 5 lignes — 0 blocs doc
- Types : `typedef Stage`
- Dépend de : `hxd.Window`

## hxd.System

- Fichier : `hxd/System.hx` — 117 lignes — 4 blocs doc
- Types : `enum Platform`, `enum SystemValue`, `enum KeyboardLayout`, `class System`
- Dépend de : `hxd.Cursor`

## hxd.System.hl

- Fichier : `hxd/System.hl.hx` — 556 lignes — 3 blocs doc — contient du `#if`
- Types : `enum Platform`, `enum SystemValue`, `enum KeyboardLayout`, `class System`
- Dépend de : `h3d.Engine`, `hxd.Cursor`, `hxd.Timer`, `hxd.Window`, `hxd.Window.js`

## hxd.System.js

- Fichier : `hxd/System.js.hx` — 199 lignes — 1 blocs doc — contient du `#if`
- Types : `enum Platform`, `enum SystemValue`, `enum KeyboardLayout`, `class System`
- Dépend de : `hxd.Cursor`, `hxd.Math`, `hxd.Timer`, `hxd.Window.js`
- Utilisé par : `h2d.TextInput`, `h2d.domkit.Style`, `h3d.Engine`, `h3d.impl.Benchmark`, `h3d.impl.DX12Driver`, `h3d.impl.DirectXDriver`, `h3d.impl.RenderContext`, `hxd.App`, `hxd.Cursor`, `hxd.File`, `hxd.SceneEvents`, `hxd.Window.hl`, `hxd.fmt.pak.Build`, `hxd.fmt.pak.Loader`, `hxd.fs.FileConverter`, `hxd.impl.AppContext`, `hxsl.CacheFile`

## hxd.Timer

- Fichier : `hxd/Timer.hx` — 110 lignes — 13 blocs doc — contient du `#if`
- Types : `class Timer`
- Dépend de : `hxd.Math`
- Utilisé par : `h2d.Interactive`, `h2d.Scene3D`, `h2d.domkit.Style`, `h3d.Engine`, `h3d.impl.DX12Driver`, `h3d.impl.GlDriver`, `h3d.impl.MemoryManager`, `h3d.impl.Upscaling`, `h3d.scene.CameraController`, `h3d.scene.Interactive`, `h3d.scene.Object`, `h3d.scene.Scene`, `h3d.scene.Skin`, `h3d.scene.Trail`, `h3d.scene.pbr.Renderer`, `hxd.App`, `hxd.Key`, `hxd.Math`, `hxd.System.hl`, `hxd.System.js`, `hxd.impl.CacheAllocator`, `hxd.impl.FIFOBufferAllocator`

## hxd.WaitEvent

- Fichier : `hxd/WaitEvent.hx` — 61 lignes — 0 blocs doc
- Types : `class WaitEvent`

## hxd.Window

- Fichier : `hxd/Window.hx` — 207 lignes — 6 blocs doc
- Types : `enum DisplayMode`, `class Window`
- Dépend de : `hxd.BitmapData`, `hxd.DropFileEvent`, `hxd.Event`, `hxd.Pad`, `hxd.impl.MouseMode` (import/use)
- Utilisé par : `hxd.Key`, `hxd.Stage`, `hxd.System.hl`

## hxd.Window.hl

- Fichier : `hxd/Window.hl.hx` — 987 lignes — 3 blocs doc — contient du `#if`
- Types : `typedef DisplayMode`, `typedef DisplayMode`, `enum DisplayMode`, `typedef Monitor`, `typedef DisplaySetting`, `class NativeDroppedFile`, `class Window`
- Héritage : `NativeDroppedFile` extends `hxd.DropFileEvent.DroppedFile`
- Dépend de : `hxd.BitmapData`, `hxd.DropFileEvent` (extends/use), `hxd.Event`, `hxd.Key` (import/use), `hxd.Math`, `hxd.Pad`, `hxd.System.js`, `hxd.impl.MouseMode` (import/use)

## hxd.Window.js

- Fichier : `hxd/Window.js.hx` — 623 lignes — 5 blocs doc
- Types : `enum DisplayMode`, `class NativeDroppedFile`, `class Window`
- Héritage : `NativeDroppedFile` extends `hxd.DropFileEvent.DroppedFile`
- Dépend de : `hxd.BitmapData`, `hxd.DropFileEvent` (extends/use), `hxd.Event`, `hxd.Math`, `hxd.Pad`, `hxd.impl.MouseMode` (import/use)
- Utilisé par : `h2d.LoadingScene`, `h2d.Scene`, `h2d.domkit.Style`, `h3d.Engine`, `h3d.impl.Benchmark`, `h3d.impl.GlDriver`, `h3d.impl.VulkanDriver`, `h3d.pass.SSR`, `h3d.scene.CameraController`, `h3d.scene.Scene`, `h3d.scene.pbr.Renderer`, `hxd.SceneEvents`, `hxd.System.hl`, `hxd.System.js`, `hxd.impl.AppContext`
