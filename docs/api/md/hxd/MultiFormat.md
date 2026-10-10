# hxd.MultiFormat

**class** · package [`hxd`](README.md) · module `hxd.BufferFormat` · source [`hxd/BufferFormat.hx`](../../../../hxd/BufferFormat.hx)

The combination of the formats of several buffers, used to draw a mesh with more than one vertex buffer.

## Static variables

### MAX_FORMATS

```haxe
static var MAX_FORMATS:Int
```

The maximum number of buffers.

## Static methods

### make

```haxe
static function make(formats:Array<BufferFormat>):MultiFormat
```

Returns the unique combination of the formats, creating it if needed.

## Variables

### uid

```haxe
var uid(default, null):Int
```

The unique identifier of the combination.

## Methods

### resolveMapping

```haxe
inline function resolveMapping(format:BufferFormat):Array<BufferMapping>
```

Returns where to find each input of `format` (the shader inputs) in the buffers. The first buffer containing an input is used.
