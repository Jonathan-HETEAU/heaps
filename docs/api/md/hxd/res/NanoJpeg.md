# hxd.res.NanoJpeg

**class** · package [`hxd.res`](README.md) · source [`hxd/res/NanoJpeg.hx`](../../../../../hxd/res/NanoJpeg.hx)

A pure Haxe baseline JPEG decoder (progressive and lossless JPEG are not supported).

## Static methods

### decode

```haxe
static function decode(bytes:Bytes, ?filter:Filter, ?position:Int = 0, ?size:Int = -1):{ width:Int, pixels:Bytes, height:Int }
```

Decodes the JPEG data at `position` in `bytes` and returns its pixels in BGRA format, with its size.
