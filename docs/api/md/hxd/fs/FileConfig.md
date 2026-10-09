# hxd.fs.FileConfig

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/FileConfig.hx`](../../../../../hxd/fs/FileConfig.hx)

Type parameters: `<T>`

## Constructor

### new

```haxe
function new(?baseDir:String = "", ?fileName:String = "props.json", def:hxd.fs.FileConfig.T):Void
```

## Methods

### getConfig

```haxe
function getConfig(dir:String):hxd.fs.FileConfig.T
```

### loadConfig

```haxe
dynamic function loadConfig(parent:hxd.fs.FileConfig.T, obj:hxd.fs.FileConfig.T):hxd.fs.FileConfig.T
```
