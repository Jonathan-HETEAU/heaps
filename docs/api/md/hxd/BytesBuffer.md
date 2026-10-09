# hxd.BytesBuffer

**abstract** · package [`hxd`](README.md) · source [`hxd/BytesBuffer.hx`](../../../../hxd/BytesBuffer.hx)

Underlying type: `BytesOutput`

## Static variables

### length

```haxe
static var length(get, null):Int
```

## Static methods

### fromU8Array

```haxe
static inline function fromU8Array(arr:Array<Int>):BytesBuffer
```

### fromIntArray

```haxe
static inline function fromIntArray(arr:Array<Int>):BytesBuffer
```

## Methods

### writeByte

```haxe
inline function writeByte(v:Int):Void
```

### writeFloat

```haxe
inline function writeFloat(v:Float):Void
```

### writeInt32

```haxe
inline function writeInt32(v:Int):Void
```

### getBytes

```haxe
inline function getBytes():Bytes
```
