# hxd.fmt.blend.Handle

**class** · package [`hxd.fmt.blend`](README.md) · module `hxd.fmt.blend.Data` · source [`hxd/fmt/blend/Data.hx`](../../../../../../hxd/fmt/blend/Data.hx)

A handle on a structure in a block, to read its fields.

## Constructor

### new

```haxe
function new():Void
```

Creates a handle.

## Variables

### block

```haxe
var block:Block
```

The block containing the structure.

### offset

```haxe
var offset:Int
```

The offset of the structure in the block data.

### ds

```haxe
var ds:DnaStruct
```

The description of the structure.

## Methods

### get

```haxe
function get(name:String):Dynamic
```

Returns the value of the field (a number, a string, or a handle on a structure). 64 bits values are not supported and return `0`.
