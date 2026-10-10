# hxd.fs.FileSystem

**interface** · package [`hxd.fs`](README.md) · source [`hxd/fs/FileSystem.hx`](../../../../../hxd/fs/FileSystem.hx)

Implemented by: [`hxd.fmt.pak.FileSystem`](../fmt/pak/FileSystem.md), [`hxd.fs.BytesFileSystem`](BytesFileSystem.md), [`hxd.fs.EmbedFileSystem`](EmbedFileSystem.md), [`hxd.fs.LocalFileSystem`](LocalFileSystem.md), [`hxd.fs.MultiFileSystem`](MultiFileSystem.md)

A file system containing the resources, used by `hxd.res.Loader`. Paths are relative to its root and use `/` separators.

## Methods

### getRoot

```haxe
function getRoot():FileEntry
```

Returns the root directory.

### get

```haxe
function get(path:String):FileEntry
```

Returns the file entry at the path. Throws if it does not exist (`hxd.res.NotFound` for most file systems).

### exists

```haxe
function exists(path:String):Bool
```

Tells if a file or directory exists at the path.

### dispose

```haxe
function dispose():Void
```

Releases the file system.

### dir

```haxe
function dir(path:String):Array<FileEntry>
```

Returns the entries of the directory.

### delete

```haxe
function delete(path:String):Bool
```

Deletes the file. Returns `false` if it can't be deleted.
