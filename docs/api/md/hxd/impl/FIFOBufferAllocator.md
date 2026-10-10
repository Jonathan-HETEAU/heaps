# hxd.impl.FIFOBufferAllocator

**class** · package [`hxd.impl`](README.md) · source [`hxd/impl/FIFOBufferAllocator.hx`](../../../../../hxd/impl/FIFOBufferAllocator.hx)

Extends: [`hxd.impl.Allocator`](Allocator.md)

An allocator keeping the disposed GPU buffers to reuse them, in first in first out order.
The unused buffers are released after `maxKeepFrame` frames, or when `maxMemSize` is exceeded.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### currentFrame

```haxe
var currentFrame:Int
```

The frame of the last allocation.

### maxKeepFrame

```haxe
var maxKeepFrame(default, set):Int
```

* How long do we keep some buffer than hasn't been used in memory (in frames)

### maxMemSize

```haxe
var maxMemSize:Int
```

* Maximum buffers memory in bytes.

## Methods

### set_maxKeepFrame

```haxe
function set_maxKeepFrame(v:Int):Int
```

### allocBuffer

```haxe
override function allocBuffer(vertices:Int, format:hxd.BufferFormat, ?flags:BufferFlags = Dynamic):h3d.Buffer
```

### disposeBuffer

```haxe
override function disposeBuffer(b:h3d.Buffer):Void
```

### allocIndexBuffer

```haxe
override function allocIndexBuffer(count:Int, ?is32:Bool = false):Null<h3d.Indexes>
```

### disposeIndexBuffer

```haxe
override function disposeIndexBuffer(i:h3d.Indexes):Void
```

### onContextLost

```haxe
override function onContextLost():Void
```

### checkFrame

```haxe
function checkFrame():Void
```

Makes the buffers disposed in the previous frames available.

### checkGC

```haxe
function checkGC():Void
```

Runs `gc` once per frame.

### gc

```haxe
function gc():Void
```

Releases the cached buffers unused for more than `maxKeepFrame` frames, or over `maxMemSize`.

### clear

```haxe
function clear():Void
```

Releases all the cached buffers.

## Inherited members

- from [`hxd.impl.Allocator`](Allocator.md): `allocBuffer`, `ofFloats`, `ofSubFloats`, `disposeBuffer`, `allocIndexBuffer`, `ofIndexes`, `disposeIndexBuffer`, `onContextLost`, `allocFloats`, `disposeFloats`, `allocIndexes`, `disposeIndexes`
