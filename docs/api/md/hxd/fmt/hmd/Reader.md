# hxd.fmt.hmd.Reader

**class** · package [`hxd.fmt.hmd`](README.md) · source [`hxd/fmt/hmd/Reader.hx`](../../../../../../hxd/fmt/hmd/Reader.hx)

Reads a HMD file.

## Constructor

### new

```haxe
function new(i:Input):Void
```

Creates a reader for the input.

## Methods

### readHeader

```haxe
function readHeader(?fast:Bool = false):Data
```

Reads the description of the content of the file, without the binary data. If `fast` is set, the header is read at once from the input.

### read

```haxe
function read():Data
```

Reads the file, with its binary data.
