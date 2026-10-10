# hxd.BufferInput

**class** · package [`hxd`](README.md) · module `hxd.BufferFormat` · source [`hxd/BufferFormat.hx`](../../../../hxd/BufferFormat.hx)

An input (vertex attribute) of a `BufferFormat`: its name, type and precision.

## Constructor

### new

```haxe
inline function new(name:String, type:InputFormat, ?precision:Precision = F32):Void
```

Creates an input.

## Variables

### name

```haxe
var name(default, null):String
```

The name of the input, matching the shader input name (such as `"position"`).

### type

```haxe
var type(default, null):InputFormat
```

The type of the input.

### precision

```haxe
var precision(default, null):Precision
```

The storage precision of the input.

## Methods

### getBytesSize

```haxe
inline function getBytesSize():Int
```

Returns the size of the input in bytes (without alignment).

### equals

```haxe
inline function equals(b:BufferInput):Bool
```

Tells if the input has the same name, type and precision as `b`.
