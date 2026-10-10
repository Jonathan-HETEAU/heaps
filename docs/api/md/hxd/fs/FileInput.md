# hxd.fs.FileInput

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/FileInput.hx`](../../../../../hxd/fs/FileInput.hx)

Extends: `haxe.io.Input`

A buffered input reading a file entry, returned by `FileEntry.open`.

## Variables

### position

```haxe
var position(get, null):Int
```

The position of the next byte to read in the file.

## Methods

### fetch

```haxe
function fetch(?dataSize:Int = 256):Void
```

Reads the next `dataSize` bytes in the buffer. Throws `haxe.io.Eof` at the end of the file.

### skip

```haxe
function skip(nbytes:Int):Void
```

Skips `nbytes` bytes.

### readByte

```haxe
override function readByte():Int
```

### readBytes

```haxe
override function readBytes(b:Bytes, pos:Int, len:Int):Int
```

### close

```haxe
override function close():Void
```
