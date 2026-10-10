# hxd.res.BDFFontChar

**class** · package [`hxd.res`](README.md) · module `hxd.res.BDFFont` · source [`hxd/res/BDFFont.hx`](../../../../../hxd/res/BDFFont.hx)

* Intermediate representation of a glyph. Only used while
* parsing a BDF font file.

## Constructor

### new

```haxe
function new(code:Int, width:Int, height:Int, xoffset:Int, yoffset:Int, stride:Int):Void
```

Creates a glyph.

## Static methods

### sortOnHeight

```haxe
static function sortOnHeight(a:BDFFontChar, b:BDFFontChar):Int
```

Sorts glyphs by decreasing height, to pack them in the texture.

## Variables

### code

```haxe
var code:Int
```

The character code.

### x

```haxe
var x:Int
```

The X position of the glyph in the generated texture.

### y

```haxe
var y:Int
```

The Y position of the glyph in the generated texture.

### width

```haxe
var width:Int
```

The width of the glyph in pixels.

### height

```haxe
var height:Int
```

The height of the glyph in pixels.

### xoffset

```haxe
var xoffset:Int
```

The horizontal offset of the glyph from the origin.

### yoffset

```haxe
var yoffset:Int
```

The vertical offset of the glyph from the baseline.

### stride

```haxe
var stride:Int
```

The number of bytes per row in `bits`.

### bits

```haxe
var bits:Array<Int>
```

The bitmap of the glyph, one bit per pixel.
