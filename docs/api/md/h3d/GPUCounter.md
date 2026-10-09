# h3d.GPUCounter

**class** · package [`h3d`](README.md) · source [`h3d/GPUCounter.hx`](../../../../h3d/GPUCounter.hx)

A buffer of integer counters written by compute shaders and read back on the CPU.

## Constructor

### new

```haxe
function new(?size:Int = 1):Void
```

Allocates `size` counters.

## Variables

### buffer

```haxe
var buffer(default, null):Buffer
```

The GPU buffer, to bind to the compute shader.

## Methods

### dispose

```haxe
function dispose():Void
```

Releases the GPU buffer.

### getAll

```haxe
function getAll():Array<Int>
```

Reads all the counters from the GPU (synchronous, stalls until the GPU is done).

### getAllAsync

```haxe
function getAllAsync(callback:() -> Void):Void
```

Reads all the counters asynchronously and calls `callback` with their values.

### get

```haxe
function get(?index:Int = 0):Int
```

Reads the counter `index` from the GPU (synchronous).

### reset

```haxe
function reset():Void
```

Sets all the counters to 0.
