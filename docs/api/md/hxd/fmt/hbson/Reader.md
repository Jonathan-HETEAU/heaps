# hxd.fmt.hbson.Reader

**class** · package [`hxd.fmt.hbson`](README.md) · source [`hxd/fmt/hbson/Reader.hx`](../../../../../../hxd/fmt/hbson/Reader.hx)

Reads the HBSON format: a binary encoding of JSON values (see `hxd.fs.Convert.ConvertBinJSON`).

## Constructor

### new

```haxe
function new(data:Bytes, globalStrings:Bool):Void
```

Creates a reader for the data. If `globalStrings` is set, the strings are shared between all the readers to save memory.

## Methods

### read

```haxe
function read():Dynamic
```

Reads a JSON value.
