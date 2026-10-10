# hxd.PixelsARGB

**abstract** · package [`hxd`](README.md) · module `hxd.Pixels` · source [`hxd/Pixels.hx`](../../../../hxd/Pixels.hx)

`Pixels` converted to the `ARGB` format, with fast pixel access.

Underlying type: [`hxd.Pixels`](Pixels.md)

Members of [`hxd.Pixels`](Pixels.md) are forwarded (`@:forward`): they are usable directly on this type.

Implicit casts from: `Pixels`

Implicit casts to: `Pixels`

## Static methods

### fromPixels

```haxe
static function fromPixels(p:Pixels):PixelsARGB
```

Converts the pixels to `ARGB` in place.

## Methods

### getPixel

```haxe
inline function getPixel(x:Int, y:Int):Int
```

Returns the color of the pixel, in `0xAARRGGBB` format.

### setPixel

```haxe
inline function setPixel(x:Int, y:Int, v:Int):Void
```

Sets the color of the pixel, in `0xAARRGGBB` format.
