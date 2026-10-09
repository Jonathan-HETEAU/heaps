# hxd.fs.EmbedFileSystem

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/EmbedFileSystem.hx`](../../../../../hxd/fs/EmbedFileSystem.hx)

Implements: [`hxd.fs.FileSystem`](FileSystem.md)

## Static methods

### create

```haxe
static function create(?basePath:Dynamic, ?options:Dynamic):Dynamic
```

## Methods

### getRoot

```haxe
function getRoot():FileEntry
```

### exists

```haxe
function exists(path:String):Bool
```

### get

```haxe
function get(path:String):hxd.fs._EmbedFileSystem.EmbedEntry
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
