# hxd.res.Image

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Image.hx`](../../../../../hxd/res/Image.hx)

Extends: [`hxd.res.Resource`](Resource.md)

An image resource (PNG, JPEG, GIF, TGA, DDS, HDR or RAW).
Use `toTile` for 2D, `toTexture` for 3D, or `getPixels` to read its pixels.

## Constructor

### new

```haxe
function new(entry:hxd.fs.FileEntry):Void
```

## Static variables

### DEFAULT_FILTER

```haxe
static var DEFAULT_FILTER:h3d.mat.Filter
```

The filter of the loaded textures.

### MIPMAP_MAX_SIZE

```haxe
static var MIPMAP_MAX_SIZE:Int
```

Reduce textures quality with mipmaps by only loading up to the desired size.

### ASYNC_LOADING

```haxe
static var ASYNC_LOADING:Bool
```

Set to false to load synchronously the textures having the AsyncLoading flag.

## Static methods

### setupTextureFlags

```haxe
static dynamic function setupTextureFlags(tex:h3d.mat.Texture):Void
```

Called when a texture is created, before it is loaded. Can be replaced to set texture flags, such as `AsyncLoading`.

### getMipMapMaxSize

```haxe
static dynamic function getMipMapMaxSize(img:Image):Int
```

Returns the maximum size of the loaded mip levels of the image. Can be replaced to use a different size per image.

## Variables

### enableAsyncLoading

```haxe
var enableAsyncLoading:Bool
```

Currently unused.

### stream

```haxe
var stream(default, null):TextureStream
```

Handles the asynchronous loading and mip levels streaming of the texture (see TextureStream)

### disableStreaming

```haxe
var disableStreaming:Bool
```

Disable the mip levels streaming : the texture is loaded at full resolution.
Must be set before the texture is loaded.

## Methods

### getFormat

```haxe
inline function getFormat():ImageFormat
```

Returns the file format of the image.

### getPixelFormat

```haxe
inline function getPixelFormat():hxd.PixelFormat
```

Returns the pixel format of the decoded image.

### getSize

```haxe
inline function getSize():ImageInfo
```

Returns the information of the image, to read its `width` and `height`.

### getInfo

```haxe
function getInfo():ImageInfo
```

Reads the header of the image file (once) and returns its information.

### getPixels

```haxe
function getPixels(?fmt:hxd.PixelFormat, ?index:Int):hxd.Pixels
```

Decodes the image and returns its pixels, converted to `fmt` if set.
For a DDS file, `index` selects the image: `layer * mipLevels + mipLevel`.

### toBitmap

```haxe
function toBitmap():hxd.BitmapData
```

Decodes the image into a `BitmapData`.

### loadSync

```haxe
function loadSync(?maxSize:Int = 0):h3d.mat.Texture
```

Load synchronously the texture (up to the given size for a streamed texture, 0 for full resolution) and returns it.
Use this when the texture data is required immediately (bakes, caches, etc.)

### toTexture

```haxe
function toTexture():h3d.mat.Texture
```

Returns the texture of the image, created on the first call. Depending on the texture flags, it may be loaded or streamed asynchronously (see `stream`).

### toTile

```haxe
function toTile():h2d.Tile
```

Returns a tile of the whole texture : the texture is loaded at full resolution and is not streamed.

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
