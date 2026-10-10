# hxd.fmt.tiff.Reader

**class** · package [`hxd.fmt.tiff`](README.md) · source [`hxd/fmt/tiff/Reader.hx`](../../../../../../hxd/fmt/tiff/Reader.hx)

Reads TIFF files (such as height maps).

## Constructor

### new

```haxe
function new(f:hxd.fmt.pak.FileInput):Void
```

Creates a reader for the file input.

## Static methods

### decode

```haxe
static function decode(f:TifFile):hxd.Pixels
```

Decodes the image. Only uncompressed 32 bits single channel float images are supported (`R32F`).

## Methods

### read

```haxe
function read():TifFile
```

Reads the tags and the data strips of the file.
