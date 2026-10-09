# h2d.col.PixelsCollider

**class** · package [`h2d.col`](README.md) · source [`h2d/col/PixelsCollider.hx`](../../../../../h2d/col/PixelsCollider.hx)

Extends: [`h2d.col.Collider`](Collider.md)

An `hxd.Pixels`-based collider. Checks for pixel color value under point to be above the cutoff value.

Note that it checks as `channel > cutoff`, not `channel >= cutoff`, hence cutoff value of 255 would never pass the test.

## Constructor

### new

```haxe
function new(pixels:hxd.Pixels, ?alphaCutoff:Int = 127, ?redCutoff:Int = 255, ?greenCutoff:Int = 255, ?blueCutoff:Int = 255, ?collideOnAny:Bool = true):Void
```

Create new BitmapCollider with specified bitmap, channel cutoff values and check mode.
- **param** `pixels` The source pixel data which is tested against.
- **param** `alphaCutoff` The alpha channel cutoff value.
- **param** `redCutoff` The red channel cutoff value.
- **param** `greenCutoff` The green channel cutoff value.
- **param** `blueCutoff` The blue channel cutoff value.
- **param** `collideOnAny` Whether to pass the collision check if any channel is above the threshold or if all channels should pass the test.

## Variables

### pixels

```haxe
var pixels:hxd.Pixels
```

The source pixel data which is tested against.

### redCutoff

```haxe
var redCutoff:Int
```

The red channel cutoff value in range of -1...255

Set to 255 to always fail the test.
@default 255

### greenCutoff

```haxe
var greenCutoff:Int
```

The green channel cutoff value in range of -1...255

Set to 255 to always fail the test.
@default 255

### blueCutoff

```haxe
var blueCutoff:Int
```

The blue channel cutoff value in range of -1...255

Set to 255 to always fail the test.
@default 255

### alphaCutoff

```haxe
var alphaCutoff:Int
```

The alpha channel cutoff value in range of -1...255

Set to 255 to always fail the test.
@default 127

### collideOnAny

```haxe
var collideOnAny:Bool
```

If true, will collide if any channel is above cutoff. Otherwise will collide only if all channels above their cutoff values.
@default true

### scaleX

```haxe
var scaleX:Float
```

Horizontal stretch of pixels to check for collision.

### scaleY

```haxe
var scaleY:Float
```

Vertical stretch of pixels to check for collision.

## Methods

### contains

```haxe
override function contains(p:Point):Bool
```

Checks if the pixel under given Point `p` passes the threshold test.

### collideCircle

```haxe
override function collideCircle(c:Circle):Bool
```

### collideBounds

```haxe
override function collideBounds(b:Bounds):Bool
```

## Inherited members

- from [`h2d.col.Collider`](Collider.md): `contains`, `collideCircle`, `collideBounds`
