# Package `hxd.impl`

[← retour](../DEPENDENCIES.md)

## hxd.impl.AllocPos

- Fichier : `hxd/impl/AllocPos.hx` — 42 lignes — 0 blocs doc
- Types : `class AllocPos`
- Utilisé par : `h2d.Graphics`, `h3d.Buffer`, `h3d.impl.MemoryManager`, `h3d.mat.Texture`, `h3d.prim.BigPrimitive`

## hxd.impl.Allocator

- Fichier : `hxd/impl/Allocator.hx` — 114 lignes — 0 blocs doc
- Types : `enum_abstract BufferFlags`, `class Allocator`
- Dépend de : `h3d.Buffer`, `h3d.Indexes`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.Math`
- Utilisé par : `h2d.Graphics`, `h2d.TileGroup`, `h3d.Engine`, `h3d.GPUCounter`, `h3d.parts.Particles`, `h3d.prim.BigPrimitive`, `h3d.prim.Blendshape`, `h3d.prim.DynamicPrimitive`, `h3d.prim.RawPrimitive`, `h3d.scene.Batcher`, `h3d.scene.GPUMeshBatch`, `h3d.scene.MeshBatch`, `h3d.scene.RenderContext`, `h3d.scene.Skin`, `hxd.impl.CacheAllocator`, `hxd.impl.FIFOBufferAllocator`

## hxd.impl.AnyProps

- Fichier : `hxd/impl/AnyProps.hx` — 35 lignes — 0 blocs doc — contient du `#if`
- Types : `class AnyProps`
- Utilisé par : `h3d.mat.BaseMaterial`, `h3d.scene.Renderer`

## hxd.impl.AppContext

- Fichier : `hxd/impl/AppContext.hx` — 67 lignes — 1 blocs doc — contient du `#if`
- Types : `class AppContext`
- Dépend de : `h3d.Engine`, `hxd.App`, `hxd.System.js`, `hxd.Window.js`

## hxd.impl.ArrayIterator

- Fichier : `hxd/impl/ArrayIterator.hx` — 18 lignes — 0 blocs doc
- Types : `class ArrayIterator`
- Utilisé par : `h2d.Layers`, `h2d.Object`, `h2d.col.IPolygon`, `h2d.col.IPolygons`, `h2d.col.Polygon`, `h2d.col.Polygons`, `h2d.col.Segments`, `h3d.scene.Object`, `hxd.fmt.pak.FileSystem`, `hxd.fs.BytesFileSystem`, `hxd.fs.EmbedFileSystem`, `hxd.fs.FileEntry`, `hxd.fs.MultiFileSystem`, `hxd.res.Any`, `hxd.snd.Manager`

## hxd.impl.BitSet

- Fichier : `hxd/impl/BitSet.hx` — 35 lignes — 0 blocs doc
- Types : `abstract BitSet`
- Utilisé par : `h3d.col.PolygonBuffer`

## hxd.impl.BitsBuilder

- Fichier : `hxd/impl/BitsBuilder.hx` — 148 lignes — 0 blocs doc
- Types : `class BitsBuilder`
- Utilisé par : `h3d.mat.Pass`, `h3d.mat.Stencil`, `h3d.mat.Texture`

## hxd.impl.CacheAllocator

- Fichier : `hxd/impl/CacheAllocator.hx` — 366 lignes — 2 blocs doc — contient du `#if`
- Types : `class Bucket`, `class Cache`, `class CacheAllocator`
- Héritage : `CacheAllocator` extends `Allocator`
- Dépend de : `h3d.Buffer`, `h3d.Indexes`, `hxd.BufferFormat`, `hxd.Math`, `hxd.Timer`, `hxd.impl.Allocator` (extends/import/use)

## hxd.impl.FIFOBufferAllocator

- Fichier : `hxd/impl/FIFOBufferAllocator.hx` — 215 lignes — 2 blocs doc
- Types : `class Cache`, `typedef BufferConfig`, `class FIFOBufferAllocator`
- Héritage : `FIFOBufferAllocator` extends `Allocator`
- Dépend de : `h3d.Buffer`, `h3d.Indexes`, `hxd.BufferFormat`, `hxd.Timer`, `hxd.impl.Allocator` (extends/import/use)

## hxd.impl.Float32

- Fichier : `hxd/impl/Float32.hx` — 3 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef Float32`
- Utilisé par : `h3d.anim.BufferAnimation`, `h3d.col.FPoint`, `h3d.col.Polygon`, `h3d.col.PolygonBuffer`, `h3d.prim.BigPrimitive`, `h3d.prim.Polygon`, `hxd.FloatBuffer`, `hxd.fmt.hmd.Library`, `hxd.impl.TypedArray`

## hxd.impl.MouseMode

- Fichier : `hxd/impl/MouseMode.hx` — 44 lignes — 4 blocs doc
- Types : `enum MouseMode`
- Dépend de : `hxd.Pad`
- Utilisé par : `hxd.Window`, `hxd.Window.hl`, `hxd.Window.js`

## hxd.impl.Properties

- Fichier : `hxd/impl/Properties.hx` — 80 lignes — 0 blocs doc
- Types : `class Properties`
- Dépend de : `h3d.Vector`, `h3d.Vector4`

## hxd.impl.TypedArray

- Fichier : `hxd/impl/TypedArray.hx` — 15 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef Float32Array`, `typedef Uint16Array`, `typedef Int16Array`, `typedef Uint8Array`, `typedef ArrayBuffer`, `typedef Uint32Array`, `typedef ArrayBufferView`, `typedef Float32Array`
- Dépend de : `hxd.impl.Float32`
- Utilisé par : `h3d.anim.BufferAnimation`, `h3d.impl.GlDriver`, `h3d.impl.RenderContext`, `h3d.shader.Buffers`, `hxd.FloatBuffer`, `hxd.FloatBufferLoader`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.hmd.Library`, `hxd.impl.UncheckedBytes`, `hxd.snd.Mp3Data`, `hxd.snd.webaudio.Driver`

## hxd.impl.UInt16

- Fichier : `hxd/impl/UInt16.hx` — 3 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef UInt16`
- Utilisé par : `hxd.IndexBuffer`

## hxd.impl.UncheckedBytes

- Fichier : `hxd/impl/UncheckedBytes.hx` — 38 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef InnerData`, `abstract UncheckedBytes`
- Dépend de : `hxd.impl.TypedArray`
- Utilisé par : `hxd.Pixels`
