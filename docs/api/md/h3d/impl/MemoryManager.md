# h3d.impl.MemoryManager

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/MemoryManager.hx`](../../../../../h3d/impl/MemoryManager.hx)

Tracks the GPU memory used by the textures and buffers, frees the unused textures when the memory is low, and provides the shared index buffers.
Accessed with `h3d.Engine.mem`.

## Constructor

### new

```haxe
function new(driver:Driver):Void
```

Creates the manager for the driver.

## Static methods

### enableTrackAlloc

```haxe
static function enableTrackAlloc(?b:Bool):Void
```

Enables (or disables) the recording of the code position of each allocation, for `allocStats`.

## Variables

### bufferMemory

```haxe
var bufferMemory(default, null):Float
```

The memory used by the buffers, in bytes.

### texMemory

```haxe
var texMemory(default, null):Float
```

The memory used by the textures, in bytes.

### autoDisposeKeepTime

```haxe
var autoDisposeKeepTime:Float
```

How much time a texture should be kept into memory if it's not used.

### autoDisposeGpuFreeMB

```haxe
var autoDisposeGpuFreeMB:Float
```

The amount of free memory we want to keep on our GPU to allow swapping.

## Methods

### init

```haxe
function init():Void
```

Initializes the manager and allocates the shared index buffers.

### garbage

```haxe
dynamic function garbage():Void
```

Call user-defined garbage function that will cleanup some unused allocated objects.
Might be called several times if we need to allocate a lot of memory

### getTriIndexes

```haxe
function getTriIndexes(vertices:Int):h3d.Indexes
```

Returns an index buffer listing `0, 1, 2...`, to draw `vertices` vertices as a triangle list (16 bits indexes up to 65532 vertices, 32 bits above).

### getQuadIndexes

```haxe
function getQuadIndexes(vertices:Int):h3d.Indexes
```

Returns an index buffer drawing each group of 4 vertices as a quad (2 triangles), for `vertices` vertices.

### cleanTextures

```haxe
function cleanTextures(?force:Bool = true):Bool
```

Disposes the least recently used texture that can be reallocated (one with a `realloc` function), if it was unused for `autoDisposeKeepTime` seconds or if `force` is set. Returns `true` if a texture was disposed.

### beginFrame

```haxe
function beginFrame():Void
```

Called at the start of each frame: disposes unused textures when the free GPU memory is under `autoDisposeGpuFreeMB`.

### errorOutOfMemory

```haxe
dynamic function errorOutOfMemory():Void
```

Called when an allocation fails even after freeing memory. Throws an error by default.

### onContextLost

```haxe
function onContextLost():Void
```

Called when the GPU context is lost: releases the resources and allocates the shared index buffers again.

### dispose

```haxe
function dispose():Void
```

Releases the shared index buffers and all the textures and buffers.

### stats

```haxe
function stats(?megas:Bool = false):{ totalMemory:Float, textureMemory:Float, textureCount:Int, otherMemory:Float, maxMemory:Float, bufferMemory:Float, bufferCount:Int }
```

Returns the number and memory size of the buffers and textures (in megabytes if `megas` is set), with the memory reported by the driver.

### allocStats

```haxe
function allocStats():Array<AllocStats>
```

* Return statistics for currently allocated buffers and textures.
* Requires call `MemoryManager.enableTrackAlloc()` before allocations.
