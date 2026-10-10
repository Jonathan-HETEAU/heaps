# hxd.fmt.tiff.TifTag

**enum abstract** · package [`hxd.fmt.tiff`](README.md) · module `hxd.fmt.tiff.Data` · source [`hxd/fmt/tiff/Data.hx`](../../../../../../hxd/fmt/tiff/Data.hx)

The TIFF tags read and written.

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `ImageWidth` | `256` | The width of the image. |
| `ImageHeight` | `257` | The height of the image. |
| `BitsPerSample` | `258` | The number of bits per channel. |
| `Compression` | `259` | The compression (`1` for none). |
| `PhotometricInterpretation` | `262` | The color space of the image. |
| `StripOffsets` | `273` | The positions of the data strips. |
| `Orientation` | `274` | The orientation of the image. |
| `SamplesPerPixel` | `277` | The number of channels. |
| `RowsPerStrip` | `278` | The number of rows per data strip. |
| `StripByteCounts` | `279` | The sizes of the data strips. |
| `PlanarConfiguration` | `284` | How the channels are stored (`1` for interleaved). |
| `SampleFormat` | `339` | The format of the channels (`1` unsigned, `2` signed, `3` float). |
| `ModelPixelScale` | `33550` | The size of a pixel in the GeoTIFF model space. |
| `ModelTiepoint` | `33922` | The GeoTIFF tie points between the image and the model space. |
| `GeoKeyDirectory` | `34735` | The GeoTIFF keys. |
| `GeoDoubleParams` | `34736` | The GeoTIFF float parameters. |
| `GeoAsciiParams` | `34737` | The GeoTIFF text parameters. |

## Methods

### toInt

```haxe
inline function toInt():Int
```

Returns the value of the tag.
