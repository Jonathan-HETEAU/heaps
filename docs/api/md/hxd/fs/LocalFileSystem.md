# hxd.fs.LocalFileSystem

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/LocalFileSystem.hx`](../../../../../hxd/fs/LocalFileSystem.hx)

Implements: [`hxd.fs.FileSystem`](FileSystem.md)

## Constructor

### new

```haxe
function new(dir:String):Void
```

## Static variables

### FILES_CHECK_MAX _(hl/sdl, hl/directx only)_

```haxe
static var FILES_CHECK_MAX:Int
```

## Variables

### baseDir

```haxe
var baseDir(default, null):String
```

### convert _(hl/sdl, hl/directx only)_

```haxe
var convert(default, null):FileConverter
```

## Methods

### exists

```haxe
function exists(path:String):Bool
```

### get

```haxe
function get(path:String):FileEntry
```

### getRoot

```haxe
function getRoot():FileEntry
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

### getAbsolutePath _(hl/sdl, hl/directx only)_

```haxe
function getAbsolutePath(f:FileEntry):String
```

### clearCache _(hl/sdl, hl/directx only)_

```haxe
function clearCache():Void
```

### removePathFromCache _(hl/sdl, hl/directx only)_

```haxe
function removePathFromCache(path:String):Void
```
