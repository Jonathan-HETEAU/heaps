# h2d.Text

**class** · package [`h2d`](README.md) · source [`h2d/Text.hx`](../../../../h2d/Text.hx)

Extends: [`h2d.Drawable`](Drawable.md) → [`h2d.Object`](Object.md)

Subclasses: [`h2d.HtmlText`](HtmlText.md), [`h2d.TextInput`](TextInput.md)

A basic text renderer with multiline support.

See [Text](https://github.com/HeapsIO/heaps/wiki/Text) section of the manual for more details.

## Constructor

### new

```haxe
function new(font:Font, ?parent:Object):Void
```

Creates a new Text instance.
- **param** `font` The font used to render the Text.
- **param** `parent` An optional parent `h2d.Object` instance to which Text adds itself if set.

## Static methods

### resolveSubFont

```haxe
static dynamic function resolveSubFont(fnt:Font, text:Text):Font
```

Returns the font used by the text when its font is a group of fonts (`FontGroup`). Returns the first sub font by default: it can be replaced to select another one, such as the one of the current language.

## Variables

### font

```haxe
var font(default, set):Font
```

The font used to render text.

### text

```haxe
var text(default, set):String
```

Current rendered text.

### textColor

```haxe
var textColor(default, set):Int
```

Text RGB color. Alpha value is ignored.

### maxWidth

```haxe
var maxWidth(default, set):Null<Float>
```

When set, limits maximum line width and causes word-wrap.
Affects positioning of the text depending on `textAlign` value.

When Text is affected by size constraints (see `Object.constraintSize`), smallest of the two is used for word-wrap.

### dropShadow

```haxe
var dropShadow:{ dy:Float, dx:Float, color:Int, alpha:Float }
```

Adds simple drop shadow to the Text with specified offset, color and alpha.
Causes text to be rendered twice (first drop shadow and then the text itself).

### textWidth

```haxe
var textWidth(get, null):Float
```

Calculated text width. Can exceed maxWidth in certain cases.

### textHeight

```haxe
var textHeight(get, null):Float
```

Calculated text height.

Not a completely precise text metric and increments in the `Font.lineHeight` steps.
In `HtmlText`, can be increased by various values depending on the active line font and `HtmlText.lineHeightMode` value.

### textAlign

```haxe
var textAlign(default, set):Align
```

Text align rules dictate how the text lines are positioned.
See `Align` for specific details on each alignment mode.

### letterSpacing

```haxe
var letterSpacing(default, set):Float
```

Extra letter spacing in pixels.

### lineSpacing

```haxe
var lineSpacing(default, set):Float
```

Extra line spacing in pixels.

### lineBreak

```haxe
var lineBreak(default, set):Bool
```

Allow line break.

### wordBreak

```haxe
var wordBreak(default, set):Bool
```

When `lineBreak` is enabled, allow breaking inside a word if it does not fit on a single line.
Without it, a word longer than `maxWidth` overflows the text bounds.

## Methods

### calcTextWidth

```haxe
function calcTextWidth(text:String):Float
```

Calculates and returns width of the provided `text` with settings this Text instance.

### splitText

```haxe
function splitText(text:String):String
```

Perform a word-wrap of the `text` based on this Text settings.

### getTextProgress

```haxe
function getTextProgress(text:String, progress:Float):String
```

Returns cut `text` based on `progress` percentile.
Can be used to gradually show appearing text. (Especially useful when using `HtmlText`)

### setColorSegments

```haxe
function setColorSegments(arr:Array<Int>):Void
```

Set the text color segments. This is an Array containing a pair of (position,color).
Each time the text display will reach the given position, the color will be set.
The segment color is multiplied by the global textColor.

## Inherited members

- from [`h2d.Drawable`](Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
