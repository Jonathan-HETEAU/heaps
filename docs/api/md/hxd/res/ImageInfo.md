# hxd.res.ImageInfo

**class** · package [`hxd.res`](README.md) · module `hxd.res.Image` · source [`hxd/res/Image.hx`](../../../../../hxd/res/Image.hx)

The information read from the header of an image file.

## Constructor

### new

```haxe
function new():Void
```

Creates empty information.

## Variables

### width

```haxe
var width(default, null):Int
```

The width of the image, after skipping the mip levels above `Image.MIPMAP_MAX_SIZE`.

### height

```haxe
var height(default, null):Int
```

The height of the image, after skipping the mip levels above `Image.MIPMAP_MAX_SIZE`.

### mipLevels

```haxe
var mipLevels(default, null):Int
```

The number of mip levels used.

### mipOffset

```haxe
var mipOffset(default, null):Int
```

The number of mip levels of the file skipped to respect `Image.MIPMAP_MAX_SIZE`.

### layerCount

```haxe
var layerCount(default, null):Int
```

The number of layers of a texture array.

### flags

```haxe
var flags(default, null):EnumFlags<ImageInfoFlag>
```

The flags of the image.

### dataFormat

```haxe
var dataFormat(default, null):ImageFormat
```

The file format.

### pixelFormat

```haxe
var pixelFormat(default, null):hxd.PixelFormat
```

The format of the decoded pixels.
