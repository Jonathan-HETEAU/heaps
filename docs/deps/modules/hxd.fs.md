# Package `hxd.fs`

[← retour](../DEPENDENCIES.md)

## hxd.fs.AsyncRead

- Fichier : `hxd/fs/AsyncRead.hx` — 277 lignes — 21 blocs doc — contient du `#if`
- Types : `typedef ThreadLoop`, `typedef ThreadLoop`, `typedef ThreadLoop`, `enum_abstract AsyncReadState`, `class AsyncRead`, `class AsyncReader`
- Dépend de : `hxd.fs.FileEntry`
- Utilisé par : `hxd.fs.FileEntry`, `hxd.res.TextureStream`

## hxd.fs.BytesFileSystem

- Fichier : `hxd/fs/BytesFileSystem.hx` — 126 lignes — 9 blocs doc — contient du `#if`
- Types : `class BytesFileEntry`, `class BytesFileSystem`
- Héritage : `BytesFileEntry` extends `FileEntry`, `BytesFileSystem` implements `FileSystem`
- Dépend de : `hxd.fs.FileEntry` (extends/use), `hxd.fs.FileSystem` (implements/use), `hxd.fs.LoadedBitmap`, `hxd.impl.ArrayIterator`
- Utilisé par : `hxd.fs.Convert`, `hxd.res.Any`

## hxd.fs.Convert

- Fichier : `hxd/fs/Convert.hx` — 807 lignes — 36 blocs doc — contient du `#if`
- Types : `class Convert`, `typedef MatCollideInfo`, `class ConvertFBX2HMD`, `class Command`, `class ConvertWAV2MP3`, `class ConvertWAV2OGG`, `class ConvertTGA2PNG`, `class ConvertFNT2BFNT`, `class CompressIMG`, `class DummyConvert`, `class ConvertBinJSON`, `class ConvertSVGToMSDF`
- Héritage : `ConvertFBX2HMD` extends `Convert`, `Command` extends `Convert`, `ConvertWAV2MP3` extends `Convert`, `ConvertWAV2OGG` extends `Convert`, `ConvertTGA2PNG` extends `Convert`, `ConvertFNT2BFNT` extends `Convert`, `CompressIMG` extends `Convert`, `DummyConvert` extends `Convert`, `ConvertBinJSON` extends `Convert`, `ConvertSVGToMSDF` extends `Convert`
- Dépend de : `h2d.Tile`, `h3d.anim.Animation`, `h3d.prim.ModelDatabase`, `hxd.BufferFormat`, `hxd.File`, `hxd.Pixels`, `hxd.fmt.bfnt.FontParser`, `hxd.fmt.bfnt.Writer`, `hxd.fmt.fbx.Data`, `hxd.fmt.fbx.HMDOut`, `hxd.fmt.fbx.Parser`, `hxd.fmt.hbson.Writer`, `hxd.fmt.hmd.Writer`, `hxd.fs.BytesFileSystem`, `hxd.fs.FileConverter`, `hxd.res.Image`
- Utilisé par : `hxd.fs.FileConverter`

## hxd.fs.EmbedFileSystem

- Fichier : `hxd/fs/EmbedFileSystem.hx` — 224 lignes — 8 blocs doc — contient du `#if`
- Types : `class EmbedEntry`, `class EmbedFileSystem`
- Héritage : `EmbedEntry` extends `FileEntry`
- Dépend de : `hxd.fs.FileEntry` (extends/use), `hxd.fs.FileSystem`, `hxd.fs.LoadedBitmap`, `hxd.fs.NotFound`, `hxd.impl.ArrayIterator`, `hxd.res.EmbedOptions`, `hxd.res.FileTree`
- Utilisé par : `hxd.Res`

## hxd.fs.Exclusive

- Fichier : `hxd/fs/Exclusive.hx` — 26 lignes — 2 blocs doc — contient du `#if`
- Types : `class Exclusive`
- Utilisé par : `hxd.res.Loader`

## hxd.fs.FileConfig

- Fichier : `hxd/fs/FileConfig.hx` — 71 lignes — 4 blocs doc — contient du `#if`
- Types : `class FileConfig`
- Dépend de : `hxd.res.Loader`
- Utilisé par : `h3d.prim.ModelDatabase`

## hxd.fs.FileConverter

- Fichier : `hxd/fs/FileConverter.hx` — 547 lignes — 20 blocs doc — contient du `#if`
- Types : `typedef ConvertConfig`, `typedef ConvertRule`, `enum ConvertPattern`, `typedef ConvertCommand`, `typedef ConvertCacheItem`, `class FileConverter`
- Dépend de : `hxd.Math`, `hxd.System.js`, `hxd.fs.Convert`, `hxd.fs.LocalFileSystem`
- Utilisé par : `hxd.fs.Convert`, `hxd.fs.LocalFileSystem`

## hxd.fs.FileEntry

- Fichier : `hxd/fs/FileEntry.hx` — 154 lignes — 23 blocs doc — contient du `#if`
- Types : `class FileEntry`
- Dépend de : `hxd.fs.AsyncRead`, `hxd.fs.FileInput`, `hxd.fs.LoadedBitmap`, `hxd.impl.ArrayIterator`
- Utilisé par : `h2d.domkit.Style`, `h3d.col.PolygonBuffer`, `hxd.fmt.pak.FileSystem`, `hxd.fs.AsyncRead`, `hxd.fs.BytesFileSystem`, `hxd.fs.EmbedFileSystem`, `hxd.fs.FileInput`, `hxd.fs.FileSystem`, `hxd.fs.LocalFileSystem`, `hxd.fs.MultiFileSystem`, `hxd.res.Resource`, `hxsl.SharedShader`

## hxd.fs.FileInput

- Fichier : `hxd/fs/FileInput.hx` — 108 lignes — 4 blocs doc
- Types : `class FileInput`
- Héritage : `FileInput` extends `haxe.io.Input`
- Dépend de : `hxd.Math`, `hxd.fs.FileEntry`
- Utilisé par : `hxd.fs.FileEntry`

## hxd.fs.FileSystem

- Fichier : `hxd/fs/FileSystem.hx` — 31 lignes — 7 blocs doc
- Types : `interface FileSystem`
- Dépend de : `hxd.fs.FileEntry`
- Utilisé par : `hxd.fmt.pak.FileSystem`, `hxd.fs.BytesFileSystem`, `hxd.fs.EmbedFileSystem`, `hxd.fs.MultiFileSystem`, `hxd.fs.SourceLoader`, `hxd.res.Loader`

## hxd.fs.LoadedBitmap

- Fichier : `hxd/fs/LoadedBitmap.hx` — 47 lignes — 6 blocs doc — contient du `#if`
- Types : `typedef LoadedBitmapData`, `typedef LoadedBitmapData`, `abstract LoadedBitmap`
- Dépend de : `hxd.BitmapData`
- Utilisé par : `hxd.fs.BytesFileSystem`, `hxd.fs.EmbedFileSystem`, `hxd.fs.FileEntry`, `hxd.fs.LocalFileSystem`, `hxd.fs.MultiFileSystem`

## hxd.fs.LocalFileSystem

- Fichier : `hxd/fs/LocalFileSystem.hx` — 585 lignes — 24 blocs doc — contient du `#if`
- Types : `class LocalEntry`
- Héritage : `LocalEntry` extends `FileEntry`
- Dépend de : `h3d.Engine`, `hxd.fs.FileConverter`, `hxd.fs.FileEntry` (extends/use), `hxd.fs.LoadedBitmap`
- Utilisé par : `h2d.domkit.Style`, `h3d.mat.MaterialDatabase`, `h3d.prim.ModelDatabase`, `hxd.Res`, `hxd.fmt.pak.Build`, `hxd.fs.FileConverter`, `hxd.fs.SourceLoader`, `hxd.res.FileTree`

## hxd.fs.MultiFileSystem

- Fichier : `hxd/fs/MultiFileSystem.hx` — 138 lignes — 9 blocs doc
- Types : `class MultiFileEntry`, `class MultiFileSystem`
- Héritage : `MultiFileEntry` extends `FileEntry`, `MultiFileSystem` implements `FileSystem`
- Dépend de : `hxd.fs.FileEntry` (extends/use), `hxd.fs.FileSystem` (implements/use), `hxd.fs.LoadedBitmap`, `hxd.fs.NotFound`, `hxd.impl.ArrayIterator`

## hxd.fs.NotFound

- Fichier : `hxd/fs/NotFound.hx` — 20 lignes — 3 blocs doc
- Types : `class NotFound`
- Utilisé par : `hxd.fs.EmbedFileSystem`, `hxd.fs.MultiFileSystem`, `hxd.res.NotFound`

## hxd.fs.SourceLoader

- Fichier : `hxd/fs/SourceLoader.hx` — 53 lignes — 6 blocs doc — contient du `#if`
- Types : `class SourceLoader`
- Dépend de : `hxd.fs.FileSystem`, `hxd.fs.LocalFileSystem`, `hxd.res.NotFound`
- Utilisé par : `hxsl.SharedShader`
