# hxd.fs.MultiFileSystem

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/MultiFileSystem.hx`](../../../../../hxd/fs/MultiFileSystem.hx)

Implements: [`hxd.fs.FileSystem`](FileSystem.md)

Combines several file systems: a file is searched in each of them, in order. Directories merge their contents.

## Constructor

### new

```haxe
function new(fs:Array<FileSystem>):Void
```

Creates a file system combining the given ones.

## Variables

### fs

```haxe
var fs:Array<FileSystem>
```

The file systems, by priority order.

## Methods

### getRoot

```haxe
function getRoot():hxd.fs._MultiFileSystem.MultiFileEntry
```

Returns the root directory, merging the roots of all the file systems.

### get

```haxe
function get(path:String):FileEntry
```

Returns the entry at the path, from the first file system containing it. Throws `NotFound` if none does.

### exists

```haxe
function exists(path:String):Bool
```

Tells if one of the file systems contains the path.

### dispose

```haxe
function dispose():Void
```

Disposes all the file systems.

### dir

```haxe
function dir(path:String):Array<FileEntry>
```

Not supported: use `get(path)` and iterate over the entry.

### delete

```haxe
function delete(path:String):Bool
```

Not supported.
