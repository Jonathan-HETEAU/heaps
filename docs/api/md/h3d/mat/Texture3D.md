# h3d.mat.Texture3D

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/Texture3D.hx`](../../../../../h3d/mat/Texture3D.hx)

Extends: [`h3d.mat.Texture`](Texture.md)

## Constructor

### new

```haxe
function new(w:Int, h:Int, d:Int, ?flags:Array<TextureFlags>, ?format:Null<TextureFormat>):Void
```

## Static methods

### default3DTexture

```haxe
static function default3DTexture():Texture3D
```

Returns a default 1x1x1 black 3D texture

## Methods

### clone

```haxe
override function clone():Texture3D
```

## Inherited members

- from [`h3d.mat.Texture`](Texture.md): `id`, `name`, `width`, `height`, `flags`, `format`, `mipMap`, `filter`, `wrap`, `slice`, `layerCount`, `lodBias`, `mipLevels`, `anisotropicMaxLevel`, `startingMip`, `residentMip`, `realloc`, `depthBuffer`, `alloc`, `isSRGB`, `clone`, `preventAutoDispose`, `waitLoad`, `setName`, `isDisposed`, `resize`, `clearF`, `clear`, `setResidentMip`, `uploadBitmap`, `uploadPixels`, `dispose`, `hasStencil`, `isDepth`, `getHandle`, `capturePixels`
