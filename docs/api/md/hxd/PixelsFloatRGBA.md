# hxd.PixelsFloatRGBA

**abstract** · package [`hxd`](README.md) · module `hxd.Pixels` · source [`hxd/Pixels.hx`](../../../../hxd/Pixels.hx)

`Pixels` converted to the `RGBA32F` format, with fast pixel access.

Underlying type: [`hxd.Pixels`](Pixels.md)

Members of [`hxd.Pixels`](Pixels.md) are forwarded (`@:forward`): they are usable directly on this type.

Implicit casts from: `Pixels`

Implicit casts to: `Pixels`

## Static methods

### fromPixels

```haxe
static function fromPixels(p:Pixels):PixelsFloatRGBA
```

Converts the pixels to `RGBA32F` in place.

## Methods

### getPixelF

```haxe
inline function getPixelF(x:Int, y:Int, ?v:h3d.Vector4):Null<h3d.Vector4>
```

Returns the 4 values of the pixel in `v` (or in a new vector).

### setPixelF

```haxe
inline function setPixelF(x:Int, y:Int, v:h3d.Vector4):Void
```

Sets the 4 values of the pixel.
