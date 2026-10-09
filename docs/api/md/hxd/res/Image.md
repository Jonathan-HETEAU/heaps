# hxd.res.Image

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Image.hx`](../../../../../hxd/res/Image.hx)

Extends: [`hxd.res.Resource`](Resource.md)

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

Specify if we will automatically convert non-power-of-two textures to power-of-two.

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

### getMipMapMaxSize

```haxe
static dynamic function getMipMapMaxSize(img:Image):Int
```

## Variables

### enableAsyncLoading

```haxe
var enableAsyncLoading:Bool
```

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

### getPixelFormat

```haxe
inline function getPixelFormat():hxd.PixelFormat
```

### getSize

```haxe
inline function getSize():ImageInfo
```

### getInfo

```haxe
function getInfo():ImageInfo
```

### getPixels

```haxe
function getPixels(?fmt:hxd.PixelFormat, ?index:Int):hxd.Pixels
```

### toBitmap

```haxe
function toBitmap():hxd.BitmapData
```

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

### toTile

```haxe
function toTile():h2d.Tile
```

Returns a tile of the whole texture : the texture is loaded at full resolution and is not streamed.

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
