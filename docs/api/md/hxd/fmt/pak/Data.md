# hxd.fmt.pak.Data

**class** · package [`hxd.fmt.pak`](README.md) · source [`hxd/fmt/pak/Data.hx`](../../../../../../hxd/fmt/pak/Data.hx)

The header of a `.pak` archive.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty header.

## Variables

### version

```haxe
var version:Int
```

The version of the format.

### root

```haxe
var root:File
```

The root directory.

### headerSize

```haxe
var headerSize:Int
```

The size of the header, in bytes.

### dataSize

```haxe
var dataSize:Int
```

The size of the data, in bytes.
