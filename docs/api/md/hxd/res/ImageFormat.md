# hxd.res.ImageFormat

**enum abstract** · package [`hxd.res`](README.md) · module `hxd.res.Image` · source [`hxd/res/Image.hx`](../../../../../hxd/res/Image.hx)

The file format of an image.

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `Jpg` | `0` | JPEG. |
| `Png` | `1` | PNG. |
| `Gif` | `2` | GIF (only the first frame). |
| `Tga` | `3` | Targa. |
| `Dds` | `4` | DirectDraw Surface, which can contain compressed formats, mip levels, cube maps and texture arrays. |
| `Raw` | `5` | Square raw float data with the `.raw` extension (32 or 16 bits per pixel, single channel), such as height maps. |
| `Hdr` | `6` | Radiance HDR. |

## Static variables

### useLoadBitmap

```haxe
static var useLoadBitmap(get, null):Bool
```

Tells if we might not be able to directly decode the image without going through a loadBitmap async call.
This for example occurs when we want to decode progressive JPG in JS.

## Methods

### getName

```haxe
function getName():String
```

Returns the name of the format, such as `"PNG"`.
