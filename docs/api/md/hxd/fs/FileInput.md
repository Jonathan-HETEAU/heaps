# hxd.fs.FileInput

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/FileInput.hx`](../../../../../hxd/fs/FileInput.hx)

Extends: `haxe.io.Input`

## Variables

### position

```haxe
var position(get, null):Int
```

## Methods

### fetch

```haxe
function fetch(?dataSize:Int = 256):Void
```

### skip

```haxe
function skip(nbytes:Int):Void
```

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
