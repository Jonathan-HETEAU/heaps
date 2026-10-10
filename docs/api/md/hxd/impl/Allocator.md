# hxd.impl.Allocator

**class** · package [`hxd.impl`](README.md) · source [`hxd/impl/Allocator.hx`](../../../../../hxd/impl/Allocator.hx)

Subclasses: [`hxd.impl.CacheAllocator`](CacheAllocator.md), [`hxd.impl.FIFOBufferAllocator`](FIFOBufferAllocator.md)

Allocates the GPU buffers and CPU arrays used by the engine. The default implementation creates new ones every time; subclasses such as `CacheAllocator` reuse them.
Use `Allocator.set` to change the allocator used by the engine.

## Constructor

### new

```haxe
function new():Void
```

Creates an allocator.

## Static methods

### set

```haxe
static function set(a:Allocator):Void
```

Sets the allocator used by the engine.

### get

```haxe
static function get():Allocator
```

Returns the allocator used by the engine (a default `Allocator` if none was set).

### roundPOT

```haxe
static function roundPOT(v:Int, ?limit:Int = 1024 * 1024):Int
```

Rounds `v` up to a power of two, or to a multiple of `limit` above it. Used to reduce the number of different buffer sizes.

## Methods

### allocBuffer

```haxe
function allocBuffer(vertices:Int, format:hxd.BufferFormat, ?flags:BufferFlags = Dynamic):h3d.Buffer
```

Allocates a GPU buffer of `vertices` vertices of the given format.

### ofFloats

```haxe
function ofFloats(v:hxd.FloatBuffer, format:hxd.BufferFormat, ?flags:BufferFlags = Dynamic):h3d.Buffer
```

Allocates a GPU buffer and uploads all the floats to it.

### ofSubFloats

```haxe
function ofSubFloats(v:hxd.FloatBuffer, vertices:Int, format:hxd.BufferFormat, ?flags:BufferFlags = Dynamic):h3d.Buffer
```

Allocates a GPU buffer of `vertices` vertices and uploads them from the floats.

### disposeBuffer

```haxe
function disposeBuffer(b:h3d.Buffer):Void
```

Releases a GPU buffer allocated by this allocator.

### allocIndexBuffer

```haxe
function allocIndexBuffer(count:Int, ?is32:Bool = false):h3d.Indexes
```

Allocates a GPU index buffer of `count` indexes (16 or 32 bits).

### ofIndexes

```haxe
function ofIndexes(ib:hxd.IndexBuffer, ?length:Int = -1):h3d.Indexes
```

Allocates a GPU index buffer and uploads `length` indexes to it (all by default).

### disposeIndexBuffer

```haxe
function disposeIndexBuffer(i:h3d.Indexes):Void
```

Releases a GPU index buffer allocated by this allocator.

### onContextLost

```haxe
function onContextLost():Void
```

Called when the GPU context is lost: the cached buffers are no longer valid.

### allocFloats

```haxe
function allocFloats(count:Int):hxd.FloatBuffer
```

Allocates a CPU float buffer.

### disposeFloats

```haxe
function disposeFloats(f:hxd.FloatBuffer):Void
```

Releases a CPU float buffer.

### allocIndexes

```haxe
function allocIndexes(count:Int):hxd.IndexBuffer
```

Allocates a CPU index buffer.

### disposeIndexes

```haxe
function disposeIndexes(i:hxd.IndexBuffer):Void
```

Releases a CPU index buffer.
