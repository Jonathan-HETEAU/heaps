# hxd.impl.Allocator

**class** · package [`hxd.impl`](README.md) · source [`hxd/impl/Allocator.hx`](../../../../../hxd/impl/Allocator.hx)

Subclasses: [`hxd.impl.CacheAllocator`](CacheAllocator.md), [`hxd.impl.FIFOBufferAllocator`](FIFOBufferAllocator.md)

## Constructor

### new

```haxe
function new():Void
```

## Static methods

### set

```haxe
static function set(a:Allocator):Void
```

### get

```haxe
static function get():Allocator
```

### roundPOT

```haxe
static function roundPOT(v:Int, ?limit:Int = 1024 * 1024):Int
```

## Methods

### allocBuffer

```haxe
function allocBuffer(vertices:Int, format:hxd.BufferFormat, ?flags:BufferFlags = Dynamic):h3d.Buffer
```

### ofFloats

```haxe
function ofFloats(v:hxd.FloatBuffer, format:hxd.BufferFormat, ?flags:BufferFlags = Dynamic):h3d.Buffer
```

### ofSubFloats

```haxe
function ofSubFloats(v:hxd.FloatBuffer, vertices:Int, format:hxd.BufferFormat, ?flags:BufferFlags = Dynamic):h3d.Buffer
```

### disposeBuffer

```haxe
function disposeBuffer(b:h3d.Buffer):Void
```

### allocIndexBuffer

```haxe
function allocIndexBuffer(count:Int, ?is32:Bool = false):h3d.Indexes
```

### ofIndexes

```haxe
function ofIndexes(ib:hxd.IndexBuffer, ?length:Int = -1):h3d.Indexes
```

### disposeIndexBuffer

```haxe
function disposeIndexBuffer(i:h3d.Indexes):Void
```

### onContextLost

```haxe
function onContextLost():Void
```

### allocFloats

```haxe
function allocFloats(count:Int):hxd.FloatBuffer
```

### disposeFloats

```haxe
function disposeFloats(f:hxd.FloatBuffer):Void
```

### allocIndexes

```haxe
function allocIndexes(count:Int):hxd.IndexBuffer
```

### disposeIndexes

```haxe
function disposeIndexes(i:hxd.IndexBuffer):Void
```
