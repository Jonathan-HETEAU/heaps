# hxd.BrowseSelect

**typedef** · package [`hxd`](README.md) · module `hxd.File` · source [`hxd/File.hx`](../../../../hxd/File.hx)

this will be called when saving a file, and allow you to write it again without displaying the browser, if supported

## Fields

### load

```haxe
var load:(onReady:() -> Void) -> Void
```

allow to load the selected file content

### fileName

```haxe
var fileName:String
```

might contain only the file name without the full path depending on sandbox restrictions
