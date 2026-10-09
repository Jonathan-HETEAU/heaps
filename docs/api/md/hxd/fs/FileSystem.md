# hxd.fs.FileSystem

**interface** · package [`hxd.fs`](README.md) · source [`hxd/fs/FileSystem.hx`](../../../../../hxd/fs/FileSystem.hx)

Implemented by: [`hxd.fmt.pak.FileSystem`](../fmt/pak/FileSystem.md), [`hxd.fs.BytesFileSystem`](BytesFileSystem.md), [`hxd.fs.EmbedFileSystem`](EmbedFileSystem.md), [`hxd.fs.LocalFileSystem`](LocalFileSystem.md), [`hxd.fs.MultiFileSystem`](MultiFileSystem.md)

## Methods

### getRoot

```haxe
function getRoot():FileEntry
```

### get

```haxe
function get(path:String):FileEntry
```

### exists

```haxe
function exists(path:String):Bool
```

### dispose

```haxe
function dispose():Void
```

### dir

```haxe
function dir(path:String):Array<FileEntry>
```

### delete

```haxe
function delete(path:String):Bool
```
