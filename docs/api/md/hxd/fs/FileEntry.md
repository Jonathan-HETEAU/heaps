# hxd.fs.FileEntry

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/FileEntry.hx`](../../../../../hxd/fs/FileEntry.hx)

Subclasses: [`hxd.fs.BytesFileEntry`](BytesFileEntry.md), [`hxd.fs.LocalEntry`](LocalEntry.md)

## Variables

### name

```haxe
var name(default, null):String
```

### path

```haxe
var path(get, null):String
```

### directory

```haxe
var directory(get, null):String
```

### extension

```haxe
var extension(get, null):String
```

### size

```haxe
var size(get, null):Int
```

### isDirectory

```haxe
var isDirectory(get, null):Bool
```

### isAvailable

```haxe
var isAvailable(get, null):Bool
```

## Methods

### getBytes

```haxe
function getBytes():Bytes
```

### readBytes

```haxe
function readBytes(out:Bytes, outPos:Int, pos:Int, len:Int):Int
```

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

### getSign

```haxe
function getSign():Int
```

Read first 4 bytes of the file.

### getText

```haxe
function getText():String
```

### open

```haxe
function open():FileInput
```

### load

```haxe
function load(?onReady:() -> Void):Void
```

### loadBitmap

```haxe
function loadBitmap(onLoaded:() -> Void):Void
```

### watch

```haxe
function watch(onChanged:Null<() -> Void>):Void
```

### exists

```haxe
function exists(name:String):Bool
```

### get

```haxe
function get(name:String):FileEntry
```

### iterator

```haxe
function iterator():hxd.impl.ArrayIterator_hxd_fs_FileEntry
```
