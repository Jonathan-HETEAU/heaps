# Package `hxd.fs`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AsyncRead`](AsyncRead.md) | class | A pending asynchronous read, returned by `FileEntry.readBytesAsync`. |
| [`AsyncReadState`](AsyncReadState.md) | enum abstract | The state of an `AsyncRead`. |
| [`AsyncReader`](AsyncReader.md) | class | Reads file data asynchronously : a single IO thread is shared by all file systems, reading the pending requests by priority order. |
| [`BytesFileEntry`](BytesFileEntry.md) | class | A file entry whose content is in memory. |
| [`BytesFileSystem`](BytesFileSystem.md) | class | Base class of the file systems whose files are in memory (such as the embedded files): subclasses implement `getBytes`. |
| [`Command`](Command.md) | class | A conversion running an external command. |
| [`CompressIMG`](CompressIMG.md) | class | Converts images to compressed DDS textures with the `texconv` or `CompressonatorCLI` commands. |
| [`Convert`](Convert.md) | class | A resource file conversion, such as FBX to HMD. |
| [`ConvertBinJSON`](ConvertBinJSON.md) | class | Converts JSON files (and Hide files such as prefabs) to the binary HBSON format. |
| [`ConvertCacheItem`](ConvertCacheItem.md) | typedef | A conversion stored in the cache (`.tmp/cache.dat`), used to skip the conversion when the source file did not change. |
| [`ConvertCommand`](ConvertCommand.md) | typedef | The conversions of a rule, with their parameters, and the next command applied to the result. |
| [`ConvertConfig`](ConvertConfig.md) | typedef | The conversion rules of a directory. |
| [`ConvertFBX2HMD`](ConvertFBX2HMD.md) | class | Converts FBX models to the HMD format. |
| [`ConvertFNT2BFNT`](ConvertFNT2BFNT.md) | class | Converts bitmap font descriptions to the binary BFNT format. |
| [`ConvertPattern`](ConvertPattern.md) | enum | The files matched by a conversion rule, from the key of the `fs.convert` entry. |
| [`ConvertRule`](ConvertRule.md) | typedef | A conversion rule: the files matching `pt` are converted with `cmd`. |
| [`ConvertSVGToMSDF`](ConvertSVGToMSDF.md) | class | Converts SVG images to multi-channel signed distance field PNG images with the `msdfgen` command. |
| [`ConvertTGA2PNG`](ConvertTGA2PNG.md) | class | Converts uncompressed 32 bits TGA images to PNG. |
| [`ConvertWAV2MP3`](ConvertWAV2MP3.md) | class | Converts WAV to MP3 with the `lame` command. |
| [`ConvertWAV2OGG`](ConvertWAV2OGG.md) | class | Converts WAV to Ogg Vorbis with the `oggenc` command (`oggenc2` on Windows). |
| [`DummyConvert`](DummyConvert.md) | class | Replaces the file by an empty one. |
| [`EmbedFileSystem`](EmbedFileSystem.md) | class | A read-only file system whose files are embedded in the application as Haxe resources. |
| [`Exclusive`](Exclusive.md) | class | A global lock protecting the resource loading when the `heaps_mt_loader` define is set, to load resources from several threads. |
| [`FileConfig`](FileConfig.md) | class | Per directory configuration read from JSON files (such as `props.json`) in the resources: the configuration of a directory is merged with the one of its parent directories. |
| [`FileConverter`](FileConverter.md) | class | Converts the resource files of a `LocalFileSystem` according to the `fs.convert` rules of the `props.json` files, and caches the results in the `.tmp` directory. |
| [`FileEntry`](FileEntry.md) | class | A file or directory of a `FileSystem`. |
| [`FileInput`](FileInput.md) | class | A buffered input reading a file entry, returned by `FileEntry.open`. |
| [`FileSystem`](FileSystem.md) | interface | A file system containing the resources, used by `hxd.res.Loader`. |
| [`LoadedBitmap`](LoadedBitmap.md) | abstract | An image decoded by the platform, returned by `FileEntry.loadBitmap`. |
| [`LoadedBitmapData`](LoadedBitmapData.md) | typedef | The native type of a `LoadedBitmap`: an image element on JS, a `BitmapData` on other targets. |
| [`LocalEntry`](LocalEntry.md) | class | A file or directory of a `LocalFileSystem`. |
| [`LocalFileSystem`](LocalFileSystem.md) | class | A file system reading the files of a local directory, converting them when needed (see `FileConverter`) and watching their changes. |
| [`MultiFileSystem`](MultiFileSystem.md) | class | Combines several file systems: a file is searched in each of them, in order. |
| [`NotFound`](NotFound.md) | class | The error thrown when a resource file is not found. |
| [`SourceLoader`](SourceLoader.md) | class | Locates the source files of the application at runtime, for live reloading (used for shaders). |
