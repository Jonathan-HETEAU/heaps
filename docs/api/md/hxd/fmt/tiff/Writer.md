# hxd.fmt.tiff.Writer

**class** · package [`hxd.fmt.tiff`](README.md) · source [`hxd/fmt/tiff/Writer.hx`](../../../../../../hxd/fmt/tiff/Writer.hx)

Writes TIFF files.

## Constructor

### new

```haxe
function new(f:Output):Void
```

Creates a writer for the output.

## Static methods

### ofPixels

```haxe
static function ofPixels(pix:hxd.Pixels):TifFile
```

Returns the TIFF content of `R32F` pixels.

## Methods

### write

```haxe
function write(tif:TifFile):Void
```

Writes the file.
