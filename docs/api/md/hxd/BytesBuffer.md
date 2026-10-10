# hxd.BytesBuffer

**abstract** · package [`hxd`](README.md) · source [`hxd/BytesBuffer.hx`](../../../../hxd/BytesBuffer.hx)

A growable byte buffer for writing binary data.

Underlying type: `BytesOutput`

## Static variables

### length

```haxe
static var length(get, null):Int
```

The number of bytes written.

## Static methods

### fromU8Array

```haxe
static inline function fromU8Array(arr:Array<Int>):BytesBuffer
```

Creates a buffer from an array of bytes.

### fromIntArray

```haxe
static inline function fromIntArray(arr:Array<Int>):BytesBuffer
```

Creates a buffer from an array of 32-bit integers.

## Methods

### writeByte

```haxe
inline function writeByte(v:Int):Void
```

Writes a byte.

### writeFloat

```haxe
inline function writeFloat(v:Float):Void
```

Writes a 32-bit float.

### writeInt32

```haxe
inline function writeInt32(v:Int):Void
```

Writes a 32-bit integer.

### getBytes

```haxe
inline function getBytes():Bytes
```

Returns the bytes written.
