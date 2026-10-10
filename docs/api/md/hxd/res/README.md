# Package `hxd.res`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AnimGraph`](AnimGraph.md) | typedef | An animation graph resource. |
| [`Any`](Any.md) | class | A resource of unknown type, as returned by `hxd.res.Loader.load`: use one of its `toXXX` methods to load it as a specific type. |
| [`Atlas`](Atlas.md) | class | A texture atlas in the libGDX/Spine `.atlas` text format, giving named tiles in one or more images. |
| [`BDFFont`](BDFFont.md) | class | * Parse BDF font format to h2d.Font |
| [`BDFFontChar`](BDFFontChar.md) | class | * Intermediate representation of a glyph. |
| [`BitmapFont`](BitmapFont.md) | class | A bitmap font: a font description file (`.fnt`, in BMFont text or XML format, or other supported formats) with its image. |
| [`DefaultFont`](DefaultFont.md) | class | The default font embedded in Heaps. |
| [`DynamicText`](DynamicText.md) | class | Typed texts loaded from an XML file, for localization. |
| [`DynamicTextMeta`](DynamicTextMeta.md) | typedef | The metadata of the texts of a group, by id. |
| [`DynamicTextMetaContent`](DynamicTextMetaContent.md) | typedef | The metadata of a text: `skip` is set by the `skip` attribute, `sub` is the metadata of a group's children. |
| [`Embed`](Embed.md) | class | Macros to embed files and fonts in the compiled application. |
| [`EmbedOptions`](EmbedOptions.md) | typedef | Options for embedding resources in the application. |
| [`Filter`](Filter.md) | enum | The chroma upsampling filter of `NanoJpeg`. |
| [`Font`](Font.md) | class | Allows to build a font bitmap to be used by h2d.Text. |
| [`FontBuildOptions`](FontBuildOptions.md) | typedef | Options for `FontBuilder.getFont`. |
| [`FontBuilder`](FontBuilder.md) | class | FontBuilder allows to dynamicaly create a Bitmap font from a vector font. |
| [`Gradients`](Gradients.md) | class | A Photoshop gradients file (`.grd`), converted to textures of horizontal gradients. |
| [`Image`](Image.md) | class | An image resource (PNG, JPEG, GIF, TGA, DDS, HDR or RAW). |
| [`ImageFormat`](ImageFormat.md) | enum abstract | The file format of an image. |
| [`ImageInfo`](ImageInfo.md) | class | The information read from the header of an image file. |
| [`ImageInfoFlag`](ImageInfoFlag.md) | enum | Flags of an `ImageInfo`. |
| [`Key`](Key.md) | abstract | A reference to a text by its path, created by `makeID`. |
| [`Loader`](Loader.md) | class | Loads the resources of a file system and caches them by path. |
| [`Model`](Model.md) | class | A 3D model file. |
| [`NanoJpeg`](NanoJpeg.md) | class | A pure Haxe baseline JPEG decoder (progressive and lossless JPEG are not supported). |
| [`NoArg`](NoArg.md) | abstract | The argument type of the `Key` of a text without parameters. |
| [`NotFound`](NotFound.md) | typedef | The error thrown when a resource file is not found. |
| [`Prefab`](Prefab.md) | typedef | A prefab resource. |
| [`Resource`](Resource.md) | class | The base class of all the resources loaded by `hxd.res.Loader`. |
| [`Sound`](Sound.md) | class | A sound file resource (WAV, MP3 or Ogg Vorbis), played with `hxd.snd.Manager`. |
| [`SoundFormat`](SoundFormat.md) | enum | The supported sound file formats. |
| [`TextureStream`](TextureStream.md) | class | Handles the asynchronous loading of an Image texture. |
| [`TiledMap`](TiledMap.md) | class | A map made with the Tiled editor (`.tmx`). |
| [`TiledMapData`](TiledMapData.md) | typedef | The content of a Tiled map. |
| [`TiledMapLayer`](TiledMapLayer.md) | typedef | A layer of a Tiled map. |
