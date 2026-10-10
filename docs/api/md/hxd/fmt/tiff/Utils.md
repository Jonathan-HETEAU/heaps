# hxd.fmt.tiff.Utils

**class** · package [`hxd.fmt.tiff`](README.md) · module `hxd.fmt.tiff.Data` · source [`hxd/fmt/tiff/Data.hx`](../../../../../../hxd/fmt/tiff/Data.hx)

Helpers to read the tags of a TIFF file.

## Static methods

### get

```haxe
static function get(f:TifFile, tag:TifTag):TifValue
```

Returns the value of the tag, or `null`.

### getInt

```haxe
static function getInt(f:TifFile, tag:TifTag):Null<Int>
```

Returns the value of the tag as an integer, or `null`.
