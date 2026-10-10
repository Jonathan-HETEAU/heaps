# Package `hxd.res`

[← retour](../DEPENDENCIES.md)

## hxd.res.AnimGraph

- Fichier : `hxd/res/AnimGraph.hx` — 14 lignes — 2 blocs doc — contient du `#if`
- Types : `typedef AnimGraph`, `typedef AnimGraph`
- Dépend de : `hxd.res.Resource`
- Utilisé par : `hxd.res.Any`

## hxd.res.Any

- Fichier : `hxd/res/Any.hx` — 112 lignes — 12 blocs doc
- Types : `class SingleFileSystem`, `class Any`
- Héritage : `SingleFileSystem` extends `hxd.fs.BytesFileSystem`, `Any` extends `Resource`
- Dépend de : `hxd.fs.BytesFileSystem` (extends/use), `hxd.impl.ArrayIterator`, `hxd.res.AnimGraph`, `hxd.res.Image`, `hxd.res.Loader`, `hxd.res.Model`, `hxd.res.Prefab`, `hxd.res.Resource` (extends/use), `hxd.res.Sound`
- Utilisé par : `h2d.domkit.BaseComponents`, `hxd.res.Embed`, `hxd.res.Loader`

## hxd.res.Atlas

- Fichier : `hxd/res/Atlas.hx` — 154 lignes — 4 blocs doc
- Types : `class Atlas`
- Héritage : `Atlas` extends `Resource`
- Dépend de : `h2d.Flow`, `h2d.Tile`, `hxd.res.Loader`, `hxd.res.Resource` (extends/use)

## hxd.res.BDFFont

- Fichier : `hxd/res/BDFFont.hx` — 448 lignes — 18 blocs doc
- Types : `class BDFFontChar`, `class BDFFont`
- Héritage : `BDFFont` extends `Resource`
- Dépend de : `h2d.Font`, `h2d.Tile`, `hxd.BitmapData`, `hxd.Math`, `hxd.res.Resource` (extends/use)

## hxd.res.BitmapFont

- Fichier : `hxd/res/BitmapFont.hx` — 75 lignes — 4 blocs doc
- Types : `class BitmapFont`
- Héritage : `BitmapFont` extends `Resource`
- Dépend de : `h2d.Font`, `h2d.Tile`, `hxd.fmt.bfnt.FontParser`, `hxd.res.Loader`, `hxd.res.Resource` (extends/use)
- Utilisé par : `h2d.domkit.BaseComponents`, `hxd.res.DefaultFont`

## hxd.res.Config

- Fichier : `hxd/res/Config.hx` — 124 lignes — 12 blocs doc — contient du `#if`
- Types : `enum Platform`, `class Config`
- Utilisé par : `hxd.res.FileTree`

## hxd.res.DefaultFont

- Fichier : `hxd/res/DefaultFont.hx` — 25 lignes — 2 blocs doc
- Types : `class DefaultFont`
- Dépend de : `h2d.Font`, `h3d.Engine`, `hxd.res.BitmapFont`, `hxd.res.Embed`
- Utilisé par : `h2d.CheckBox`, `h2d.domkit.BaseComponents`, `h2d.domkit.Style`, `h3d.impl.Benchmark`, `h3d.impl.FpsGraph`

## hxd.res.DynamicText

- Fichier : `hxd/res/DynamicText.hx` — 495 lignes — 13 blocs doc — contient du `#if`
- Types : `typedef DynamicTextMeta`, `typedef DynamicTextMetaContent`, `abstract NoArg`, `abstract Key`, `class DynamicText`
- Dépend de : `hxd.res.FileTree`

## hxd.res.Embed

- Fichier : `hxd/res/Embed.hx` — 125 lignes — 5 blocs doc — contient du `#if`
- Types : `class Embed`
- Dépend de : `hxd.res.Any`
- Utilisé par : `h3d.parts.Data`, `h3d.scene.pbr.Environment`, `h3d.scene.pbr.Renderer`, `hxd.res.DefaultFont`, `hxd.res.FileTree`

## hxd.res.EmbedOptions

- Fichier : `hxd/res/EmbedOptions.hx` — 15 lignes — 3 blocs doc
- Types : `typedef EmbedOptions`
- Utilisé par : `hxd.Res`, `hxd.fs.EmbedFileSystem`, `hxd.res.FileTree`

## hxd.res.FileTree

- Fichier : `hxd/res/FileTree.hx` — 418 lignes — 13 blocs doc — contient du `#if`
- Types : `typedef FileEntry`, `typedef FileTreeData`, `class FileTree`
- Dépend de : `hxd.fs.LocalFileSystem`, `hxd.res.Config`, `hxd.res.Embed`, `hxd.res.EmbedOptions`, `hxd.res.Loader`, `hxd.res.NotFound`, `hxd.res.Resource`
- Utilisé par : `hxd.Res`, `hxd.fs.EmbedFileSystem`, `hxd.res.DynamicText`

## hxd.res.Font

- Fichier : `hxd/res/Font.hx` — 24 lignes — 2 blocs doc — contient du `#if`
- Types : `class Font`
- Héritage : `Font` extends `Resource`
- Dépend de : `h2d.Font`, `hxd.res.FontBuilder`, `hxd.res.Resource` (extends/use)

## hxd.res.FontBuilder

- Fichier : `hxd/res/FontBuilder.hx` — 185 lignes — 7 blocs doc — contient du `#if`
- Types : `typedef FontBuildOptions`, `class FontBuilder`
- Dépend de : `h2d.Font`, `h2d.Tile`, `h3d.mat.Texture`, `hxd.BitmapData`, `hxd.Charset`, `hxd.Math`
- Utilisé par : `hxd.res.Font`

## hxd.res.Gradients

- Fichier : `hxd/res/Gradients.hx` — 142 lignes — 4 blocs doc
- Types : `class Gradients`
- Héritage : `Gradients` extends `Resource`
- Dépend de : `h2d.Tile`, `h3d.Vector4`, `h3d.mat.Texture`, `hxd.Math`, `hxd.Pixels`, `hxd.fmt.grd.Data` (import/use), `hxd.fmt.grd.Reader`, `hxd.res.Resource` (extends/use)

## hxd.res.Image

- Fichier : `hxd/res/Image.hx` — 825 lignes — 41 blocs doc — contient du `#if`
- Types : `enum_abstract ImageFormat`, `enum ImageInfoFlag`, `class ImageInfo`, `class Image`
- Héritage : `Image` extends `Resource`
- Dépend de : `h2d.Tile`, `h3d.mat.Data`, `h3d.mat.Texture`, `h3d.mat.TextureArray`, `hxd.BitmapData`, `hxd.Math`, `hxd.PixelFormat`, `hxd.Pixels`, `hxd.fmt.hdr.Reader`, `hxd.res.NanoJpeg`, `hxd.res.Resource` (extends/use), `hxd.res.TextureStream`
- Utilisé par : `h2d.CdbLevel`, `h3d.mat.BigTexture`, `h3d.mat.TextureChannels`, `h3d.scene.World`, `hxd.fs.Convert`, `hxd.res.Any`, `hxd.res.TextureStream`

## hxd.res.Loader

- Fichier : `hxd/res/Loader.hx` — 98 lignes — 10 blocs doc
- Types : `class Loader`
- Dépend de : `hxd.fs.Exclusive`, `hxd.fs.FileSystem`, `hxd.res.Any`, `hxd.res.Resource`
- Utilisé par : `h2d.CdbLevel`, `h2d.KeyFrames`, `h2d.Particles`, `h2d.domkit.BaseComponents`, `h2d.domkit.Style`, `h3d.mat.MaterialDatabase`, `h3d.parts.GpuParticles`, `h3d.prim.ModelCache`, `h3d.prim.ModelDatabase`, `h3d.scene.Trail`, `h3d.scene.World`, `hxd.Res`, `hxd.fmt.hmd.Library`, `hxd.fmt.pak.Loader`, `hxd.fs.FileConfig`, `hxd.res.Any`, `hxd.res.Atlas`, `hxd.res.BitmapFont`, `hxd.res.FileTree`, `hxsl.CacheFile`, `hxsl.CacheFile2`

## hxd.res.Model

- Fichier : `hxd/res/Model.hx` — 18 lignes — 2 blocs doc — contient du `#if`
- Types : `class Model`
- Héritage : `Model` extends `Resource`
- Dépend de : `hxd.fmt.hmd.Library`, `hxd.fmt.hmd.Reader`, `hxd.res.Resource` (extends/use)
- Utilisé par : `h3d.prim.ModelCache`, `h3d.scene.World`, `hxd.res.Any`

## hxd.res.NanoJpeg

- Fichier : `hxd/res/NanoJpeg.hx` — 747 lignes — 5 blocs doc — contient du `#if`
- Types : `enum Filter`, `abstract FastBytes`, `class Component`, `class NanoJpeg`
- Utilisé par : `hxd.res.Image`

## hxd.res.NotFound

- Fichier : `hxd/res/NotFound.hx` — 6 lignes — 1 blocs doc
- Types : `typedef NotFound`
- Dépend de : `hxd.fs.NotFound`
- Utilisé par : `h2d.domkit.BaseComponents`, `h3d.mat.MaterialDatabase`, `h3d.parts.GpuParticles`, `h3d.prim.ModelCache`, `h3d.prim.ModelDatabase`, `h3d.scene.Trail`, `h3d.scene.World`, `hxd.fmt.pak.Build`, `hxd.fmt.pak.FileSystem`, `hxd.fs.SourceLoader`, `hxd.res.FileTree`, `hxsl.CacheFile`, `hxsl.CacheFile2`

## hxd.res.Prefab

- Fichier : `hxd/res/Prefab.hx` — 14 lignes — 2 blocs doc — contient du `#if`
- Types : `typedef Prefab`, `typedef Prefab`
- Dépend de : `hxd.res.Resource`
- Utilisé par : `h3d.prim.ModelCache`, `hxd.res.Any`

## hxd.res.Resource

- Fichier : `hxd/res/Resource.hx` — 53 lignes — 7 blocs doc — contient du `#if`
- Types : `class Resource`
- Dépend de : `hxd.fs.FileEntry`
- Utilisé par : `h2d.Video`, `h2d.domkit.Style`, `h3d.Engine`, `h3d.mat.Material`, `h3d.mat.MaterialDatabase`, `hxd.fmt.hmd.Library`, `hxd.res.AnimGraph`, `hxd.res.Any`, `hxd.res.Atlas`, `hxd.res.BDFFont`, `hxd.res.BitmapFont`, `hxd.res.FileTree`, `hxd.res.Font`, `hxd.res.Gradients`, `hxd.res.Image`, `hxd.res.Loader`, `hxd.res.Model`, `hxd.res.Prefab`, `hxd.res.Sound`, `hxd.res.TiledMap`

## hxd.res.Sound

- Fichier : `hxd/res/Sound.hx` — 130 lignes — 12 blocs doc — contient du `#if`
- Types : `enum SoundFormat`, `class Sound`
- Héritage : `Sound` extends `Resource`
- Dépend de : `hxd.res.Resource` (extends/use), `hxd.snd.Channel`, `hxd.snd.ChannelBase`, `hxd.snd.Data`, `hxd.snd.Manager`, `hxd.snd.Mp3Data`, `hxd.snd.OggData`, `hxd.snd.WavData`
- Utilisé par : `hxd.res.Any`, `hxd.snd.Channel`, `hxd.snd.LoadingData`, `hxd.snd.Manager`

## hxd.res.TextureStream

- Fichier : `hxd/res/TextureStream.hx` — 376 lignes — 13 blocs doc
- Types : `class TextureStream`
- Dépend de : `h3d.Engine`, `h3d.impl.Driver`, `h3d.mat.Texture`, `hxd.Math`, `hxd.Pixels`, `hxd.fs.AsyncRead`, `hxd.res.Image`
- Utilisé par : `hxd.res.Image`

## hxd.res.TiledMap

- Fichier : `hxd/res/TiledMap.hx` — 94 lignes — 11 blocs doc
- Types : `typedef TiledMapLayer`, `typedef TiledMapData`, `class TiledMap`
- Héritage : `TiledMap` extends `Resource`
- Dépend de : `hxd.res.Resource` (extends/use)
