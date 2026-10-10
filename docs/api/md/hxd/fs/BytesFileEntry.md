# hxd.fs.BytesFileEntry

**class** · package [`hxd.fs`](README.md) · module `hxd.fs.BytesFileSystem` · source [`hxd/fs/BytesFileSystem.hx`](../../../../../hxd/fs/BytesFileSystem.hx)

Extends: [`hxd.fs.FileEntry`](FileEntry.md)

A file entry whose content is in memory.

## Constructor

### new

```haxe
function new(path:String, bytes:Bytes):Void
```

Creates an entry for the given path and content.

## Methods

### getBytes

```haxe
override function getBytes():Bytes
```

### readBytes

```haxe
override function readBytes(out:Bytes, outPos:Int, pos:Int, len:Int):Int
```

### load

```haxe
override function load(?onReady:() -> Void):Void
```

### loadBitmap

```haxe
override function loadBitmap(onLoaded:() -> Void):Void
```

### exists

```haxe
override function exists(name:String):Bool
```

### get

```haxe
override function get(name:String):FileEntry
```

### iterator

```haxe
override function iterator():hxd.impl.ArrayIterator_hxd_fs_FileEntry
```

## Inherited members

- from [`hxd.fs.FileEntry`](FileEntry.md): `name`, `path`, `directory`, `extension`, `size`, `isDirectory`, `isAvailable`, `getBytes`, `readBytes`, `readBytesAsync`, `fetchBytes`, `readFull`, `getSign`, `getText`, `open`, `load`, `loadBitmap`, `watch`, `exists`, `get`, `iterator`
