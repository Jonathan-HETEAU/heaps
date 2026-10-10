# hxd.fs.FileEntry

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/FileEntry.hx`](../../../../../hxd/fs/FileEntry.hx)

Subclasses: [`hxd.fs.BytesFileEntry`](BytesFileEntry.md), [`hxd.fs.LocalEntry`](LocalEntry.md)

A file or directory of a `FileSystem`. Subclasses implement the access for each kind of file system.

## Variables

### name

```haxe
var name(default, null):String
```

The name of the file, with its extension.

### path

```haxe
var path(get, null):String
```

The path of the file, relative to the file system root.

### directory

```haxe
var directory(get, null):String
```

The path of the parent directory.

### extension

```haxe
var extension(get, null):String
```

The extension of the file name, in lowercase, without the dot.

### size

```haxe
var size(get, null):Int
```

The size of the file in bytes.

### isDirectory

```haxe
var isDirectory(get, null):Bool
```

Tells if the entry is a directory.

### isAvailable

```haxe
var isAvailable(get, null):Bool
```

Tells if the content is available. When it is not (files loaded on demand), call `load` first.

## Methods

### getBytes

```haxe
function getBytes():Bytes
```

Returns the whole content of the file.

### readBytes

```haxe
function readBytes(out:Bytes, outPos:Int, pos:Int, len:Int):Int
```

Reads `len` bytes at `pos` in the file into `out` at `outPos`, and returns the number of bytes read.

### readBytesAsync

```haxe
function readBytesAsync(out:Bytes, outPos:Int, pos:Int, len:Int, onDone:() -> Void, ?priority:Float = 0.):AsyncRead
```

Same as readBytes, but the read is performed in async mode
onDone is called in the calling thread (through its event loop) with the number of bytes read, unless the request is cancelled.
The out bytes must not be accessed until then.

### fetchBytes

```haxe
function fetchBytes(pos:Int, len:Int):Bytes
```

Similar to readBytes except :
a) a temporary buffer is reused, meaning a single fetchBytes must occur at a single time
b) it will throw an Eof exception if the data is not available

### readFull

```haxe
function readFull(bytes:Bytes, pos:Int, len:Int):Void
```

Reads `len` bytes at `pos` in the file into `bytes`. Throws `haxe.io.Eof` if fewer bytes are available.

### getSign

```haxe
function getSign():Int
```

Read first 4 bytes of the file.

### getText

```haxe
function getText():String
```

Returns the content of the file as text.

### open

```haxe
function open():FileInput
```

Returns an input to read the file.

### load

```haxe
function load(?onReady:() -> Void):Void
```

Makes the content available, then calls `onReady`.

### loadBitmap

```haxe
function loadBitmap(onLoaded:() -> Void):Void
```

Decodes the image file with the platform decoder (asynchronously on JS).

### watch

```haxe
function watch(onChanged:Null<() -> Void>):Void
```

Calls `onChanged` when the file changes, if the file system supports it. Set `null` to stop watching.

### exists

```haxe
function exists(name:String):Bool
```

For a directory, tells if it contains an entry with the given name.

### get

```haxe
function get(name:String):FileEntry
```

For a directory, returns the entry with the given name.

### iterator

```haxe
function iterator():hxd.impl.ArrayIterator_hxd_fs_FileEntry
```

For a directory, iterates over its entries.
