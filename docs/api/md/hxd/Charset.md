# hxd.Charset

**class** · package [`hxd`](README.md) · source [`hxd/Charset.hx`](../../../../hxd/Charset.hx)

## Static variables

### ASCII

```haxe
static var ASCII:String
```

Contains the whole ASCII charset.

### LATIN1

```haxe
static var LATIN1:String
```

The Latin1 (ISO 8859-1) charset (only the extra chars, no the ASCII part) + euro symbol

### CYRILLIC

```haxe
static var CYRILLIC:String
```

Russian support

### POLISH

```haxe
static var POLISH:String
```

Polish support

### TURKISH

```haxe
static var TURKISH:String
```

Turkish support

### JP_KANA

```haxe
static var JP_KANA:String
```

Contains Hiragana, Katanaga, japanese punctuaction and full width space (0x3000) full width numbers (0-9) and some full width ascii punctuation (!:?%&()-). Does not include full width A-Za-z.

### UNICODE_SPECIALS

```haxe
static var UNICODE_SPECIALS:String
```

Special unicode chars (fallback chars)

### DEFAULT_CHARS

```haxe
static var DEFAULT_CHARS:String
```

## Static methods

### getDefault

```haxe
static function getDefault():Charset
```

## Methods

### resolveChar

```haxe
function resolveChar(code:Int, glyphs:Map<Int, resolveChar.T>):Null<resolveChar.T>
```

### isCJK

```haxe
function isCJK(code:Int):Bool
```

### isSpace

```haxe
function isSpace(code:Int):Bool
```

### isBreakChar

```haxe
function isBreakChar(code:Int):Bool
```

### isComplementChar

```haxe
function isComplementChar(code:Int):Bool
```
