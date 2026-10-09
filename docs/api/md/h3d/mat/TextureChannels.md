# h3d.mat.TextureChannels

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/TextureChannels.hx`](../../../../../h3d/mat/TextureChannels.hx)

Extends: [`h3d.mat.Texture`](Texture.md)

A texture whose channels (red, green, blue, alpha) are filled separately from different images, for instance to
pack the roughness, metalness and occlusion maps in a single texture.

## Constructor

### new

```haxe
function new(w:Int, h:Int, ?flags:Array<TextureFlags>, ?format:Null<TextureFormat>):Void
```

Creates a texture of `w` x `h` pixels with empty channels.

## Variables

### allowAsync

```haxe
var allowAsync:Bool
```

If `true`, the images are loaded asynchronously when their format allows it.

## Methods

### setResource

```haxe
function setResource(c:hxd.Channel, res:hxd.res.Image, ?srcChannel:hxd.Channel):Void
```

Fills the channel `c` with the channel `srcChannel` (by default the same) of image `res`, which must have the
same size. The channel is updated when the image file changes.

## Inherited members

- from [`h3d.mat.Texture`](Texture.md): `id`, `name`, `width`, `height`, `flags`, `format`, `mipMap`, `filter`, `wrap`, `slice`, `layerCount`, `lodBias`, `mipLevels`, `anisotropicMaxLevel`, `startingMip`, `residentMip`, `realloc`, `depthBuffer`, `alloc`, `isSRGB`, `clone`, `preventAutoDispose`, `waitLoad`, `setName`, `isDisposed`, `resize`, `clearF`, `clear`, `setResidentMip`, `uploadBitmap`, `uploadPixels`, `dispose`, `hasStencil`, `isDepth`, `getHandle`, `capturePixels`
