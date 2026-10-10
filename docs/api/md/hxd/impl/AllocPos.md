# hxd.impl.AllocPos

**class** · package [`hxd.impl`](README.md) · source [`hxd/impl/AllocPos.hx`](../../../../../hxd/impl/AllocPos.hx)

The code position where a GPU resource (buffer, texture) was allocated, recorded to track memory leaks.
Enabled with `h3d.impl.MemoryManager.enableTrackAlloc`.

## Static variables

### ENGINE_PACKAGES

```haxe
static var ENGINE_PACKAGES:Array<String>
```

The packages skipped to find `position` (`hrt` is the Hide runtime).

## Static methods

### make

```haxe
static function make():Null<AllocPos>
```

Records the current position, or returns `null` if the tracking is disabled.

## Variables

### position

```haxe
var position:String
```

The first position of the call stack outside of the engine packages (`file:line`).

### stack

```haxe
var stack:Array<String>
```

The positions of the call stack.
