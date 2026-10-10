# hxd.BrowseOptions

**typedef** · package [`hxd`](README.md) · module `hxd.File` · source [`hxd/File.hx`](../../../../hxd/File.hx)

Options for `File.browse` and `File.saveAs`.

## Fields

### writeFile

```haxe
var ?writeFile:Null<() -> Void>
```

this will be called when saving a file, and allow you to write it again without displaying the browser, if supported

### title

```haxe
var ?title:Null<String>
```

The dialog title, if supported

### saveFileName

```haxe
var ?saveFileName:Null<() -> Void>
```

this will be called when saving a file with the target path, if supported

### relativePath

```haxe
var ?relativePath:Null<Bool>
```

If supported, will return a relative full path instead of an absolute one

### fileTypes

```haxe
var ?fileTypes:Null<Array<{ name:String, extensions:Array<String> }>>
```

the file types that we are allowed to select

### defaultPath

```haxe
var ?defaultPath:Null<String>
```

The default path in which we browse the file, if supported
