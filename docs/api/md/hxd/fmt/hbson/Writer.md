# hxd.fmt.hbson.Writer

**class** · package [`hxd.fmt.hbson`](README.md) · source [`hxd/fmt/hbson/Writer.hx`](../../../../../../hxd/fmt/hbson/Writer.hx)

Writes the HBSON format: a binary encoding of JSON values, with short strings stored once.

## Constructor

### new

```haxe
function new(out:Output):Void
```

Creates a writer for the output, and writes the header.

## Methods

### write

```haxe
function write(json:Dynamic):Void
```

Writes a JSON value.
