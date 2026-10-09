# hxd.BitmapData

**class** · package [`hxd`](README.md) · source [`hxd/BitmapData.hx`](../../../../hxd/BitmapData.hx)

## Constructor

### new

```haxe
function new(width:Int, height:Int):Void
```

## Static methods

### fromNative

```haxe
static function fromNative(data:BitmapInnerData):BitmapData
```

## Variables

### width

```haxe
var width(get, null):Int
```

### height

```haxe
var height(get, null):Int
```

## Methods

### clear

```haxe
function clear(color:Int):Void
```

### fill

```haxe
function fill(x:Int, y:Int, width:Int, height:Int, color:Int):Void
```

### draw

```haxe
function draw(x:Int, y:Int, src:BitmapData, srcX:Int, srcY:Int, width:Int, height:Int, ?blendMode:h2d.BlendMode):Void
```

### drawScaled

```haxe
function drawScaled(x:Int, y:Int, width:Int, height:Int, src:BitmapData, srcX:Int, srcY:Int, srcWidth:Int, srcHeight:Int, ?blendMode:h2d.BlendMode, ?smooth:Bool = true):Void
```

### line

```haxe
function line(x0:Int, y0:Int, x1:Int, y1:Int, color:Int):Void
```

### dispose

```haxe
inline function dispose():Void
```

### clone

```haxe
function clone():BitmapData
```

### sub

```haxe
function sub(x:Float, y:Float, w:Int, h:Int):BitmapData
```

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

### setPixels

```haxe
function setPixels(pixels:Pixels):Void
```

### toNative

```haxe
inline function toNative():BitmapInnerData
```

### toPNG

```haxe
function toPNG():Bytes
```
