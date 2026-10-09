# h2d.CheckBox

**class** · package [`h2d`](README.md) · source [`h2d/CheckBox.hx`](../../../../h2d/CheckBox.hx)

Extends: [`h2d.Flow`](Flow.md) → [`h2d.Object`](Object.md)

A simple Interactive checkbox button with a label.

Useful for fast construction of development UI, but lacks on configurability side.

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

Create a new CheckBox instance.
- **param** `parent` An optional parent `h2d.Object` instance to which CheckBox adds itself if set.

## Variables

### enable

```haxe
var enable(default, set):Bool
```

When disabled, the user would not be able to change the checkbox state by interacting with it.

It is still possible to change the `selected` state manually through the code even if checkbox is disabled.

### selected

```haxe
var selected(default, set):Bool
```

Current toggle state of the checkbox.

Note that changing the state from the code will cause `CheckBox.onChange` to trigger.

### text

```haxe
var text(default, set):String
```

Optional text label that will be shown to the right of the checkbox.

## Methods

### onChange

```haxe
dynamic function onChange():Void
```

Sent when the `CheckBox.selected` state is changed.
Can be triggered both by user interaction (when checkbox is enabled) and from the software side by changing `selected` directly.

## Inherited members

- from [`h2d.Flow`](Flow.md): `needReflow`, `horizontalAlign`, `verticalAlign`, `minWidth`, `minHeight`, `maxWidth`, `maxHeight`, `lineHeight`, `colWidth`, `overflow`, `padding`, `paddingHorizontal`, `paddingVertical`, `paddingLeft`, `paddingRight`, `paddingTop`, `paddingBottom`, `horizontalSpacing`, `verticalSpacing`, `enableInteractive`, `interactive`, `backgroundTile`, `borderWidth`, `borderLeft`, `borderRight`, `borderHeight`, `borderTop`, `borderBottom`, `innerWidth`, `innerHeight`, `outerWidth`, `outerHeight`, `layout`, `isInline`, `debug`, `multiline`, `reverse`, `fillWidth`, `fillHeight`, `scrollBar`, `scrollBarCursor`, `scrollWheelSpeed`, `scrollPosY`, `getProperties`, `addSpacing`, `addChildAt`, `scrollIntoView`, `removeChild`, `removeChildren`, `makeBackground`, `reflow`, `onBeforeReflow`, `onAfterReflow`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
