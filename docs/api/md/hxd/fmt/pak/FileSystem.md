# hxd.fmt.pak.FileSystem

**class** · package [`hxd.fmt.pak`](README.md) · source [`hxd/fmt/pak/FileSystem.hx`](../../../../../../hxd/fmt/pak/FileSystem.hx)

Implements: [`hxd.fs.FileSystem`](../../fs/FileSystem.md)

A file system reading the resources from one or more `.pak` archives. The files of the archives loaded last replace the ones of the same path.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty file system.

## Variables

### totalReadBytes

```haxe
var totalReadBytes:Int
```

The number of bytes read, for statistics.

### totalReadCount

```haxe
var totalReadCount:Int
```

The number of reads, for statistics.

## Methods

### loadPak

```haxe
function loadPak(file:String):Void
```

Adds the archive of the given path.

### addPak

```haxe
function addPak(file:FileInput, ?path:String):Void
```

Add the .pak file directly.

This method is intended to be used with single-threaded environment such as HTML5 target,
as it doesn't have access to sys package.

Use with multi-threaded environment at your own risk.

### dispose

```haxe
function dispose():Void
```

Closes the archives.

### getRoot

```haxe
function getRoot():hxd.fs.FileEntry
```

Returns the root directory.

### get

```haxe
function get(path:String):hxd.fs.FileEntry
```

Returns the file entry at the path. Throws `hxd.res.NotFound` if it does not exist.

### exists

```haxe
function exists(path:String):Bool
```

Tells if a file or directory exists at the path.

### dir

```haxe
function dir(path:String):Array<hxd.fs.FileEntry>
```

Returns the entries of the directory.

### delete

```haxe
function delete(path:String):Bool
```

Not supported.
