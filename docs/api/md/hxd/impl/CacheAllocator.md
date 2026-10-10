# hxd.impl.CacheAllocator

**class** · package [`hxd.impl`](README.md) · source [`hxd/impl/CacheAllocator.hx`](../../../../../hxd/impl/CacheAllocator.hx)

Extends: [`hxd.impl.Allocator`](Allocator.md)

An allocator keeping the disposed GPU buffers to reuse them for the next allocations of the same size, format and flags.
The unused buffers are released after `maxKeepTime` seconds, or when `maxMemSize` is exceeded.

## Constructor

### new

```haxe
function new(?debug:Bool = false):Void
```

Creates the allocator.

## Variables

### currentFrame

```haxe
var currentFrame:Int
```

The frame of the last allocation.

### maxKeepTime

```haxe
var maxKeepTime:Float
```

* How long do we keep some buffer than hasn't been used in memory (in seconds, default 60)

### maxMemSize

```haxe
var maxMemSize:Int
```

The maximum memory of the cached buffers, in bytes.

### cacheThreshold

```haxe
var cacheThreshold:Int
```

* Minimum number of allocations for a given config before its buffers start being cached.

### hitRate

```haxe
var hitRate:Float
```

The moving average of the allocations served from the cache, from `0` to `1`.

## Methods

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
override function allocIndexBuffer(count:Int, ?is32:Bool = false):h3d.Indexes
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

Runs `gc` if it was not run recently.

### gc

```haxe
function gc():Void
```

Releases the cached buffers over `maxMemSize`, and those unused for more than `maxKeepTime`.

### clear

```haxe
function clear():Void
```

Releases all the cached buffers.

### printStats _(hl/sdl, hl/directx only)_

```haxe
function printStats(filePath:String):Void
```

Writes statistics on the cached buffers to a file.

## Inherited members

- from [`hxd.impl.Allocator`](Allocator.md): `allocBuffer`, `ofFloats`, `ofSubFloats`, `disposeBuffer`, `allocIndexBuffer`, `ofIndexes`, `disposeIndexBuffer`, `onContextLost`, `allocFloats`, `disposeFloats`, `allocIndexes`, `disposeIndexes`
