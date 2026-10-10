# hxd.fs.LocalFileSystem

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/LocalFileSystem.hx`](../../../../../hxd/fs/LocalFileSystem.hx)

Implements: [`hxd.fs.FileSystem`](FileSystem.md)

A file system reading the files of a local directory, converting them when needed (see `FileConverter`) and watching their changes.
Only available on `sys` targets and Node.js: on other platforms, creating one throws an error.

## Constructor

### new

```haxe
function new(dir:String):Void
```

Creates a file system for the directory, searched relative to the executable (or `storagePath`) then to the current directory.
`configuration` selects the conversion rules (`"default"` if `null`).

## Static variables

### FILES_CHECK_MAX _(hl/sdl, hl/directx only)_

```haxe
static var FILES_CHECK_MAX:Int
```

The maximum number of watched files checked for changes per frame, when the platform does not notify the changes.

## Variables

### baseDir

```haxe
var baseDir(default, null):String
```

The full path of the root directory, ending with `/`.

### convert _(hl/sdl, hl/directx only)_

```haxe
var convert(default, null):FileConverter
```

The converter applied to the files when they are opened.

## Methods

### exists

```haxe
function exists(path:String):Bool
```

Tells if a file exists at the path. The case of the path must match the file name.

### get

```haxe
function get(path:String):FileEntry
```

Returns the file entry at the path. Throws `NotFound` if it does not exist.

### getRoot

```haxe
function getRoot():FileEntry
```

Returns the root directory.

### dispose

```haxe
function dispose():Void
```

Clears the cache.

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

### getAbsolutePath _(hl/sdl, hl/directx only)_

```haxe
function getAbsolutePath(f:FileEntry):String
```

Returns the absolute path of the (converted) file of the entry.

### clearCache _(hl/sdl, hl/directx only)_

```haxe
function clearCache():Void
```

Removes the files that were not found from the cache, so they are searched again.

### removePathFromCache _(hl/sdl, hl/directx only)_

```haxe
function removePathFromCache(path:String):Void
```

Removes the entry of the path from the cache.
