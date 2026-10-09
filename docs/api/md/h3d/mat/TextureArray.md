# h3d.mat.TextureArray

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/TextureArray.hx`](../../../../../h3d/mat/TextureArray.hx)

Extends: [`h3d.mat.Texture`](Texture.md)

A texture array: several 2D textures (layers) of the same size and format, sampled with a layer index in shaders.

## Constructor

### new

```haxe
function new(w:Int, h:Int, layers:Int, ?flags:Array<TextureFlags>, ?format:Null<TextureFormat>):Void
```

Creates a texture array of `layers` layers of `w` x `h` pixels.

## Static methods

### defaultArrayTexture

```haxe
static function defaultArrayTexture():TextureArray
```

Returns a shared 1x1 texture array with a single dark grey layer, used when a texture array is missing.

## Methods

### clone

```haxe
override function clone():TextureArray
```

## Inherited members

- from [`h3d.mat.Texture`](Texture.md): `id`, `name`, `width`, `height`, `flags`, `format`, `mipMap`, `filter`, `wrap`, `slice`, `layerCount`, `lodBias`, `mipLevels`, `anisotropicMaxLevel`, `startingMip`, `residentMip`, `realloc`, `depthBuffer`, `alloc`, `isSRGB`, `clone`, `preventAutoDispose`, `waitLoad`, `setName`, `isDisposed`, `resize`, `clearF`, `clear`, `setResidentMip`, `uploadBitmap`, `uploadPixels`, `dispose`, `hasStencil`, `isDepth`, `getHandle`, `capturePixels`
