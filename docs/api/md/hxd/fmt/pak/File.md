# hxd.fmt.pak.File

**class** · package [`hxd.fmt.pak`](README.md) · module `hxd.fmt.pak.Data` · source [`hxd/fmt/pak/Data.hx`](../../../../../../hxd/fmt/pak/Data.hx)

A file or directory of a `.pak` archive.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty file.

## Variables

### name

```haxe
var name:String
```

The name of the file.

### isDirectory

```haxe
var isDirectory:Bool
```

Tells if it is a directory.

### content

```haxe
var content:Array<File>
```

The files of the directory.

### dataPosition

```haxe
var dataPosition:Float
```

The position of the file data, relative to the end of the header.

### dataSize

```haxe
var dataSize:Int
```

The size of the file data, in bytes.

### checksum

```haxe
var checksum:Int
```

The Adler32 checksum of the file data.
