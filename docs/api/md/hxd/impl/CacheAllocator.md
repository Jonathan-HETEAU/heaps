# hxd.impl.CacheAllocator

**class** · package [`hxd.impl`](README.md) · source [`hxd/impl/CacheAllocator.hx`](../../../../../hxd/impl/CacheAllocator.hx)

Extends: [`hxd.impl.Allocator`](Allocator.md)

## Constructor

### new

```haxe
function new(?debug:Bool = false):Void
```

## Variables

### currentFrame

```haxe
var currentFrame:Int
```

### maxKeepTime

```haxe
var maxKeepTime:Float
```

* How long do we keep some buffer than hasn't been used in memory (in seconds, default 60)

### maxMemSize

```haxe
var maxMemSize:Int
```

### cacheThreshold

```haxe
var cacheThreshold:Int
```

* Minimum number of allocations for a given config before its buffers start being cached.

### hitRate

```haxe
var hitRate:Float
```

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

### checkGC

```haxe
function checkGC():Void
```

### gc

```haxe
function gc():Void
```

### clear

```haxe
function clear():Void
```

### printStats _(hl/sdl, hl/directx only)_

```haxe
function printStats(filePath:String):Void
```

## Inherited members

- from [`hxd.impl.Allocator`](Allocator.md): `allocBuffer`, `ofFloats`, `ofSubFloats`, `disposeBuffer`, `allocIndexBuffer`, `ofIndexes`, `disposeIndexBuffer`, `onContextLost`, `allocFloats`, `disposeFloats`, `allocIndexes`, `disposeIndexes`
