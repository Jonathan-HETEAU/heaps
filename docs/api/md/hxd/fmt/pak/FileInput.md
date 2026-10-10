# hxd.fmt.pak.FileInput

**class** · package [`hxd.fmt.pak`](README.md) · module `hxd.fmt.pak.FileSystem` · source [`hxd/fmt/pak/FileSystem.hx`](../../../../../../hxd/fmt/pak/FileSystem.hx) · available on js

Extends: `haxe.io.BytesInput`

An input reading a `.pak` file from memory, on the platforms without file system.

## Constructor

### new

```haxe
function new(b:Bytes, ?pos:Int, ?len:Int):Void
```

## Methods

### seek

```haxe
function seek(pos:Int, seekMode:FileSeekMode):Void
```

Moves the read position.

### tell

```haxe
function tell():Int
```

Returns the read position.
