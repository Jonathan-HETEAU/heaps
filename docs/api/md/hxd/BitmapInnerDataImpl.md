# hxd.BitmapInnerDataImpl

**class** · package [`hxd`](README.md) · module `hxd.BitmapData` · source [`hxd/BitmapData.hx`](../../../../hxd/BitmapData.hx) · available on hl/sdl, hl/directx

The native data of a `BitmapData` on non JS targets: an array of 32 bit pixels.

## Constructor

### new

```haxe
function new():Void
```

Creates empty data.

## Variables

### pixels

```haxe
var pixels:hl.BytesAccess<Int>
```

The pixels, in `0xAARRGGBB` format.

### width

```haxe
var width:Int
```

The width in pixels.

### height

```haxe
var height:Int
```

The height in pixels.
