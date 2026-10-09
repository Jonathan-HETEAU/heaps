# h3d.mat.TextureArray

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/TextureArray.hx`](../../../../../h3d/mat/TextureArray.hx)

Extends: [`h3d.mat.Texture`](Texture.md)

## Constructor

### new

```haxe
function new(w:Int, h:Int, layers:Int, ?flags:Array<TextureFlags>, ?format:Null<TextureFormat>):Void
```

## Static methods

### defaultArrayTexture

```haxe
static function defaultArrayTexture():TextureArray
```

## Methods

### clone

```haxe
override function clone():TextureArray
```

## Inherited members

- from [`h3d.mat.Texture`](Texture.md): `id`, `name`, `width`, `height`, `flags`, `format`, `mipMap`, `filter`, `wrap`, `slice`, `layerCount`, `lodBias`, `mipLevels`, `anisotropicMaxLevel`, `startingMip`, `residentMip`, `realloc`, `depthBuffer`, `alloc`, `isSRGB`, `clone`, `preventAutoDispose`, `waitLoad`, `setName`, `isDisposed`, `resize`, `clearF`, `clear`, `setResidentMip`, `uploadBitmap`, `uploadPixels`, `dispose`, `hasStencil`, `isDepth`, `getHandle`, `capturePixels`
