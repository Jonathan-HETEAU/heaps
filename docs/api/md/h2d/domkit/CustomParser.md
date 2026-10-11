# h2d.domkit.CustomParser

**class** · package [`h2d.domkit`](README.md) · module `h2d.domkit.BaseComponents` · source [`h2d/domkit/BaseComponents.hx`](../../../../../h2d/domkit/BaseComponents.hx)

Extends: `domkit.ValueParser`

The parser of the CSS values of the h2d components (tiles, fonts, filters, alignments...).

## Constructor

### new

```haxe
function new():Void
```

Creates the parser.

## Static methods

### adjustSdfParams

```haxe
static dynamic function adjustSdfParams(sdf:{ smooth:Float, size:Int, cutoff:Float, channel:h2d.SDFChannel }):Void
```

Called with the SDF parameters of a font before it is loaded, to adjust them.

## Methods

### parseResource

```haxe
function parseResource(v:domkit.CssValue):hxd.res.Any
```

Parses a resource path (`url("path")` or a string) and loads it.

### parseTile

```haxe
function parseTile(v:domkit.CssValue):Null<h2d.Tile>
```

Parses a tile: `none`, a color, `color width height`, a resource path, or `tile("path", size)`, `tile("path", w, h)`, `grid("path", hsplit, vsplit)`, `hgrid("path", n)`, `vgrid("path", n)` for a part of an image.

### parseTilePos

```haxe
function parseTilePos(value:domkit.CssValue):{ ?y:Null<Int>, p:Int }
```

Parses a tile position in a grid: `default`, an index, or `x y`.

### parseHAlign

```haxe
function parseHAlign(value:domkit.CssValue):h2d.FlowAlign
```

Parses a horizontal alignment: `auto`, `left`, `middle` or `right`.

### parseVAlign

```haxe
function parseVAlign(value:domkit.CssValue):h2d.FlowAlign
```

Parses a vertical alignment: `auto`, `top`, `middle` or `bottom`.

### parseAlign

```haxe
function parseAlign(value:domkit.CssValue):{ v:Null<h2d.FlowAlign>, h:Null<h2d.FlowAlign> }
```

Parses an alignment: `auto`, a single horizontal or vertical alignment, or both.

### parseFont

```haxe
function parseFont(value:domkit.CssValue):h2d.Font
```

Parses a font: `default`, a font resource path, or a group of fonts with `group(...)`.
The path can be followed by `offset(...)`, `line-height(...)`, `base-line(...)`, then by the SDF parameters: size, channel (`alpha`, `red`, `green`, `blue` or `multi`), cutoff and smoothing.

### parseTextShadow

```haxe
function parseTextShadow(value:domkit.CssValue):Null<{ dy:Float, dx:Float, color:Int, alpha:Float }>
```

Parses a text shadow: `none`, a color, or `dx dy [color [alpha]]`.

### parseFlowBackground

```haxe
function parseFlowBackground(value:domkit.CssValue):FlowBg
```

Parses a flow background: `transparent`, `tile width height` or `tile left top right bottom` (scale grid borders), `color alpha`, or `disc(color [alpha])`.

### parseCursor

```haxe
function parseCursor(value:domkit.CssValue):hxd.Cursor
```

Parses a cursor: `default`, `button`, `move`, `textinput`, `hide`, `none`, or a resize cursor (`ns-resize`, `ew-resize`, `nwse-resize`, `nesw-resize`).

### parseFilter

```haxe
function parseFilter(value:domkit.CssValue):h2d.filter.Filter
```

Parses a filter: `none`, `nothing`, `grayscale(...)`, `saturate(...)`, `hue(...)`, `brightness(...)`, `outline(size, color)`, `glow(...)`, `blur(radius)`, or several of them to combine.

### transitionColorAdjust

```haxe
function transitionColorAdjust(col1:h3d.ColorAdjust, col2:h3d.ColorAdjust, t:Float):{ saturation:Float, lightness:Float, hue:Float, gain:{ color:Int, alpha:Float }, contrast:Float }
```

Interpolates two color adjustments, for CSS transitions.

### parseColorAdjust

```haxe
function parseColorAdjust(value:domkit.CssValue):h3d.ColorAdjust
```

Parses a color adjustment: `none`, or one or several of `hue-rotate(...)`, `contrast(...)`, `gain(color, alpha)`, `brightness(...)`, `saturate(...)`.

### parseAngleRad

```haxe
function parseAngleRad(value:domkit.CssValue):Float
```

Parses an angle (with a `rad` or `deg` unit, radians by default) and returns it in radians.

### parseAngleDeg

```haxe
function parseAngleDeg(value:domkit.CssValue):Float
```

Parses an angle (with a `rad` or `deg` unit, degrees by default) and returns it in degrees.

### parseTagDefinitions

```haxe
function parseTagDefinitions(value:domkit.CssValue):Array<{ name:String, ?font:Null<String>, ?color:Null<Int> }>
```

Parses the HTML text tag definitions: `name("font")`, `name(color)` or `name("font", color)`.

### parseMargin

```haxe
function parseMargin(value:domkit.CssValue):Null<Int>
```

Parses a margin: a number, or `ignore-parent` to ignore the padding of the parent flow (see `h2d.Flow.PADDING_IGNORE_PARENT`).

### parseMarginBox

```haxe
function parseMarginBox(v:domkit.CssValue):{ top:Null<Int>, right:Null<Int>, left:Null<Int>, bottom:Null<Int> }
```

Parses the margins of the 4 sides, with the CSS box syntax.
