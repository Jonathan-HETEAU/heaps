# hxd.fs.FileConfig

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/FileConfig.hx`](../../../../../hxd/fs/FileConfig.hx)

Type parameters: `<T>`

Per directory configuration read from JSON files (such as `props.json`) in the resources: the configuration of a directory is merged with the one of its parent directories.

## Constructor

### new

```haxe
function new(?baseDir:String = "", ?fileName:String = "props.json", def:hxd.fs.FileConfig.T):Void
```

Creates a configuration reader for the files named `fileName` under `baseDir`, with the default configuration `def`.

## Methods

### getConfig

```haxe
function getConfig(dir:String):hxd.fs.FileConfig.T
```

Returns the configuration of the directory, merged with its parents and cached.

### loadConfig

```haxe
dynamic function loadConfig(parent:hxd.fs.FileConfig.T, obj:hxd.fs.FileConfig.T):hxd.fs.FileConfig.T
```

Merges a configuration file content with the parent configuration. By default, the fields of objects are merged recursively.
