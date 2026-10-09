# h2d.Font

**class** · package [`h2d`](README.md) · source [`h2d/Font.hx`](../../../../h2d/Font.hx)

An instance of a text font.

Heaps comes with a default Font that covers basic ASCII characters, and can be retrieved via `hxd.res.DefaultFont.get()`.

## Variables

### name

```haxe
var name(default, null):String
```

The font name. Assigned on font creation and can be used to identify font instances.

### size

```haxe
var size(default, null):Int
```

Current font size. Font can be resized with `resizeTo`.

### baseLine

```haxe
var baseLine(default, null):Float
```

The baseline value of the font represents the base on which characters will sit.

Used primarily with `HtmlText` to sit multiple fonts and images at the same line.

### lineHeight

```haxe
var lineHeight(default, null):Float
```

Font line height provides vertical offset for each new line of the text.

### tile

```haxe
var tile(default, null):Tile
```

Reference to the source Tile containing all glyphs of the Font.

### tilePath

```haxe
var tilePath(default, null):String
```

The resource path of the source Tile. Either relative to .fnt or to resources root.

### type

```haxe
var type:FontType
```

The font type. BitmapFonts rendered as-is, but SDF fonts will use an extra shader to produce scalable smooth fonts.
See `FontType.SignedDistanceField` for more details.

### charset

```haxe
var charset:hxd.Charset
```

Font charset allows to resolve specific char codes that are not directly present in glyph map as well as detect spaces.
Defaults to `hxd.Charset.getDefault()`.

### subFonts

```haxe
var subFonts:Array<Font>
```

Subfonts will be selected when assigned with the `h2d.Text.resolveSubFont` method.

## Methods

### getChar

```haxe
inline function getChar(code:Int):Null<FontChar>
```

Returns a `FontChar` instance corresponding to the `code`.
If font char is not present in glyph list, `charset.resolveChar` is called.
Returns `null` if glyph under specified charcode does not exist.
- **param** `code` The charcode to search for.

### setOffset

```haxe
function setOffset(x:Float, y:Float):Void
```

Offsets all glyphs by specified amount.
Affects each glyph `Tile.dx` and `Tile.dy`.
- **param** `x` The X offset of the glyphs.
- **param** `y` The Y offset of the glyphs.

### clone

```haxe
function clone():Font
```

Creates a copy of the font instance.

### resizeTo

```haxe
function resizeTo(size:Int):Void
```

Resizes the Font instance to specified size.

For BitmapFonts it can be used to create smoother fonts by rasterizing them with double size while still keeping the original glyph size by downscaling the font.
And SDF fonts can be resized to arbitrary sizes to produce scalable fonts of any size.

- **param** `size` The new font size.

### hasChar

```haxe
function hasChar(code:Int):Bool
```

Checks if character is present in glyph list.
Compared to `getChar` does not check if it exists through `Font.charset`.
- **param** `code` The charcode to look up.

### dispose

```haxe
function dispose():Void
```

Disposes of the Font instance. Equivalent to `Tile.dispose`.

### calcBaseLine

```haxe
function calcBaseLine():Float
```

Calculate a baseLine default value based on available glyphs.
