# hxd.BrowseSelect

**typedef** · package [`hxd`](README.md) · module `hxd.File` · source [`hxd/File.hx`](../../../../hxd/File.hx)

The file selected by `File.browse`.

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
