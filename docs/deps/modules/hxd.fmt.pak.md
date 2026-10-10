# Package `hxd.fmt.pak`

[← retour](../DEPENDENCIES.md)

## hxd.fmt.pak.Build

- Fichier : `hxd/fmt/pak/Build.hx` — 376 lignes — 18 blocs doc — contient du `#if`
- Types : `class Build`
- Dépend de : `hxd.File`, `hxd.Math`, `hxd.System.js`, `hxd.fmt.pak.Data` (import/use), `hxd.fmt.pak.FileSystem`, `hxd.fmt.pak.Reader`, `hxd.fmt.pak.Writer`, `hxd.fs.LocalFileSystem`, `hxd.res.NotFound`, `hxd.snd.OggData`

## hxd.fmt.pak.Data

- Fichier : `hxd/fmt/pak/Data.hx` — 63 lignes — 14 blocs doc
- Types : `class File`, `class Data`
- Utilisé par : `hxd.fmt.pak.Build`, `hxd.fmt.pak.FileSystem`, `hxd.fmt.pak.Reader`, `hxd.fmt.pak.Writer`

## hxd.fmt.pak.FileSystem

- Fichier : `hxd/fmt/pak/FileSystem.hx` — 332 lignes — 19 blocs doc — contient du `#if`
- Types : `typedef FileSeekMode`, `enum FileSeekMode`, `class FileInput`, `class FileSeek`, `class PakEntry`, `class FileSystem`
- Héritage : `FileInput` extends `haxe.io.BytesInput`, `PakEntry` extends `FileEntry`, `FileSystem` implements `hxd.fs.FileSystem`
- Dépend de : `hxd.File`, `hxd.fmt.pak.Data`, `hxd.fmt.pak.Reader`, `hxd.fs.FileEntry` (extends/import/use), `hxd.fs.FileSystem` (implements/use), `hxd.impl.ArrayIterator`, `hxd.res.NotFound`
- Utilisé par : `hxd.Res`, `hxd.fmt.pak.Build`, `hxd.fmt.pak.Loader`, `hxd.fmt.tiff.Reader`

## hxd.fmt.pak.Loader

- Fichier : `hxd/fmt/pak/Loader.hx` — 93 lignes — 2 blocs doc — contient du `#if`
- Types : `class Loader`
- Héritage : `Loader` extends `h2d.Object`
- Dépend de : `h2d.Graphics`, `h2d.Object` (extends/use), `h2d.RenderContext`, `h2d.Scene`, `h3d.Engine`, `hxd.System.js`, `hxd.fmt.pak.FileSystem`, `hxd.net.BinaryLoader`, `hxd.res.Loader`

## hxd.fmt.pak.Reader

- Fichier : `hxd/fmt/pak/Reader.hx` — 53 lignes — 3 blocs doc
- Types : `class Reader`
- Dépend de : `hxd.File`, `hxd.fmt.pak.Data` (import/use)
- Utilisé par : `hxd.fmt.pak.Build`, `hxd.fmt.pak.FileSystem`

## hxd.fmt.pak.Writer

- Fichier : `hxd/fmt/pak/Writer.hx` — 93 lignes — 4 blocs doc
- Types : `class Writer`
- Dépend de : `hxd.File`, `hxd.fmt.pak.Data` (import/use)
- Utilisé par : `hxd.fmt.pak.Build`
