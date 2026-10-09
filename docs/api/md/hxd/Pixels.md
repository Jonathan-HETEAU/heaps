# hxd.Pixels

**class** · package [`hxd`](README.md) · source [`hxd/Pixels.hx`](../../../../hxd/Pixels.hx)

## Constructor

### new

```haxe
function new(width:Int, height:Int, bytes:Bytes, format:PixelFormat, ?offset:Int = 0):Void
```

## Static methods

### switchEndian

```haxe
static inline function switchEndian(v:Int):Int
```

### switchBR

```haxe
static inline function switchBR(v:Int):Int
```

### calcDataSize

```haxe
static function calcDataSize(width:Int, height:Int, format:PixelFormat):Int
```

### calcStride

```haxe
static function calcStride(width:Int, format:PixelFormat):Int
```

### isFloatFormat

```haxe
static function isFloatFormat(format:PixelFormat):Bool
```

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

### format

```haxe
var format(get, null):PixelFormat
```

### width

```haxe
var width(default, null):Int
```

### height

```haxe
var height(default, null):Int
```

### dataSize

```haxe
var dataSize(default, null):Int
```

### offset

```haxe
var offset:Int
```

### flags

```haxe
var flags:EnumFlags<Flags>
```

## Methods

### sub

```haxe
function sub(x:Int, y:Int, width:Int, height:Int):Pixels
```

### blit

```haxe
function blit(x:Int, y:Int, src:Pixels, srcX:Int, srcY:Int, width:Int, height:Int):Void
```

### clear

```haxe
function clear(color:Int, ?preserveMask:Int = 0):Void
```

### toVector

```haxe
function toVector():Vector<Int>
```

### makeSquare

```haxe
function makeSquare(?copy:Bool):Pixels
```

### flipY

```haxe
function flipY():Void
```

### convert

```haxe
function convert(target:PixelFormat):Void
```

### getPixel

```haxe
function getPixel(x:Int, y:Int):Int
```

### setPixel

```haxe
function setPixel(x:Int, y:Int, color:Int):Void
```

### getPixelF

```haxe
function getPixelF(x:Int, y:Int, ?v:h3d.Vector4):h3d.Vector4
```

### setPixelF

```haxe
function setPixelF(x:Int, y:Int, v:h3d.Vector4):Void
```

### dispose

```haxe
function dispose():Void
```

### toString

```haxe
function toString():String
```

### toPNG

```haxe
function toPNG(?level:Int = 9):Bytes
```

### toDDS

```haxe
function toDDS():Bytes
```

### clone

```haxe
function clone():Pixels
```
