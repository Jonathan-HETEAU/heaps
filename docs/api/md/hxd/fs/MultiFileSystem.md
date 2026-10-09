# hxd.fs.MultiFileSystem

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/MultiFileSystem.hx`](../../../../../hxd/fs/MultiFileSystem.hx)

Implements: [`hxd.fs.FileSystem`](FileSystem.md)

## Constructor

### new

```haxe
function new(fs:Array<FileSystem>):Void
```

## Variables

### fs

```haxe
var fs:Array<FileSystem>
```

## Methods

### getRoot

```haxe
function getRoot():hxd.fs._MultiFileSystem.MultiFileEntry
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
