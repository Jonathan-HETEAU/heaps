# hxd.fmt.bfnt.Reader

**class** · package [`hxd.fmt.bfnt`](README.md) · source [`hxd/fmt/bfnt/Reader.hx`](../../../../../../hxd/fmt/bfnt/Reader.hx)

Reads the BFNT format: the compact binary bitmap font format of Heaps.

## Constructor

### new

```haxe
function new(i:Input):Void
```

Creates a reader for the input.

## Static methods

### parse

```haxe
static inline function parse(bytes:Bytes, resolveTile:() -> h2d.Tile):h2d.Font
```

Reads the font from the bytes.

## Methods

### read

```haxe
function read(resolveTile:() -> h2d.Tile):h2d.Font
```

Reads the font. `resolveTile` returns the tile of the image referenced by the font.
