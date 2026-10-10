# hxd.fmt.pak.Writer

**class** · package [`hxd.fmt.pak`](README.md) · source [`hxd/fmt/pak/Writer.hx`](../../../../../../hxd/fmt/pak/Writer.hx)

Writes a `.pak` archive.

## Constructor

### new

```haxe
function new(o:Output, ?align:Int):Void
```

Creates a writer for the output, aligning the files data to `align` bytes if set.

## Methods

### writeFile

```haxe
function writeFile(f:File):Void
```

Writes the header of a file.

### write

```haxe
function write(pak:Data, content:Bytes, ?arrayContent:Array<Bytes>):Void
```

Writes the header and the data of the archive (the data is in `content`, or in `arrayContent` by file).
