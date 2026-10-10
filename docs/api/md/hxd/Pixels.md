# hxd.Pixels

**class** · package [`hxd`](README.md) · source [`hxd/Pixels.hx`](../../../../hxd/Pixels.hx)

An image in CPU memory: its bytes, size and `PixelFormat`.
It is used to load, convert and save images, and to upload data to a `h3d.mat.Texture`.

## Constructor

### new

```haxe
function new(width:Int, height:Int, bytes:Bytes, format:PixelFormat, ?offset:Int = 0):Void
```

Creates an image using the given bytes, without copying them. See `alloc` to allocate new bytes.

## Static methods

### switchEndian

```haxe
static inline function switchEndian(v:Int):Int
```

Reverses the order of the 4 bytes of `v`.

### switchBR

```haxe
static inline function switchBR(v:Int):Int
```

Swaps the first and third bytes of `v` (converts between `0xAARRGGBB` and `0xAABBGGRR`).

### calcDataSize

```haxe
static function calcDataSize(width:Int, height:Int, format:PixelFormat):Int
```

Returns the size in bytes of an image of the given size and format.

### calcStride

```haxe
static function calcStride(width:Int, format:PixelFormat):Int
```

Returns the size in bytes of a row of pixels (of a row of 4x4 blocks for compressed formats).

### isFloatFormat

```haxe
static function isFloatFormat(format:PixelFormat):Bool
```

Tells if the format stores float values (16 or 32 bits floats).

### getChannelOffset

```haxe
static function getChannelOffset(format:PixelFormat, channel:Channel):Int
```

Returns the byte offset for the requested channel (0=R,1=G,2=B,3=A)
Returns -1 if the channel is not found

### alloc

```haxe
static function alloc(width:Int, height:Int, format:PixelFormat):Pixels
```

Allocates an image of the given size and format, filled with zeros.

### toDDSLayers

```haxe
static function toDDSLayers(pixels:Array<Pixels>, ?isCubeMap:Bool = false):Bytes
```

Build DDS texture bytes from an array of pixels :
- can contain a single image
- can contain multiple layers (set isCubeMap = true if it's a cubemap)
- can contain single or multiple layers with mipmaps (auto detected with diffences in size)

## Variables

### bytes

```haxe
var bytes:Bytes
```

The data of the image, starting at `offset`.

### format

```haxe
var format(get, null):PixelFormat
```

The format of the pixels. Use `convert` to change it.

### width

```haxe
var width(default, null):Int
```

The width in pixels.

### height

```haxe
var height(default, null):Int
```

The height in pixels.

### dataSize

```haxe
var dataSize(default, null):Int
```

The size of the image data in bytes.

### offset

```haxe
var offset:Int
```

The position of the image data in `bytes`.

### flags

```haxe
var flags:EnumFlags<Flags>
```

The flags of the image.

## Methods

### sub

```haxe
function sub(x:Int, y:Int, width:Int, height:Int):Pixels
```

Returns a copy of a rectangle of the image. Throws if it is outside the image.

### blit

```haxe
function blit(x:Int, y:Int, src:Pixels, srcX:Int, srcY:Int, width:Int, height:Int):Void
```

Copies a rectangle of `src` at the given position. `src` is converted to the format of this image first.

### clear

```haxe
function clear(color:Int, ?preserveMask:Int = 0):Void
```

Fills the image with the color, in `0xAARRGGBB` format. The bits set in `preserveMask` keep their current value.
Only supported for 4 bytes formats (`BGRA`, `RGBA`, `ARGB`), unless all the bytes of the color are equal.

### toVector

```haxe
function toVector():Vector<Int>
```

Returns the colors of the pixels in `0xAARRGGBB` format. Only supported for `BGRA`, `RGBA` and `ARGB`.

### makeSquare

```haxe
function makeSquare(?copy:Bool):Pixels
```

Extends the image to power of two dimensions, filling the new pixels with zeros. Returns a new image if `copy` is set, or modifies this one.

### flipY

```haxe
function flipY():Void
```

Flips the image vertically, in place.

### convert

```haxe
function convert(target:PixelFormat):Void
```

Converts the pixels to the `target` format, in place. Throws if the conversion is not supported.

### getPixel

```haxe
function getPixel(x:Int, y:Int):Int
```

Returns the color of the pixel in `0xAARRGGBB` format (for `BGRA`, `RGBA` and `ARGB`), or its raw value (for `R8` and `RG8`).

### setPixel

```haxe
function setPixel(x:Int, y:Int, color:Int):Void
```

Sets the color of the pixel in `0xAARRGGBB` format (for `BGRA`, `RGBA` and `ARGB`), or its raw value (for `R8` and `RG8`).

### getPixelF

```haxe
function getPixelF(x:Int, y:Int, ?v:h3d.Vector4):h3d.Vector4
```

Returns the value of the pixel as floats in `v` (or in a new vector). 8 and 16 bits channels are returned in the `[0, 1]` range.

### setPixelF

```haxe
function setPixelF(x:Int, y:Int, v:h3d.Vector4):Void
```

Sets the value of the pixel from floats. 8 and 16 bits channels take values in the `[0, 1]` range.

### dispose

```haxe
function dispose():Void
```

Releases the bytes of the image.

### toString

```haxe
function toString():String
```

Returns a description of the size and format of the image.

### toPNG

```haxe
function toPNG(?level:Int = 9):Bytes
```

Encodes the image as a PNG file with the given compression level. Images not in `ARGB` or `R8` format are converted to `BGRA` first.

### toDDS

```haxe
function toDDS():Bytes
```

Encodes the image as a DDS file (see `toDDSLayers`).

### clone

```haxe
function clone():Pixels
```

Returns a copy of the image.
