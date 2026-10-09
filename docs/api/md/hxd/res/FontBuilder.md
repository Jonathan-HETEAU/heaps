# hxd.res.FontBuilder

**class** · package [`hxd.res`](README.md) · source [`hxd/res/FontBuilder.hx`](../../../../../hxd/res/FontBuilder.hx)

FontBuilder allows to dynamicaly create a Bitmap font from a vector font.
Depending on the platform this might require the font to be available as part of the resources,
or it can be embedded manually with hxd.res.Embed.embedFont

## Static methods

### getFont

```haxe
static function getFont(name:String, size:Int, ?options:Null<FontBuildOptions>):Null<h2d.Font>
```

### dispose

```haxe
static function dispose():Void
```
