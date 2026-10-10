# h2d.Flow

**class** · package [`h2d`](README.md) · source [`h2d/Flow.hx`](../../../../h2d/Flow.hx)

Extends: [`h2d.Object`](Object.md)

Subclasses: [`h2d.CheckBox`](CheckBox.md), [`h2d.Dropdown`](Dropdown.md), [`h2d.Scene3D`](Scene3D.md)

An automatic layout system.

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

Create a new Flow instance.
- **param** `parent` An optional parent `h2d.Object` instance to which Flow adds itself if set.

## Static variables

### PADDING_IGNORE_PARENT

```haxe
static var PADDING_IGNORE_PARENT:Int
```

A special padding value for the properties of a child (`FlowProperties.paddingLeft` and others): the child ignores the padding of the flow on this side and extends to its border.

## Variables

### needReflow

```haxe
var needReflow(default, set):Bool
```

If some sub element gets resized, you need to set reflow to true in order to force
the reflow of elements. You can also directly call `Flow.reflow` which will immediately
update all elements positions.

If a reflow is needed, `Flow.reflow` will be called before rendering the flow.
Each change in one of the flow properties or addition/removal of elements will set needReflow to true.

### horizontalAlign

```haxe
var horizontalAlign(default, set):Null<FlowAlign>
```

Horizontal alignment of elements inside the flow.
See `FlowAlign` for more details.

### verticalAlign

```haxe
var verticalAlign(default, set):Null<FlowAlign>
```

Vertical alignment of elements inside the flow.
See `FlowAlign` for more details.

### minWidth

```haxe
var minWidth(default, set):Null<Int>
```

Ensures that Flow is at least the specified outer width at all times when not null.

### minHeight

```haxe
var minHeight(default, set):Null<Int>
```

Ensures that Flow is at least the specified outer height at all times when not null.

### maxWidth

```haxe
var maxWidth(default, set):Null<Int>
```

Attempts to limit the Flow outer width to the specified width.
Used as a baseline for overflow when `Flow.multiline` is enabled and `Flow.layout` is `Horizontal`.

### maxHeight

```haxe
var maxHeight(default, set):Null<Int>
```

Attempts to limit the Flow outer height to the specified height.
Used as a baseline for overflow when `Flow.multiline` is enabled and `Flow.layout` is `Vertical`.

### lineHeight

```haxe
var lineHeight(default, set):Null<Int>
```

Sets the minimum row height when `Flow.layout` is `Horizontal`.

### colWidth

```haxe
var colWidth(default, set):Null<Int>
```

Sets the minimum colum width when `Flow.layout` is `Vertical`.

### overflow

```haxe
var overflow(default, set):FlowOverflow
```

Enabling overflow will treat maxWidth/maxHeight and lineHeight/colWidth constraints as absolute : bigger elements will overflow instead of expanding the limit.
See respective `FlowOverflow` values for more details.

### padding

```haxe
var padding(null, set):Int
```

Will set all padding values at the same time.

Note that padding is applied inside the flow boundaries and included in the size constraint, shrinking available space for Flow children.

- **see** `Flow.paddingLeft`
- **see** `Flow.paddingRight`
- **see** `Flow.paddingTop`
- **see** `Flow.paddingBottom`
- **see** `Flow.paddingHorizontal`
- **see** `Flow.paddingVertical`

### paddingHorizontal

```haxe
var paddingHorizontal(null, set):Int
```

Will set `Flow.paddingLeft` and `Flow.paddingRight` to the given value.

Note that padding is applied inside the flow boundaries and included in the size constraint, shrinking available space for Flow children.

### paddingVertical

```haxe
var paddingVertical(null, set):Int
```

Will set `Flow.paddingTop` and `Flow.paddingBottom` to the given value.

Note that padding is applied inside the flow boundaries and included in the size constraint, shrinking available space for Flow children.

### paddingLeft

```haxe
var paddingLeft(default, set):Int
```

Sets the extra padding along the left edge of the Flow.

Note that padding is applied inside the flow boundaries and included in the size constraint, shrinking available space for Flow children.

### paddingRight

```haxe
var paddingRight(default, set):Int
```

Sets the extra padding along the right edge of the Flow.

Note that padding is applied inside the flow boundaries and included in the size constraint, shrinking available space for Flow children.

### paddingTop

```haxe
var paddingTop(default, set):Int
```

Sets the extra padding along the top edge of the Flow.

Note that padding is applied inside the flow boundaries and included in the size constraint, shrinking available space for Flow children.

### paddingBottom

```haxe
var paddingBottom(default, set):Int
```

Sets the extra padding along the bottom edge of the Flow.

Note that padding is applied inside the flow boundaries and included in the size constraint, shrinking available space for Flow children.

### horizontalSpacing

```haxe
var horizontalSpacing(default, set):Int
```

The horizontal separation spacing between two flowed elements.

### verticalSpacing

```haxe
var verticalSpacing(default, set):Int
```

The vertical separation spacing between two flowed elements.

### enableInteractive

```haxe
var enableInteractive(default, set):Bool
```

Adds an `h2d.Interactive` to the Flow that is accessible through `Flow.interactive` field.
This Interactive is automatically resized to cover the whole Flow area.

Flow is added as a bottom-most (after the `Flow.backgroundTile`) child as to not impede flow elements with Interactives.

### interactive

```haxe
var interactive(default, null):Interactive
```

- **see** `Flow.enableInteractive`.

### backgroundTile

```haxe
var backgroundTile(default, set):Tile
```

Setting a background tile will create an `h2d.ScaleGrid` background which uses the `Flow.borderWidth`/`Flow.borderHeigh` values for its borders.

It will automatically resize when the reflow is done to cover the whole Flow area.

### borderWidth

```haxe
var borderWidth(null, set):Int
```

Set the border width of the `Flow.backgroundTile`'s left and right borders.

Does not affect padding by default, which can be enabled with `-D flow_border` compilation flag.
If border padding is enabled, `Flow.outerWidth` will be affected accordingly even if background tile is not set
and will follow the same constraint limitation as padding.

- **see** `Flow.paddingLeft`
- **see** `Flow.paddingRight`
- **see** `Flow.paddingHorizontal`
- **see** `h2d.ScaleGrid.borderWidth`

### borderLeft

```haxe
var borderLeft(default, set):Int
```

Left border width of the `Flow.backgroundTile`.

Does not affect padding by default, which can be enabled with `-D flow_border` compilation flag.
If border padding is enabled, `Flow.outerHeight` will be affected accordingly even if background tile is not set
and will follow the same constraint limitation as padding.

- **see** `Flow.paddingLeft`
- **see** `h2d.ScaleGrid.borderLeft`

### borderRight

```haxe
var borderRight(default, set):Int
```

Right border width of the `Flow.backgroundTile`.

Does not affect padding by default, which can be enabled with `-D flow_border` compilation flag.
If border padding is enabled, `Flow.outerHeight` will be affected accordingly even if background tile is not set
and will follow the same constraint limitation as padding.

- **see** `Flow.paddingRight`
- **see** `h2d.ScaleGrid.borderRight`

### borderHeight

```haxe
var borderHeight(null, set):Int
```

Set the border height of the `Flow.backgroundTile`'s top and bottom borders.

Does not affect padding by default, which can be enabled with `-D flow_border` compilation flag.
If border padding is enabled, `Flow.outerHeight` will be affected accordingly even if background tile is not set
and will follow the same constraint limitation as padding.

- **see** `Flow.paddingTop`
- **see** `Flow.paddingBottom`
- **see** `Flow.paddingVertical`
- **see** `h2d.ScaleGrid.borderHeight`

### borderTop

```haxe
var borderTop(default, set):Int
```

Top border width of the `Flow.backgroundTile`.

Does not affect padding by default, which can be enabled with `-D flow_border` compilation flag.
If border padding is enabled, `Flow.outerHeight` will be affected accordingly even if background tile is not set
and will follow the same constraint limitation as padding.

- **see** `Flow.paddingTop`
- **see** `h2d.ScaleGrid.borderTop`

### borderBottom

```haxe
var borderBottom(default, set):Int
```

Bottom border width of the `Flow.backgroundTile`.

Does not affect padding by default, which can be enabled with `-D flow_border` compilation flag.
If border padding is enabled, `Flow.outerHeight` will be affected accordingly even if background tile is not set
and will follow the same constraint limitation as padding.

- **see** `Flow.paddingBottom`
- **see** `h2d.ScaleGrid.borderBottom`

### innerWidth

```haxe
var innerWidth(get, null):Int
```

Calculate the client width, which is the inner size of the flow without the borders and padding.

- **see** `Flow.padding`

### innerHeight

```haxe
var innerHeight(get, null):Int
```

Calculate the client height, which is the inner size of the flow without the borders and padding.

- **see** `Flow.padding`

### outerWidth

```haxe
var outerWidth(get, null):Int
```

Flow total width. Compared to `Flow.innerWidth`, it also includes paddings and, if enabled, borders (see `Flow.borderWidth`).

- **see** `Flow.padding`

### outerHeight

```haxe
var outerHeight(get, null):Int
```

Flow total height Compared to `Flow.innerHeight`, it also includes paddings and, if enabled, borders (see `Flow.borderHeight`).

- **see** `Flow.padding`

### layout

```haxe
var layout(default, set):FlowLayout
```

The Flow item layout rules.
See `FlowLayout` for specific details on each mode.

### isInline

```haxe
var isInline:Bool
```

When isInline is set to false, the flow size will be reported based on its bounds instead of its calculated size.
- **see** `Object.getSize`

### debug

```haxe
var debug(default, set):Null<Bool>
```

When set to true, the Flow will display a debug overlay.
* Red box around the flow
* Green box for the client space.
* Blue boxes for each element.
When set to false, this will disable the ability to debug the flow.

### multiline

```haxe
var multiline(default, set):Bool
```

When set to true, uses specified lineHeight/colWidth instead of maxWidth/maxHeight for alignment.

### reverse

```haxe
var reverse(default, set):Bool
```

When set to true, children are aligned in reverse order.

Note that it does not affect render ordering, and may cause overlap of elements due to them positioned in reverse order.

### fillWidth

```haxe
var fillWidth(default, set):Bool
```

When set to true, if a width constraint is present and `minWidth` is null - Flow will expand to fill all the available horizontal space

### fillHeight

```haxe
var fillHeight(default, set):Bool
```

When set to true, if a height constraint is present and `minHeight` is null - Flow will expand to fill all the available vertical space

### scrollBar

```haxe
var scrollBar(default, null):Flow
```

The scroll bar component created when `overflow` is set to `Scroll`

### scrollBarCursor

```haxe
var scrollBarCursor(default, null):Flow
```

The scroll bar cursor component created when `overflow` is set to `Scroll`

### scrollWheelSpeed

```haxe
var scrollWheelSpeed:Float
```

The amount of scrolling that is done when using mouse wheel (in pixels).

### scrollPosY

```haxe
var scrollPosY(default, set):Float
```

The current scrolling position for the flow content (in pixels). Only applies when overflow is Scroll or Hidden.

## Methods

### getProperties

```haxe
function getProperties(e:Object):FlowProperties
```

Get the per-element properties. Returns null if the element is not currently part of the Flow.

Requesting the properties will cause a reflow regardless if properties values were changed or not.

### addSpacing

```haxe
function addSpacing(v:Int):Void
```

Adds some spacing by either increasing the padding of the latest
non-absolute element or the padding of the flow if there are no elements in it.

The padding affected depends on the `Flow.layout` mode.
It's impossible to add spacing with a `Stack` Flow layout.

### addChildAt

```haxe
override function addChildAt(s:Object, pos:Int):Void
```

### scrollIntoView

```haxe
function scrollIntoView(elt:Object):Bool
```

Scrolls the flow vertically so that the element is visible. Returns `false` if the flow is not scrollable (see `overflow`).

### removeChild

```haxe
override function removeChild(s:Object):Void
```

### removeChildren

```haxe
override function removeChildren():Void
```

### makeBackground

```haxe
function makeBackground(tile:Null<Tile>):ScaleGrid
```

Creates the background of the flow for the tile, a `ScaleGrid` using the borders of the flow. Can be overridden to use another kind of background.

### reflow

```haxe
function reflow():Void
```

Call to force all flowed elements position to be updated.
See `Flow.needReflow` for more information.

### onBeforeReflow

```haxe
dynamic function onBeforeReflow():Void
```

Sent at the start of the `Flow.reflow`.

### onAfterReflow

```haxe
dynamic function onAfterReflow():Void
```

Sent after the `Flow.reflow` was finished.

## Inherited members

- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
