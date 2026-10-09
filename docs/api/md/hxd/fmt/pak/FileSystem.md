# hxd.fmt.pak.FileSystem

**class** · package [`hxd.fmt.pak`](README.md) · source [`hxd/fmt/pak/FileSystem.hx`](../../../../../../hxd/fmt/pak/FileSystem.hx)

Implements: [`hxd.fs.FileSystem`](../../fs/FileSystem.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### totalReadBytes

```haxe
var totalReadBytes:Int
```

### totalReadCount

```haxe
var totalReadCount:Int
```

## Methods

### loadPak

```haxe
function loadPak(file:String):Void
```

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

### getRoot

```haxe
function getRoot():hxd.fs.FileEntry
```

### get

```haxe
function get(path:String):hxd.fs.FileEntry
```

### exists

```haxe
function exists(path:String):Bool
```

### dir

```haxe
function dir(path:String):Array<hxd.fs.FileEntry>
```

### delete

```haxe
function delete(path:String):Bool
```
