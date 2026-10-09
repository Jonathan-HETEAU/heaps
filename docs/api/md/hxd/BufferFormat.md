# hxd.BufferFormat

**class** · package [`hxd`](README.md) · source [`hxd/BufferFormat.hx`](../../../../hxd/BufferFormat.hx)

## Static variables

### H2D

```haxe
static var H2D(get, null):BufferFormat
```

Alias for XY_UV_RGBA

### XY_UV_RGBA

```haxe
static var XY_UV_RGBA(get, null):BufferFormat
```

### XY_UV

```haxe
static var XY_UV(get, null):BufferFormat
```

### POS3D

```haxe
static var POS3D(get, null):BufferFormat
```

### POS3D_NORMAL

```haxe
static var POS3D_NORMAL(get, null):BufferFormat
```

### POS3D_UV

```haxe
static var POS3D_UV(get, null):BufferFormat
```

### POS3D_NORMAL_UV

```haxe
static var POS3D_NORMAL_UV(get, null):BufferFormat
```

### POS3D_NORMAL_UV_RGBA

```haxe
static var POS3D_NORMAL_UV_RGBA(get, null):BufferFormat
```

### VEC4_DATA

```haxe
static var VEC4_DATA(get, null):BufferFormat
```

### MAT4_DATA

```haxe
static var MAT4_DATA(get, null):BufferFormat
```

### MAT3x4_DATA

```haxe
static var MAT3x4_DATA(get, null):BufferFormat
```

### INDEX16

```haxe
static var INDEX16(get, null):BufferFormat
```

### INDEX32

```haxe
static var INDEX32(get, null):BufferFormat
```

## Static methods

### fromID

```haxe
static function fromID(uid:Int):BufferFormat
```

### make

```haxe
static function make(inputs:Array<BufferInput>):BufferFormat
```

### float32to16

```haxe
static function float32to16(v:Float, ?denormalsAreZero:Bool = false):Int
```

### float16to32

```haxe
static function float16to32(v:Int):Float
```

### float32toS8

```haxe
static function float32toS8(v:Float):Int
```

### floatS8to32

```haxe
static function floatS8to32(v:Int):Float
```

### float32toU8

```haxe
static function float32toU8(v:Float):Int
```

### floatU8to32

```haxe
static inline function floatU8to32(v:Int):Float
```

## Variables

### uid

```haxe
var uid(default, null):Int
```

### stride

```haxe
var stride(default, null):Int
```

### strideBytes

```haxe
var strideBytes(default, null):Int
```

### hasLowPrecision

```haxe
var hasLowPrecision(default, null):Bool
```

## Methods

### getInput

```haxe
function getInput(name:String):BufferInput
```

### getCompressed

```haxe
function getCompressed():BufferFormat
```

### calculateInputOffset

```haxe
function calculateInputOffset(name:String):Int
```

### hasInput

```haxe
function hasInput(name:String, ?type:InputFormat):Bool
```

### append

```haxe
function append(name:String, type:InputFormat):BufferFormat
```

### pop

```haxe
function pop():BufferFormat
```

### isSubSet

```haxe
function isSubSet(fmt:BufferFormat):Bool
```

### resolveMapping

```haxe
function resolveMapping(target:BufferFormat):Null<Null<Array<BufferMapping>>>
```

### getInputs

```haxe
inline function getInputs():ArrayIterator<BufferInput>
```

### toString

```haxe
function toString():String
```
