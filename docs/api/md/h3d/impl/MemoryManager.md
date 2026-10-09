# h3d.impl.MemoryManager

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/MemoryManager.hx`](../../../../../h3d/impl/MemoryManager.hx)

## Constructor

### new

```haxe
function new(driver:Driver):Void
```

## Static methods

### enableTrackAlloc

```haxe
static function enableTrackAlloc(?b:Bool):Void
```

## Variables

### bufferMemory

```haxe
var bufferMemory(default, null):Float
```

### texMemory

```haxe
var texMemory(default, null):Float
```

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

### getQuadIndexes

```haxe
function getQuadIndexes(vertices:Int):h3d.Indexes
```

### cleanTextures

```haxe
function cleanTextures(?force:Bool = true):Bool
```

### beginFrame

```haxe
function beginFrame():Void
```

### errorOutOfMemory

```haxe
dynamic function errorOutOfMemory():Void
```

### onContextLost

```haxe
function onContextLost():Void
```

### dispose

```haxe
function dispose():Void
```

### stats

```haxe
function stats(?megas:Bool = false):{ totalMemory:Float, textureMemory:Float, textureCount:Int, otherMemory:Float, maxMemory:Float, bufferMemory:Float, bufferCount:Int }
```

### allocStats

```haxe
function allocStats():Array<AllocStats>
```

* Return statistics for currently allocated buffers and textures.
* Requires call `MemoryManager.enableTrackAlloc()` before allocations.
