# hxd.BitmapData

**class** · package [`hxd`](README.md) · source [`hxd/BitmapData.hx`](../../../../hxd/BitmapData.hx)

A CPU image that can be drawn into, used for icons, cursors and fonts.
It uses a canvas on JS, and an array of pixels on other targets. Use `getPixels` to convert it to `Pixels`.

## Constructor

### new

```haxe
function new(width:Int, height:Int):Void
```

Creates a bitmap of the given size, filled with transparent black.

## Static methods

### fromNative

```haxe
static function fromNative(data:BitmapInnerData):BitmapData
```

Creates a bitmap using the given native data, without copying it.

## Variables

### width

```haxe
var width(get, null):Int
```

The width in pixels.

### height

```haxe
var height(get, null):Int
```

The height in pixels.

## Methods

### clear

```haxe
function clear(color:Int):Void
```

Fills the whole bitmap with the color, in `0xAARRGGBB` format.

### fill

```haxe
function fill(x:Int, y:Int, width:Int, height:Int, color:Int):Void
```

Fills the rectangle with the color, in `0xAARRGGBB` format.

### draw

```haxe
function draw(x:Int, y:Int, src:BitmapData, srcX:Int, srcY:Int, width:Int, height:Int, ?blendMode:h2d.BlendMode):Void
```

Copies a rectangle of `src` at the given position (see `drawScaled`).

### drawScaled

```haxe
function drawScaled(x:Int, y:Int, width:Int, height:Int, src:BitmapData, srcX:Int, srcY:Int, srcWidth:Int, srcHeight:Int, ?blendMode:h2d.BlendMode, ?smooth:Bool = true):Void
```

Copies a rectangle of `src` to a rectangle of this bitmap, scaling it if needed.
Only supported on HashLink, with `blendMode` set to `None`, and with both rectangles inside the bitmaps.

### line

```haxe
function line(x0:Int, y0:Int, x1:Int, y1:Int, color:Int):Void
```

Draws a line from `(x0, y0)` to `(x1, y1)` with the color, in `0xAARRGGBB` format, clipped to the bitmap.
Uses Yevgeny P. Kuzmin's Bresenham line algorithm with built-in clipping (Computer Graphics Forum, 14(5):275-280, 2005).

### dispose

```haxe
inline function dispose():Void
```

Releases the data of the bitmap.

### clone

```haxe
function clone():BitmapData
```

Returns a copy of the bitmap.

### sub

```haxe
function sub(x:Float, y:Float, w:Int, h:Int):BitmapData
```

Returns a copy of a rectangle of the bitmap.

### lock

```haxe
function lock():Void
```

Inform that we will perform several pixel operations on the BitmapData.

### unlock

```haxe
function unlock():Void
```

Inform that we have finished performing pixel operations on the BitmapData.

### getPixel

```haxe
function getPixel(x:Int, y:Int):Int
```

Access the pixel color value at the given position. Note : this function can be very slow if done many times and the BitmapData has not been locked.

### setPixel

```haxe
function setPixel(x:Int, y:Int, c:Int):Void
```

Modify the pixel color value at the given position. Note : this function can be very slow if done many times and the BitmapData has not been locked.

### getPixels

```haxe
function getPixels():Pixels
```

Returns a copy of the bitmap as `Pixels` (`RGBA` on JS, `BGRA` on other targets).

### setPixels

```haxe
function setPixels(pixels:Pixels):Void
```

Replaces the content of the bitmap by `pixels`, which must have the same size. The pixels are converted to the native format.

### toNative

```haxe
inline function toNative():BitmapInnerData
```

Returns the native data of the bitmap.

### toPNG

```haxe
function toPNG():Bytes
```

Encodes the bitmap as a PNG file.
