# hxd.File

**class** · package [`hxd`](README.md) · source [`hxd/File.hx`](../../../../hxd/File.hx)

Cross-platform file access.
`browse` and `saveAs` open a system dialog on HashLink and use the browser on JS.
The other functions need a `sys` target (or Node.js) and throw `"Not supported"` otherwise.

## Static methods

### browse

```haxe
static function browse(onSelect:() -> Void, ?options:Null<BrowseOptions>):Void
```

Opens a dialog to select a file, then calls `onSelect` with it.
On JS, it uses a hidden `<input type="file">` element, and should be called from a user input event.

### saveAs

```haxe
static function saveAs(dataContent:Bytes, ?options:Null<BrowseOptions>):Void
```

Opens a dialog to choose a path, then saves `dataContent` to it.
On JS, it uses the file picker when the browser supports it, and a download otherwise.

### exists

```haxe
static function exists(path:String):Bool
```

Tells if the file or directory exists.

### delete

```haxe
static function delete(path:String):Void
```

Deletes the file, ignoring errors.

### listDirectory

```haxe
static function listDirectory(path:String):Void
```

Returns the names of the entries of the directory.

### getBytes

```haxe
static function getBytes(path:String):Bytes
```

Reads the whole content of the file.

### saveBytes

```haxe
static function saveBytes(path:String, data:Bytes):Void
```

Writes `data` to the file, replacing its content.

### load

```haxe
static function load(path:String, onLoad:() -> Void, ?onError:() -> Void):Void
```

Reads the file and calls `onLoad` with its content, or `onError` if it can't be read. Only supported on `sys` targets.

### createDirectory

```haxe
static function createDirectory(path:String):Void
```

Creates the directory, and its missing parents.
