# hxd.fmt.blend.Block

**class** · package [`hxd.fmt.blend`](README.md) · module `hxd.fmt.blend.Data` · source [`hxd/fmt/blend/Data.hx`](../../../../../../hxd/fmt/blend/Data.hx)

A data block of a Blender file.

## Constructor

### new

```haxe
function new():Void
```

Creates a block.

## Variables

### blend

```haxe
var blend:Blend
```

The file of the block.

### code

```haxe
var code:String
```

The code of the block type.

### size

```haxe
var size:Int
```

The size of the block data, in bytes.

### sdnaIndex

```haxe
var sdnaIndex:Int
```

The index of the structure contained in the block.

### count

```haxe
var count:Int
```

The number of structures in the block.

### pos

```haxe
var pos:Int
```

The position of the block data in the file.
