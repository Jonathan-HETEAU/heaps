# hxd.fmt.blend.Blend

**class** · package [`hxd.fmt.blend`](README.md) · module `hxd.fmt.blend.Data` · source [`hxd/fmt/blend/Data.hx`](../../../../../../hxd/fmt/blend/Data.hx)

## Constructor

### new

```haxe
function new(bytes:Bytes):Void
```

## Static methods

### getStruct

```haxe
static function getStruct(dna:Dna, typeIndex:Int):DnaStruct
```

### getTypeIndex

```haxe
static function getTypeIndex(dna:Dna, type:String):Int
```

## Variables

### pos

```haxe
var pos:Int
```

### version

```haxe
var version:String
```

### pointerSize

```haxe
var pointerSize:Int
```

### littleEndian

```haxe
var littleEndian:Bool
```

### blocks

```haxe
var blocks:Array<Block>
```

### dna

```haxe
var dna:Dna
```

### read16

```haxe
var read16:() -> Int
```

### read32

```haxe
var read32:() -> Int
```

## Methods

### dir

```haxe
function dir(type:String):Array<String>
```

### get

```haxe
function get(type:String):Array<Handle>
```

### read8

```haxe
function read8():Int
```

### readString

```haxe
function readString():String
```

### readChars

```haxe
function readChars(len:Int):String
```

### readChar

```haxe
function readChar():String
```
