# hxd.fs.EmbedFileSystem

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/EmbedFileSystem.hx`](../../../../../hxd/fs/EmbedFileSystem.hx)

Implements: [`hxd.fs.FileSystem`](FileSystem.md)

A read-only file system whose files are embedded in the application as Haxe resources. Created with `create`, used by `hxd.Res.initEmbed`.

## Static methods

### create

```haxe
static function create(?basePath:Dynamic, ?options:Dynamic):Dynamic
```

Converts and embeds all the files of the resource directory, and returns a file system to access them.

## Methods

### getRoot

```haxe
function getRoot():FileEntry
```

Returns the root directory.

### exists

```haxe
function exists(path:String):Bool
```

Tells if a file or directory exists at the path.

### get

```haxe
function get(path:String):hxd.fs._EmbedFileSystem.EmbedEntry
```

Returns the file entry at the path. Throws `NotFound` if it does not exist.

### dispose

```haxe
function dispose():Void
```

Does nothing.

### dir

```haxe
function dir(path:String):Array<FileEntry>
```

Returns the entries of the directory, sorted by name.

### delete

```haxe
function delete(path:String):Bool
```

Not supported.
