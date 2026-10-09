# h2d.HtmlText

**class** · package [`h2d`](README.md) · source [`h2d/HtmlText.hx`](../../../../h2d/HtmlText.hx)

Extends: [`h2d.Text`](Text.md) → [`h2d.Drawable`](Drawable.md) → [`h2d.Object`](Object.md)

A simple HTML text renderer.

See the [Text](https://github.com/HeapsIO/heaps/wiki/Text) section of the manual for more details and a list of the supported HTML tags.

## Constructor

### new

```haxe
function new(font:Font, ?parent:Object):Void
```

## Static methods

### defaultLoadImage

```haxe
static dynamic function defaultLoadImage(url:String):Tile
```

A default method HtmlText uses to load images for `<img>` tag. See `HtmlText.loadImage` for details.

### defaultLoadFont

```haxe
static dynamic function defaultLoadFont(name:String):Font
```

A default method HtmlText uses to load fonts for `<font>` tags with `face` attribute. See `HtmlText.loadFont` for details.

### defaultFormatText

```haxe
static dynamic function defaultFormatText(text:String):String
```

A default method HtmlText uses to format assigned text. See `HtmlText.formatText` for details.

### defineDefaultHtmlTag

```haxe
static function defineDefaultHtmlTag(name:String, ?fontColor:Int, ?fontName:String):Void
```

Associate a custom html tag to a specific font and color.

## Variables

### condenseWhite

```haxe
var condenseWhite(default, set):Bool
```

When enabled, condenses extra spaces (carriage-return, line-feed, tabulation and space character) to one space.
If not set, uncondensed whitespace is left as is, as well as line-breaks.

### propagateInteractiveNode

```haxe
var propagateInteractiveNode(default, set):Bool
```

When enabled, nodes that create interactives will propagate events

### imageSpacing

```haxe
var imageSpacing(default, set):Float
```

The spacing after `<img>` tags in pixels.

### lineHeightMode

```haxe
var lineHeightMode(default, set):LineHeightMode
```

Line height calculation mode controls how much space lines take up vertically.
Changing mode to `Constant` restores the legacy behavior of HtmlText.

### imageVerticalAlign

```haxe
var imageVerticalAlign(default, set):ImageVerticalAlign
```

Vertical alignment of the images in `<img>` tag relative to the text.

## Methods

### getShader

```haxe
override function getShader(stype:Class<getShader.T>):getShader.T
```

### loadImage

```haxe
dynamic function loadImage(url:String):Tile
```

Method that should return an `h2d.Tile` instance for `<img>` tags. By default calls `HtmlText.defaultLoadImage` method.

HtmlText does not cache tile instances.
Due to internal structure, method should be deterministic and always return same Tile on consequent calls with same `url` input.
- **param** `url` A value contained in `src` attribute.

### loadFont

```haxe
dynamic function loadFont(name:String):Font
```

Method that should return an `h2d.Font` instance for `<font>` tags with `face` attribute. By default calls `HtmlText.defaultLoadFont` method.

HtmlText does not cache font instances and it's recommended to perform said caching from outside.
Due to internal structure, method should be deterministic and always return same Font instance on consequent calls with same `name` input.
- **param** `name` A value contained in `face` attribute.
- **returns** s Method should return loaded font instance or `null`. If `null` is returned - currently active font is used.

### onHyperlink

```haxe
dynamic function onHyperlink(url:String):Void
```

Called on a <a> tag click

### onOverHyperlink

```haxe
dynamic function onOverHyperlink(url:String):Void
```

Called on a <a> tag over

### onOutHyperlink

```haxe
dynamic function onOutHyperlink(url:String):Void
```

Called on a <a> tag out

### formatText

```haxe
dynamic function formatText(text:String):String
```

Called when text is assigned, allowing to process arbitrary text to a valid XHTML.

### defineHtmlTag

```haxe
function defineHtmlTag(name:String, ?fontColor:Int, ?fontName:String):Void
```

Define a custom html tag to be displayed with specific font and color.

### defineHtmlTags

```haxe
function defineHtmlTags(tags:Array<{ name:String, ?font:Null<String>, ?color:Null<Int> }>):Void
```

Define or reset a set of custom html tags to be displayed with specific font and color.

### splitText

```haxe
override function splitText(text:String):String
```

### getTextProgress

```haxe
override function getTextProgress(text:String, progress:Float):String
```

## Inherited members

- from [`h2d.Text`](Text.md): `font`, `text`, `textColor`, `maxWidth`, `dropShadow`, `textWidth`, `textHeight`, `textAlign`, `letterSpacing`, `lineSpacing`, `lineBreak`, `wordBreak`, `calcTextWidth`, `splitText`, `getTextProgress`, `setColorSegments`
- from [`h2d.Drawable`](Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
