# h3d.impl.TextureCache

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/TextureCache.hx`](../../../../../h3d/impl/TextureCache.hx)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### defaultFormat

```haxe
var defaultFormat:hxd.PixelFormat
```

## Methods

### get

```haxe
inline function get(?index:Int = 0):h3d.mat.Texture
```

### getNamed

```haxe
function getNamed(name:String):h3d.mat.Texture
```

### set

```haxe
function set(t:h3d.mat.Texture, index:Int):Void
```

### begin

```haxe
function begin():Void
```

### allocTarget

```haxe
function allocTarget(name:String, width:Int, height:Int, ?defaultDepth:Bool = true, ?format:hxd.PixelFormat, ?flags:Array<h3d.mat.TextureFlags>, ?layers:Int = 1):h3d.mat.Texture
```

### allocTargetScale

```haxe
function allocTargetScale(name:String, scale:Float, ?defaultDepth:Bool = true, ?format:hxd.PixelFormat, ?flags:Array<h3d.mat.TextureFlags>, ?layers:Int = 1):h3d.mat.Texture
```

### allocTileTarget

```haxe
function allocTileTarget(name:String, tile:h2d.Tile, ?defaultDepth:Bool = false, ?format:hxd.PixelFormat):h3d.mat.Texture
```

### dispose

```haxe
function dispose():Void
```
