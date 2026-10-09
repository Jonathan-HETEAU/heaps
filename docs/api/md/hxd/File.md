# hxd.File

**class** · package [`hxd`](README.md) · source [`hxd/File.hx`](../../../../hxd/File.hx)

## Static methods

### browse

```haxe
static function browse(onSelect:() -> Void, ?options:Null<BrowseOptions>):Void
```

### saveAs

```haxe
static function saveAs(dataContent:Bytes, ?options:Null<BrowseOptions>):Void
```

### exists

```haxe
static function exists(path:String):Bool
```

### delete

```haxe
static function delete(path:String):Void
```

### listDirectory

```haxe
static function listDirectory(path:String):Void
```

### getBytes

```haxe
static function getBytes(path:String):Bytes
```

### saveBytes

```haxe
static function saveBytes(path:String, data:Bytes):Void
```

### load

```haxe
static function load(path:String, onLoad:() -> Void, ?onError:() -> Void):Void
```

### createDirectory

```haxe
static function createDirectory(path:String):Void
```
