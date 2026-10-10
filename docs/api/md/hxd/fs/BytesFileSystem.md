# hxd.fs.BytesFileSystem

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/BytesFileSystem.hx`](../../../../../hxd/fs/BytesFileSystem.hx)

Implements: [`hxd.fs.FileSystem`](FileSystem.md)

Base class of the file systems whose files are in memory (such as the embedded files): subclasses implement `getBytes`.
Directories are not supported.

## Methods

### getRoot

```haxe
function getRoot():Null<FileEntry>
```

Not implemented.

### exists

```haxe
function exists(path:String):Bool
```

Tells if a file exists at the path.

### get

```haxe
function get(path:String):BytesFileEntry
```

Returns the file entry at the path. Throws if it does not exist.

### dispose

```haxe
function dispose():Void
```

Does nothing.

### dir

```haxe
function dir(path:String):Array<FileEntry>
```

Not implemented.

### delete

```haxe
function delete(path:String):Bool
```

Not supported.
