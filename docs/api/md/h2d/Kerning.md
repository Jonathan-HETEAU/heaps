# h2d.Kerning

**class** · package [`h2d`](README.md) · module `h2d.Font` · source [`h2d/Font.hx`](../../../../h2d/Font.hx)

A `FontChar` kerning information as well as linked list of kernings. See `FontChar.kerning`.

## Constructor

### new

```haxe
function new(c:Int, o:Float):Void
```

Create a new kerning instance.
- **param** `c` The preceding character.
- **param** `o` The kerning offset.

## Variables

### prevChar

```haxe
var prevChar:Int
```

A character that should precede current character in order to apply this kerning.

### offset

```haxe
var offset:Float
```

A kerning offset between the character pair in pixels.

### next

```haxe
var next:Null<Kerning>
```

The next kerning reference.
