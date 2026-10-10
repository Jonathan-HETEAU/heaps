# h2d.TextInput

**class** · package [`h2d`](README.md) · source [`h2d/TextInput.hx`](../../../../h2d/TextInput.hx)

Extends: [`h2d.Text`](Text.md) → [`h2d.Drawable`](Drawable.md) → [`h2d.Object`](Object.md)

A skinnable text input handler.

Supports text selection, keyboard cursor navigation, as well as basic hotkeys: `Ctrl + Z`, `Ctrl + Y` for undo and redo and `Ctrl + A` to select all text.

## Constructor

### new

```haxe
function new(font:Font, ?parent:Object):Void
```

Create a new TextInput instance.
- **param** `font` The font used to render the text.
- **param** `parent` An optional parent `h2d.Object` instance to which TextInput adds itself if set.

## Static methods

### showSoftwareKeyboard

```haxe
static dynamic function showSoftwareKeyboard(target:TextInput):Void
```

Called when a text input gets the focus, if `useSoftwareKeyboard` is set. Replace it to display the virtual keyboard of the platform.

### hideSoftwareKeyboard

```haxe
static dynamic function hideSoftwareKeyboard(target:TextInput):Void
```

Called when a text input loses the focus. Replace it to hide the virtual keyboard of the platform.

## Variables

### cursorIndex

```haxe
var cursorIndex:Int
```

Current position of the input cursor.
When TextInput is not focused value is -1.

### cursorTile

```haxe
var cursorTile:Tile
```

The Tile used to render the input cursor.

### selectionTile

```haxe
var selectionTile:Tile
```

The Tile used to render the background for selected text.
When rendering, this Tile is stretched horizontally to fill entire selection area.

### cursorBlinkTime

```haxe
var cursorBlinkTime:Float
```

The blinking interval of the cursor in seconds.

### inputWidth

```haxe
var inputWidth:Null<Int>
```

Maximum input width.
Contrary to `Text.maxWidth` does not cause a word-wrap, but also masks out contents that are outside the max width.

### multiline

```haxe
var multiline:Bool
```

Whether the text input allows multiple lines.

### selectionRange

```haxe
var selectionRange:{ start:Int, length:Int }
```

If not null, represents current text selection range.

### canEdit

```haxe
var canEdit:Bool
```

When disabled, user would not be able to edit the input text (selection is still available).

### backgroundColor

```haxe
var backgroundColor(get, set):Null<Int>
```

If set, TextInput will render provided color as a background to text interactive area.

### insertTabs

```haxe
var insertTabs:Null<String>
```

If set, insert these characters when pressing Tab

### useSoftwareKeyboard

```haxe
var useSoftwareKeyboard:Bool
```

When disabled, showSoftwareKeyboard will not be called.

## Methods

### onSoftwareKeyboardEnd

```haxe
dynamic function onSoftwareKeyboardEnd(isSubmit:Bool):Void
```

To be called by the platform integration when the virtual keyboard is closed, with `isSubmit` set if the text was validated.

### getTextPos

```haxe
function getTextPos(cursor:Int):Int
```

When lineBreak is enabled and some word wrapping operation applies, the cursorIndex no
longer represent the position in the exact text but in the wrapped text, including
inserted newlines. This function allows to translate the cursor position into the position
into the text. Use getCursorPos to convert the text position into a cursor position.

### getCursorPos

```haxe
function getCursorPos(pos:Int):Int
```

See getTextPos()

### getCursorLine

```haxe
function getCursorLine(line:Int):Int
```

Convert a text line number into a display line number.
First line is 0. See getTextPos() and getCursorPos().

### isWordLimit

```haxe
dynamic function isWordLimit(pos:Int):Bool
```

This function is used to code the behavior of Ctrl-Left/Right word skipping.
By default it uses charset.isSpace but can be customized.

### loadState

```haxe
function loadState(from:TextInput, ?focus:Bool = false):Void
```

Load the state from a previous input, copy the current text, cursor position, selection etc.
This allows to continue uninterrupted input experience while the input component has been reset/rebuild

### clearUndo

```haxe
function clearUndo():Void
```

Clears the undo and redo history.

### getTextLength

```haxe
function getTextLength():Int
```

The expanded text length, including inserted line breaks.

### getSelectedText

```haxe
function getSelectedText():String
```

Returns a String representing currently selected text area or `null` if no text is selected.

### focus

```haxe
function focus(?autoSelect:Bool = false):Void
```

Sets focus on this `TextInput`.

### blur

```haxe
function blur():Void
```

Removes the focus from the text input.

### hasFocus

```haxe
function hasFocus():Bool
```

Checks if TextInput is currently focused.

### onSubmit

```haxe
dynamic function onSubmit():Void
```

Triggered when a not multiline text input is validated with Enter

### onOut

```haxe
dynamic function onOut(e:hxd.Event):Void
```

Delegate of underlying `Interactive.onOut`.

### onOver

```haxe
dynamic function onOver(e:hxd.Event):Void
```

Delegate of underlying `Interactive.onOver`.

### onMove

```haxe
dynamic function onMove(e:hxd.Event):Void
```

Delegate of underlying `Interactive.onMove`.

### onClick

```haxe
dynamic function onClick(e:hxd.Event):Void
```

Delegate of underlying `Interactive.onClick`.

### onPush

```haxe
dynamic function onPush(e:hxd.Event):Void
```

Delegate of underlying `Interactive.onPush`.

### onRelease

```haxe
dynamic function onRelease(e:hxd.Event):Void
```

Delegate of underlying `Interactive.onRelease`.

### onKeyDown

```haxe
dynamic function onKeyDown(e:hxd.Event):Void
```

Delegate of underlying `Interactive.onKeyDown`.

### onKeyUp

```haxe
dynamic function onKeyUp(e:hxd.Event):Void
```

Delegate of underlying `Interactive.onKeyUp`.

### onTextInput

```haxe
dynamic function onTextInput(e:hxd.Event):Void
```

Delegate of underlying `Interactive.onTextInput`.

### onFocus

```haxe
dynamic function onFocus(e:hxd.Event):Void
```

Delegate of underlying `Interactive.onFocus`.

### onFocusLost

```haxe
dynamic function onFocusLost(e:hxd.Event):Void
```

Delegate of underlying `Interactive.onFocusLost`.

### onChange

```haxe
dynamic function onChange():Void
```

Sent when user modifies TextInput contents.

## Inherited members

- from [`h2d.Text`](Text.md): `font`, `text`, `textColor`, `maxWidth`, `dropShadow`, `textWidth`, `textHeight`, `textAlign`, `letterSpacing`, `lineSpacing`, `lineBreak`, `wordBreak`, `calcTextWidth`, `splitText`, `getTextProgress`, `setColorSegments`
- from [`h2d.Drawable`](Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
