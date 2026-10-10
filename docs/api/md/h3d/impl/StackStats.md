# h3d.impl.StackStats

**typedef** · package [`h3d.impl`](README.md) · module `h3d.impl.MemoryManager` · source [`h3d/impl/MemoryManager.hx`](../../../../../h3d/impl/MemoryManager.hx)

The allocations made from the same call stack (see `MemoryManager.allocStats`).

## Fields

### stats

```haxe
var stats:Array<TextureStat>
```

The allocated textures or buffers.

### stack

```haxe
var stack:String
```

The call stack.

### size

```haxe
var size:Float
```

The memory size in bytes.

### count

```haxe
var count:Int
```

The number of allocations.
