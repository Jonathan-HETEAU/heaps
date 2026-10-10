# hxd.fmt.hdr.Reader

**class** · package [`hxd.fmt.hdr`](README.md) · source [`hxd/fmt/hdr/Reader.hx`](../../../../../../hxd/fmt/hdr/Reader.hx)

Decodes Radiance HDR images (`.hdr`).

## Static methods

### decode

```haxe
static function decode(bytes:Bytes, sRGB:Bool):{ width:Int, height:Int, gamma:Bool, bytes:Bytes }
```

Decodes the image into 32 bits float RGBA pixels, gamma corrected unless `sRGB` is set.
