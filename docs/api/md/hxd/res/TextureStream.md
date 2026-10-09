# hxd.res.TextureStream

**class** · package [`hxd.res`](README.md) · source [`hxd/res/TextureStream.hx`](../../../../../hxd/res/TextureStream.hx)

Handles the asynchronous loading of an Image texture.

Mipmapped textures are streamed if the driver supports the ResidentMips feature : the mip levels up to BASE_SIZE
are always loaded synchronously, the more detailed ones are loaded on demand with `loadMips` or `loadSync`.

Other textures having the AsyncLoading flag use a 1x1 black placeholder while the file is read asynchronously.

## Constructor

### new

```haxe
function new(image:Image):Void
```

## Static variables

### BASE_SIZE

```haxe
static var BASE_SIZE:Int
```

The mip levels up to this size are always loaded.

### MAX_LOADING_BYTES

```haxe
static var MAX_LOADING_BYTES:Int
```

The maximum size of the buffers used to read data asynchronously : other requests are queued until it's available.
A request bigger than this size is read without waiting. The released buffers are kept for reuse within this size.

## Variables

### image

```haxe
var image(default, null):Image
```

### texture

```haxe
var texture(get, null):h3d.mat.Texture
```

### mipStreaming

```haxe
var mipStreaming(default, null):Bool
```

Tells if the texture mip levels are streamed.

### targetMip

```haxe
var targetMip(default, null):Int
```

The most detailed mip level requested, it will be reloaded if the texture is reallocated.

## Methods

### isLoading

```haxe
function isLoading():Bool
```

Tells if some data is being loaded.

### loadMips

```haxe
function loadMips(mip:Int, ?onDone:() -> Void, ?priority:Float = 0.):Void
```

Load asynchronously the mip levels up to `mip` (0 for full resolution).
`onDone` is called when the texture is loaded (immediately if it is already loaded).
If the texture is not allocated, the mip levels will be loaded with it.

### unloadMips

```haxe
function unloadMips(mip:Int):Void
```

Release the mip levels that are more detailed than `mip`.
The mip levels up to BASE_SIZE are always kept.

### loadSync

```haxe
function loadSync(?maxSize:Int = 0):Void
```

Load synchronously the texture, up to the given size for streamed mip levels (0 for full resolution).

### cancel

```haxe
function cancel():Void
```

Cancel the pending load, if any.
