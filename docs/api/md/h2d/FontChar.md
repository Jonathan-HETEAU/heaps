# h2d.FontChar

**class** · package [`h2d`](README.md) · module `h2d.Font` · source [`h2d/Font.hx`](../../../../h2d/Font.hx)

A single `Font` character descriptor.

## Constructor

### new

```haxe
function new(t:Tile, w:Float):Void
```

Create a new font character.
- **param** `t` The character Tile.
- **param** `width` The horizontal advance of the character.

## Variables

### t

```haxe
var t:Tile
```

A Tile representing position of a character on the texture.

### width

```haxe
var width:Float
```

Horizontal advance value of the character.

On top of advance, letter spacing is affected by `FontChar.kerning` matches and `Text.letterSpacing`.

## Methods

### addKerning

```haxe
function addKerning(prevChar:Int, offset:Int):Void
```

Adds a new kerning to the character with specified `prevChar` and `offset`.

### getKerningOffset

```haxe
function getKerningOffset(prevChar:Int):Float
```

Returns kerning offset for a pair `[prevChar, currentChar]` or `0` if there was no paired kerning value.

### clone

```haxe
function clone():FontChar
```

Clones the character instance.
