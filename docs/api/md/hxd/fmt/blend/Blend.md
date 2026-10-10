# hxd.fmt.blend.Blend

**class** · package [`hxd.fmt.blend`](README.md) · module `hxd.fmt.blend.Data` · source [`hxd/fmt/blend/Data.hx`](../../../../../../hxd/fmt/blend/Data.hx)

Reads the data structures of a Blender file (`.blend`, uncompressed), using its embedded DNA description. Ported from https://github.com/armory3d/blend.

## Constructor

### new

```haxe
function new(bytes:Bytes):Void
```

Parses the file data (compressed files are not supported).

## Static methods

### getStruct

```haxe
static function getStruct(dna:Dna, typeIndex:Int):DnaStruct
```

Returns the structure description of the type index.

### getTypeIndex

```haxe
static function getTypeIndex(dna:Dna, type:String):Int
```

Returns the index of the type name, or `-1`.

## Variables

### pos

```haxe
var pos:Int
```

The current read position.

### version

```haxe
var version:String
```

The Blender version that saved the file.

### pointerSize

```haxe
var pointerSize:Int
```

The size of the pointers, in bytes (4 or 8).

### littleEndian

```haxe
var littleEndian:Bool
```

Tells if the data is little endian.

### blocks

```haxe
var blocks:Array<Block>
```

The data blocks of the file.

### dna

```haxe
var dna:Dna
```

The description of the data structures.

### read16

```haxe
var read16:() -> Int
```

Reads a 16 bits integer, with the endianness of the file.

### read32

```haxe
var read32:() -> Int
```

Reads a 32 bits integer, with the endianness of the file.

## Methods

### dir

```haxe
function dir(type:String):Array<String>
```

Returns the declarations of the fields of the structure type, or `null` if the type is unknown.

### get

```haxe
function get(type:String):Array<Handle>
```

Returns handles on all the structures of the type, or `null` if the type is unknown.

### read8

```haxe
function read8():Int
```

Reads a byte.

### readString

```haxe
function readString():String
```

Reads a null terminated string.

### readChars

```haxe
function readChars(len:Int):String
```

Reads `len` characters.

### readChar

```haxe
function readChar():String
```

Reads a character.
