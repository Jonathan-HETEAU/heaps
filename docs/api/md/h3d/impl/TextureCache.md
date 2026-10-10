# h3d.impl.TextureCache

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/TextureCache.hx`](../../../../../h3d/impl/TextureCache.hx)

A cache of temporary render target textures, reused from one frame to the next in the order they are allocated. Accessed with `RenderContext.textures`.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty cache.

## Variables

### defaultFormat

```haxe
var defaultFormat:hxd.PixelFormat
```

The format of the targets allocated without format.

## Methods

### get

```haxe
inline function get(?index:Int = 0):h3d.mat.Texture
```

Returns the texture at the index.

### getNamed

```haxe
function getNamed(name:String):h3d.mat.Texture
```

Returns the texture of the given name allocated in this frame, or `null`.

### set

```haxe
function set(t:h3d.mat.Texture, index:Int):Void
```

Sets the texture at the index.

### begin

```haxe
function begin():Void
```

Called at the start of the frame: disposes the textures not used during the previous one.

### allocTarget

```haxe
function allocTarget(name:String, width:Int, height:Int, ?defaultDepth:Bool = true, ?format:hxd.PixelFormat, ?flags:Array<h3d.mat.TextureFlags>, ?layers:Int = 1):h3d.mat.Texture
```

Returns a render target of the given name, size, format and flags, reusing the texture of the same rank in the previous frame when it matches. The default depth buffer is attached if `defaultDepth` is set.

### allocTargetScale

```haxe
function allocTargetScale(name:String, scale:Float, ?defaultDepth:Bool = true, ?format:hxd.PixelFormat, ?flags:Array<h3d.mat.TextureFlags>, ?layers:Int = 1):h3d.mat.Texture
```

Returns a render target of the size of the screen multiplied by `scale` (see `allocTarget`).

### allocTileTarget

```haxe
function allocTileTarget(name:String, tile:h2d.Tile, ?defaultDepth:Bool = false, ?format:hxd.PixelFormat):h3d.mat.Texture
```

Returns a render target of the size of the tile (see `allocTarget`).

### dispose

```haxe
function dispose():Void
```

Disposes all the textures.
