# hxd.BufferFormat

**class** · package [`hxd`](README.md) · source [`hxd/BufferFormat.hx`](../../../../hxd/BufferFormat.hx)

The vertex layout of a `h3d.Buffer`: the list of its inputs.
Formats are unique: use `BufferFormat.make` to get the format for a list of inputs, or one of the predefined formats.
Each input is aligned to 4 bytes.

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

2D position, UV and color: the format of `h2d` vertices.

### XY_UV

```haxe
static var XY_UV(get, null):BufferFormat
```

2D position and UV.

### POS3D

```haxe
static var POS3D(get, null):BufferFormat
```

3D position.

### POS3D_NORMAL

```haxe
static var POS3D_NORMAL(get, null):BufferFormat
```

3D position and normal.

### POS3D_UV

```haxe
static var POS3D_UV(get, null):BufferFormat
```

3D position and UV.

### POS3D_NORMAL_UV

```haxe
static var POS3D_NORMAL_UV(get, null):BufferFormat
```

3D position, normal and UV.

### POS3D_NORMAL_UV_RGBA

```haxe
static var POS3D_NORMAL_UV_RGBA(get, null):BufferFormat
```

3D position, normal, UV and color.

### VEC4_DATA

```haxe
static var VEC4_DATA(get, null):BufferFormat
```

A single `vec4` input named `data`.

### MAT4_DATA

```haxe
static var MAT4_DATA(get, null):BufferFormat
```

A single 4x4 matrix input named `data`.

### MAT3x4_DATA

```haxe
static var MAT3x4_DATA(get, null):BufferFormat
```

A single 3x4 matrix input named `data`.

### INDEX16

```haxe
static var INDEX16(get, null):BufferFormat
```

16 bits indexes.

### INDEX32

```haxe
static var INDEX32(get, null):BufferFormat
```

32 bits indexes.

## Static methods

### fromID

```haxe
static function fromID(uid:Int):BufferFormat
```

Returns the format with the given `uid`, or `null`.

### make

```haxe
static function make(inputs:Array<BufferInput>):BufferFormat
```

Returns the unique format for the list of inputs, creating it if needed.

### float32to16

```haxe
static function float32to16(v:Float, ?denormalsAreZero:Bool = false):Int
```

Converts a float to the bits of a 16 bits float.

### float16to32

```haxe
static function float16to32(v:Int):Float
```

Converts the bits of a 16 bits float to a float.

### float32toS8

```haxe
static function float32toS8(v:Float):Int
```

Converts a float in the `[-1, 1]` range to a signed 8 bits value.

### floatS8to32

```haxe
static function floatS8to32(v:Int):Float
```

Converts a signed 8 bits value to a float in the `[-1, 1]` range.

### float32toU8

```haxe
static function float32toU8(v:Float):Int
```

Converts a float in the `[0, 1]` range to an unsigned 8 bits value.

### floatU8to32

```haxe
static inline function floatU8to32(v:Int):Float
```

Converts an unsigned 8 bits value to a float in the `[0, 1]` range.

## Variables

### uid

```haxe
var uid(default, null):Int
```

The unique identifier of the format.

### stride

```haxe
var stride(default, null):Int
```

The number of 32 bits components of a vertex, ignoring the precision.

### strideBytes

```haxe
var strideBytes(default, null):Int
```

The size of a vertex in bytes.

### hasLowPrecision

```haxe
var hasLowPrecision(default, null):Bool
```

Tells if an input has a precision lower than `F32`.

## Methods

### getInput

```haxe
function getInput(name:String):BufferInput
```

Returns the input of the given name, or `null`.

### getCompressed

```haxe
function getCompressed():BufferFormat
```

Returns a format with lower precisions for the known inputs (data, color, position, normal and uv), raising some of them back to fill the alignment padding.

### calculateInputOffset

```haxe
function calculateInputOffset(name:String):Int
```

Returns the offset in bytes of the input in a vertex. Throws if it is not found.

### hasInput

```haxe
function hasInput(name:String, ?type:InputFormat):Bool
```

Tells if the format has an input of the given name, and of the given type if set.

### append

```haxe
function append(name:String, type:InputFormat):BufferFormat
```

Returns the format with an input added at the end.

### pop

```haxe
function pop():BufferFormat
```

Returns the format without its last input.

### isSubSet

```haxe
function isSubSet(fmt:BufferFormat):Bool
```

Tells if the inputs of this format are the first inputs of `fmt`.

### resolveMapping

```haxe
function resolveMapping(target:BufferFormat):Null<Null<Array<BufferMapping>>>
```

Returns where to find each input of `target` in this format. Throws if one is missing.

### getInputs

```haxe
inline function getInputs():ArrayIterator<BufferInput>
```

Returns an iterator on the inputs.

### toString

```haxe
function toString():String
```

Returns a description of the inputs.
