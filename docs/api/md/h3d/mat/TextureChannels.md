# h3d.mat.TextureChannels

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/TextureChannels.hx`](../../../../../h3d/mat/TextureChannels.hx)

Extends: [`h3d.mat.Texture`](Texture.md)

## Constructor

### new

```haxe
function new(w:Int, h:Int, ?flags:Array<TextureFlags>, ?format:Null<TextureFormat>):Void
```

## Variables

### allowAsync

```haxe
var allowAsync:Bool
```

## Methods

### setResource

```haxe
function setResource(c:hxd.Channel, res:hxd.res.Image, ?srcChannel:hxd.Channel):Void
```

## Inherited members

- from [`h3d.mat.Texture`](Texture.md): `id`, `name`, `width`, `height`, `flags`, `format`, `mipMap`, `filter`, `wrap`, `slice`, `layerCount`, `lodBias`, `mipLevels`, `anisotropicMaxLevel`, `startingMip`, `residentMip`, `realloc`, `depthBuffer`, `alloc`, `isSRGB`, `clone`, `preventAutoDispose`, `waitLoad`, `setName`, `isDisposed`, `resize`, `clearF`, `clear`, `setResidentMip`, `uploadBitmap`, `uploadPixels`, `dispose`, `hasStencil`, `isDepth`, `getHandle`, `capturePixels`
