# hxd.PixelsFloat

**abstract** · package [`hxd`](README.md) · module `hxd.Pixels` · source [`hxd/Pixels.hx`](../../../../hxd/Pixels.hx)

`Pixels` converted to the `R32F` format, with fast pixel access.

Underlying type: [`hxd.Pixels`](Pixels.md)

Members of [`hxd.Pixels`](Pixels.md) are forwarded (`@:forward`): they are usable directly on this type.

Implicit casts from: `Pixels`

Implicit casts to: `Pixels`

## Static methods

### fromPixels

```haxe
static function fromPixels(p:Pixels):PixelsFloat
```

Converts the pixels to `R32F` in place.

## Methods

### getPixelF

```haxe
inline function getPixelF(x:Int, y:Int, ?v:h3d.Vector4):Null<h3d.Vector4>
```

Returns the value of the pixel in the X component of `v` (or of a new vector).

### setPixelF

```haxe
inline function setPixelF(x:Int, y:Int, v:h3d.Vector4):Void
```

Sets the value of the pixel to the X component of `v`.
