# hxd.fs.LocalEntry

**class** · package [`hxd.fs`](README.md) · module `hxd.fs.LocalFileSystem` · source [`hxd/fs/LocalFileSystem.hx`](../../../../../hxd/fs/LocalFileSystem.hx) · available on hl/sdl, hl/directx

Extends: [`hxd.fs.FileEntry`](FileEntry.md)

A file or directory of a `LocalFileSystem`.

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
override function get(name:String):LocalEntry
```

### iterator

```haxe
override function iterator():hxd.impl.ArrayIterator_hxd_fs_FileEntry
```

### watch

```haxe
override function watch(onChanged:Null<() -> Void>):Void
```

## Inherited members

- from [`hxd.fs.FileEntry`](FileEntry.md): `name`, `path`, `directory`, `extension`, `size`, `isDirectory`, `isAvailable`, `getBytes`, `readBytes`, `readBytesAsync`, `fetchBytes`, `readFull`, `getSign`, `getText`, `open`, `load`, `loadBitmap`, `watch`, `exists`, `get`, `iterator`
