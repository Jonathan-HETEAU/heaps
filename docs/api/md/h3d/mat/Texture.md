# h3d.mat.Texture

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/Texture.hx`](../../../../../h3d/mat/Texture.hx)

Subclasses: [`h3d.mat.Texture3D`](Texture3D.md), [`h3d.mat.TextureArray`](TextureArray.md), [`h3d.mat.TextureChannels`](TextureChannels.md)

## Constructor

### new

```haxe
function new(w:Int, h:Int, ?flags:Array<TextureFlags>, ?format:Null<TextureFormat>):Void
```

Creates a texture of `w` x `h` pixels, allocated immediately unless the `NoAlloc` flag is set.
- **param** `flags` The texture flags, such as `Target`, `MipMapped` or `Cube`.
- **param** `format` The pixel format (`nativeFormat` by default).

## Static variables

### nativeFormat

```haxe
static var nativeFormat(default, null):TextureFormat
```

The default texture color format

### TRILINEAR_FILTERING_ENABLED

```haxe
static var TRILINEAR_FILTERING_ENABLED:Bool
```

If `true`, mipmapped textures are created with `Linear` mip filtering, otherwise `Nearest`.

### DEFAULT_WRAP

```haxe
static var DEFAULT_WRAP:Wrap
```

The wrap mode of new textures.

### mipMap_bits

```haxe
static inline var mipMap_bits:Int = 2
```

### mipMap_offset

```haxe
static inline var mipMap_offset:Int = 0
```

### mipMap_mask

```haxe
static inline var mipMap_mask:Int = 3
```

### filter_bits

```haxe
static inline var filter_bits:Int = 2
```

### filter_offset

```haxe
static inline var filter_offset:Int = 2
```

### filter_mask

```haxe
static inline var filter_mask:Int = 12
```

### wrap_bits

```haxe
static inline var wrap_bits:Int = 2
```

### wrap_offset

```haxe
static inline var wrap_offset:Int = 4
```

### wrap_mask

```haxe
static inline var wrap_mask:Int = 48
```

### slice_bits

```haxe
static inline var slice_bits:Int = 11
```

### slice_offset

```haxe
static inline var slice_offset:Int = 6
```

### slice_mask

```haxe
static inline var slice_mask:Int = 131008
```

### __startingMip_bits

```haxe
static inline var __startingMip_bits:Int = 4
```

### __startingMip_offset

```haxe
static inline var __startingMip_offset:Int = 17
```

### __startingMip_mask

```haxe
static inline var __startingMip_mask:Int = 1966080
```

### packedLodBias_bits

```haxe
static inline var packedLodBias_bits:Int = 7
```

### packedLodBias_offset

```haxe
static inline var packedLodBias_offset:Int = 21
```

### packedLodBias_mask

```haxe
static inline var packedLodBias_mask:Int = 266338304
```

### packedAnisotropicMaxLevel_bits

```haxe
static inline var packedAnisotropicMaxLevel_bits:Int = 4
```

### packedAnisotropicMaxLevel_offset

```haxe
static inline var packedAnisotropicMaxLevel_offset:Int = 28
```

### packedAnisotropicMaxLevel_mask

```haxe
static inline var packedAnisotropicMaxLevel_mask:Int = -268435456
```

## Static methods

### getDefaultDepth

```haxe
static function getDefaultDepth():Texture
```

This will return the default depth buffer, which is automatically resized to the screen size.

### fromBitmap

```haxe
static function fromBitmap(bmp:hxd.BitmapData):Texture
```

Creates a texture from a bitmap.

### fromPixels

```haxe
static function fromPixels(pixels:hxd.Pixels, ?format:TextureFormat):Texture
```

Creates a texture from pixels.
- **param** `format` The texture format (the pixels format by default).

### fromColor

```haxe
static function fromColor(color:Int, ?alpha:Float = 1.):Null<Texture>
```

Creates a 1x1 texture using the RGB color passed as parameter.

### genDisc

```haxe
static function genDisc(size:Int, color:Int, ?alpha:Float = 1.):Texture
```

Returns a shared `size` x `size` texture with a filled disc of the given color (`0xRRGGBB`).

### defaultCubeTexture

```haxe
static function defaultCubeTexture():Texture
```

Returns a default dummy 1x1 black cube texture

### genChecker

```haxe
static function genChecker(size:Int):Texture
```

Returns a checker texture of size x size, than can be repeated

### genNoise

```haxe
static function genNoise(size:Int):Texture
```

Returns a shared `size` x `size` texture filled with random values.

### getMipMap

```haxe
static inline function getMipMap(v:Int):Int
```

### getFilter

```haxe
static inline function getFilter(v:Int):Int
```

### getWrap

```haxe
static inline function getWrap(v:Int):Int
```

### getSlice

```haxe
static inline function getSlice(v:Int):Int
```

### get__startingMip

```haxe
static inline function get__startingMip(v:Int):Int
```

### getPackedLodBias

```haxe
static inline function getPackedLodBias(v:Int):Int
```

### getPackedAnisotropicMaxLevel

```haxe
static inline function getPackedAnisotropicMaxLevel(v:Int):Int
```

## Variables

### id

```haxe
var id(default, null):Int
```

A unique identifier of the texture.

### name

```haxe
var name(default, null):String
```

The texture name (usually its resource path), used for debugging. See `setName`.

### width

```haxe
var width(default, null):Int
```

The width, in pixels.

### height

```haxe
var height(default, null):Int
```

The height, in pixels.

### flags

```haxe
var flags(default, null):EnumFlags<TextureFlags>
```

The flags given at creation, and some state flags such as `Loading`.

### format

```haxe
var format(default, null):TextureFormat
```

The pixel format.

### mipMap

```haxe
var mipMap(default, set):MipMap
```

How the mip levels are sampled (`None` unless the texture is `MipMapped`).

### filter

```haxe
var filter(default, set):Filter
```

How the pixels are interpolated (`Linear` by default).

### wrap

```haxe
var wrap(default, set):Wrap
```

How the texture coordinates outside of `[0, 1]` are handled (`DEFAULT_WRAP` by default).

### slice

```haxe
var slice(default, set):Int
```

For texture arrays: if positive, binds only the layer `slice - 1` as a 2D texture (DirectX 12).

### layerCount

```haxe
var layerCount(get, null):Int
```

The number of layers: 6 for cube textures, the number of layers of texture arrays, the depth of 3D textures, 1 otherwise.

### lodBias

```haxe
var lodBias(get, set):Float
```

A bias added to the mip level selected when sampling, from -15 to 16: positive values select less detailed levels.

### mipLevels

```haxe
var mipLevels(get, null):Int
```

The number of mip levels (1 if the texture is not `MipMapped`).

### anisotropicMaxLevel

```haxe
var anisotropicMaxLevel(get, set):Int
```

The maximum level of anisotropic filtering (1 to 16).

### startingMip

```haxe
var startingMip(get, set):Int
```

The most detailed mip level sampled: levels before it are ignored.

### residentMip

```haxe
var residentMip(default, null):Int
```

The most detailed mip level allocated on the GPU : mip levels before it are not allocated,
and the texture is sampled starting at this level.

### realloc

```haxe
var realloc:() -> Void
```

If this callback is set, the texture can be re-allocated when the 3D context has been lost or when
it's been free because of lack of memory.

### depthBuffer

```haxe
var depthBuffer:Texture
```

When the texture is used as render target, tells which depth buffer will be used.
If set to null, depth testing is disabled.

## Methods

### alloc

```haxe
function alloc():Void
```

Allocates the GPU memory of the texture if it is not allocated.

### isSRGB

```haxe
function isSRGB():Bool
```

Tells if the format stores sRGB colors.

### clone

```haxe
function clone():Texture
```

Returns a GPU copy of the texture (same size, format and main flags).

### preventAutoDispose

```haxe
function preventAutoDispose():Void
```

In case we run out of GPU memory, textures that hasn't been used for a long time will be disposed.
Calling this will make this texture not considered for auto disposal.

### waitLoad

```haxe
function waitLoad(f:() -> Void):Void
```

Some textures might take some time to load. You can check flags.has(Loading)
or add a waitLoad callback which will get called either immediately if the texture is already loaded
or when loading is complete.

### setName

```haxe
function setName(n:String):Void
```

Sets the texture name, used for debugging.

### isDisposed

```haxe
inline function isDisposed():Bool
```

Tells if the GPU memory is released and cannot be restored with `realloc`.

### resize

```haxe
function resize(width:Int, height:Int):Void
```

Changes the texture size. The content is lost.

### clearF

```haxe
function clearF(?r:Float = 0., ?g:Float = 0., ?b:Float = 0., ?a:Float = 0., ?layer:Int = -1):Void
```

Fills a render target with the given float color.
- **param** `layer` The layer to clear, or `-1` for all layers.

### clear

```haxe
function clear(color:Int, ?alpha:Float = 1., ?layer:Int = -1):Void
```

Fills the texture with a color.
- **param** `color` The color, in `0xRRGGBB` format.
- **param** `alpha` The alpha, from `0` to `1`.
- **param** `layer` The layer to clear, or `-1` for all layers.

### setResidentMip

```haxe
function setResidentMip(mip:Int):Bool
```

Releases the GPU memory of the mip levels more detailed than `mip` (texture streaming).
Returns `false` if the driver does not support it. Not supported for render targets and depth textures.

### uploadBitmap

```haxe
function uploadBitmap(bmp:hxd.BitmapData, ?mipLevel:Int = 0, ?layer:Int = 0):Void
```

Uploads the pixels of a bitmap to a mip level and layer. The size must match the mip level size.

### uploadPixels

```haxe
function uploadPixels(pixels:hxd.Pixels, ?mipLevel:Int = 0, ?layer:Int = 0):Void
```

Uploads pixels to a mip level and layer. The size must match the mip level size. Uploading the level 0 of the last
layer of a `MipMapped` texture generates the mip levels, unless `ManualMipMapGen` is set.

### dispose

```haxe
function dispose():Void
```

Releases the GPU memory of the texture.

### hasStencil

```haxe
function hasStencil():Bool
```

Tells if the format is a depth format with a stencil.

### isDepth

```haxe
function isDepth():Bool
```

Tells if the format is a depth format.

### getHandle

```haxe
function getHandle():TextureHandle
```

Returns the bindless handle of the texture (requires a driver supporting bindless textures).

### capturePixels

```haxe
function capturePixels(?face:Int = 0, ?mipLevel:Int = 0, ?region:h2d.col.IBounds):hxd.Pixels
```

Downloads the current texture data from the GPU.
Beware, this is a very slow operation that shouldn't be done during rendering.
