# hxd.fmt.bfnt.FontParser

**class** · package [`hxd.fmt.bfnt`](README.md) · source [`hxd/fmt/bfnt/FontParser.hx`](../../../../../../hxd/fmt/bfnt/FontParser.hx)

Parses the bitmap font description formats: BFNT, BMFont (text, XML or binary), Littera, FontBuilder (Divo), and Hiero.

## Static methods

### parse

```haxe
static function parse(bytes:Bytes, path:String, resolveTile:() -> h2d.Tile):h2d.Font
```

Parses the font description of the file at `path`. `resolveTile` returns the tile of the image referenced by the description.
