# hxd.fs.ConvertRule

**typedef** · package [`hxd.fs`](README.md) · module `hxd.fs.FileConverter` · source [`hxd/fs/FileConverter.hx`](../../../../../hxd/fs/FileConverter.hx) · available on hl/sdl, hl/directx

A conversion rule: the files matching `pt` are converted with `cmd`. `version` comes from `fs.convertVersion` and forces a new conversion when changed.

## Fields

### version

```haxe
var version:Int
```

The version of the output format, from `fs.convertVersion`: changing it regenerates the files.

### pt

```haxe
var pt:ConvertPattern
```

The files matched by the rule.

### priority

```haxe
var priority:Int
```

The priority of the rule: the rules are tried by decreasing priority.

### cmd

```haxe
var cmd:ConvertCommand
```

The conversion to run.
