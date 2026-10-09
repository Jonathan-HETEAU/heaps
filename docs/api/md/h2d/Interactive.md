# h2d.Interactive

**class** · package [`h2d`](README.md) · source [`h2d/Interactive.hx`](../../../../h2d/Interactive.hx)

Extends: [`h2d.Object`](Object.md)

Implements: [`hxd.Interactive`](../hxd/Interactive.md)

Subclasses: [`h2d.Slider`](Slider.md)

A user input handler.

Hitbox area can be a rectangle, an ellipse or an arbitrary shape (`h2d.col.Collider`).

Note that Interactive does not reports its hitbox bounds in `Object.getBounds`
unless `Interactive.backgroundColor` is set, in which case `width` and `height` are reported.

By default, Interactive only reacts to primary (left) mouse button for actions, see `Interactive.enableRightButton` for details.

## Constructor

### new

```haxe
function new(width:Float, height:Float, ?parent:Object, ?shape:h2d.col.Collider):Void
```

Create a new Interactive with specified parameters. `width`, `height` and `parent` with optional detailed `shape`.
- **param** `width` The width of the Interactive hitbox.
- **param** `height` The height of the Interactive hitbox.
- **param** `parent` An optional parent `h2d.Object` instance to which Interactive adds itself if set.
- **param** `shape` An optional detailed Interactive hitbox.

## Variables

### width

```haxe
var width:Float
```

Width of the Interactive. Ignored if `Interactive.shape` is set.

### height

```haxe
var height:Float
```

Height of the Interactive. Ignored if `Interactive.shape` is set.

### cursor

```haxe
var cursor(default, set):Null<hxd.Cursor>
```

Cursor used when Interactive is under mouse cursor.

### isEllipse

```haxe
var isEllipse:Bool
```

Performs an elliptic hit-test instead of rectangular one based on `Interactive.width` and `height`. Ignored if `Interactive.shape` is set.

### cancelEvents

```haxe
var cancelEvents:Bool
```

Set the default `hxd.Event.cancel` mode.

### propagateEvents

```haxe
var propagateEvents:Bool
```

Set the default `hxd.Event.propagate` mode.

### enableRightButton

```haxe
var enableRightButton:Bool
```

When enabled, interacting with secondary mouse buttons (right button/wheel) will cause `onPush`, `onClick`, `onRelease` and `onReleaseOutside` callbacks.
Otherwise those callbacks will only be triggered with primary mouse button (left button).

### allowMultiClick

```haxe
var allowMultiClick:Bool
```

When enabled, allows to receive several onClick events the same frame.

### backgroundColor

```haxe
var backgroundColor:Null<Int>
```

If set, Interactive will draw a `Tile` with `[width, height]` dimensions of specified color (including alpha).

### shape

```haxe
var shape:h2d.col.Collider
```

Detailed shape collider for Interactive.
If set, `width` and `height` properties are ignored for collision checks.

### shapeX

```haxe
var shapeX:Float
```

Detailed shape X offset from Interactive.

### shapeY

```haxe
var shapeY:Float
```

Detailed shape Y offset from Interactive.

## Methods

### preventClick

```haxe
function preventClick():Void
```

Reset current pressed state of the Interactive, preventing the `onClick` or `onReleaseOutside` being triggered when user releases mouse button.

### startCapture

```haxe
function startCapture(callb:() -> Void, ?onCancel:() -> Void, ?touchId:Int):Void
```

Starts input events capture and redirects them to `callb` method until `Interactive.stopCapture` is called.
While the method name may imply that only mouse events would be captured: This is not the case,
as it will also capture all other input events, including keyboard events.

Starting event capture through `Interactive.startCapture` will convert `Event.relX` and `relY` to local coordinates
of the Interactive and will restore them after invoking `callb`.
In order to receive coordinates in scene coordinate space use `Scene.startCapture`.

- **param** `callb` A callback method that receives `hxd.Event` when input event happens.
Unless `callb` sets `Event.propagate` to `true`, event won't be sent to other Interactives.
- **param** `onCancel` An optional callback that is invoked when `Interactive.stopCapture` is called.

### stopCapture

```haxe
function stopCapture():Void
```

Stops current input event capture.

### focus

```haxe
function focus():Void
```

Sets focus on this `Interactive`.
If Interactive was not already focused and it receives focus - `onFocus` event is sent.
Interactive won't become focused if during `onFocus` call it will set `Event.cancel` to `true`.

### blur

```haxe
function blur():Void
```

Removes focus from interactive if it's focused.
If Interactive is currently focused - `onFocusLost` event will be sent.
Interactive won't lose focus if during `onFocusLost` call it will set `Event.cancel` to `true`.

### isOver

```haxe
function isOver():Bool
```

Checks if Interactive is currently hovered by the mouse.

### hasFocus

```haxe
function hasFocus():Bool
```

Checks if Interactive is currently focused.

### onOver

```haxe
dynamic function onOver(e:hxd.Event):Void
```

Sent when mouse enters Interactive hitbox area.

`Event.propagate` and `Event.cancel` are ignored during `onOver`.
Propagation can be set with `onMove` event, as well as cancelling `onMove` will prevent `onOver`.

### onOut

```haxe
dynamic function onOut(e:hxd.Event):Void
```

Sent when mouse exits Interactive hitbox area.
`Event.propagate` and `Event.cancel` are ignored during `onOut`.

### onPush

```haxe
dynamic function onPush(e:hxd.Event):Void
```

Sent when Interactive is pressed by the user.

### onRelease

```haxe
dynamic function onRelease(e:hxd.Event):Void
```

Sent when Interactive is unpressed under multiple circumstances.
* Always sent if user releases mouse while it is inside Interactive hitbox area.
    This happens regardless if that Interactive was pressed prior or not,
    and due to that it's not guaranteed that `Interactive.onPush` would precede this event.
    `Event.kind` is set to `ERelease` during this event.
* Sent before `Interactive.onReleaseOutside` if this Interactive was pressed, but released outside its hitbox area.
    `Event.kind` is set to `EReleaseOutside` during this event.

See `Interactive.onClick` and `Interactive.onReleaseOutside` methods for separate events that trigger only when user interacts with this particular Interactive.

### onReleaseOutside

```haxe
dynamic function onReleaseOutside(e:hxd.Event):Void
```

Sent when user presses the Interactive, moves the mouse outside its hitbox area and releases the mouse button.

Can be prevented to fire by calling `Interactive.preventClick` during or after `Interactive.onPush` event.

`Interactive.onRelease` is sent with `Event.kind` being `EReleaseOutside` just before this event.

### onClick

```haxe
dynamic function onClick(e:hxd.Event):Void
```

Sent when the Interactive is clicked by the user.

Can be prevented to fire by calling `Interactive.preventClick` during or after `Interactive.onPush` event.

`Interactive.onRelease` is sent with `Event.kind` being `ERelease` just before this event.

### onMove

```haxe
dynamic function onMove(e:hxd.Event):Void
```

Sent when user moves within the Interactive hitbox area.
See `Interactive.onCheck` for event when user does not move the mouse.

Cancelling the `Event` will prevent interactive from becoming overed,
causing `Interactive.onOut` if it was overed previously.
Interactive would be treated as not overed as long as event is cancelled even if mouse is within the hitbox area.

### onWheel

```haxe
dynamic function onWheel(e:hxd.Event):Void
```

Sent when user scrolls mouse wheel above the Interactive. Wheel delta can be obtained through the `Event.wheelDelta`.

### onFocus

```haxe
dynamic function onFocus(e:hxd.Event):Void
```

Sent when Interactive receives focus during `Interactive.focus` call.

Cancelling the `Event` will prevent the Interactive from becoming focused.

### onFocusLost

```haxe
dynamic function onFocusLost(e:hxd.Event):Void
```

Sent when Interactive lost focus either via `Interactive.blur` call or when user clicks on another Interactive/outside this Interactive hitbox area.

Cancelling the `Event` will prevent the Interactive from losing focus.

### onKeyUp

```haxe
dynamic function onKeyUp(e:hxd.Event):Void
```

Sent when this Interactive is focused and user unpressed a keyboard key.
Unpressed key can be accessed through `Event.keyCode`.

### onKeyDown

```haxe
dynamic function onKeyDown(e:hxd.Event):Void
```

Sent when this Interactive is focused and user pressed a keyboard key.
Pressed key can be accessed through `Event.keyCode`.

### onCheck

```haxe
dynamic function onCheck(e:hxd.Event):Void
```

Sent every frame when user hovers an Interactive but does not move the mouse.
See `Interactive.onMove` for event when user moves the mouse.

Cancelling the `Event` will prevent interactive from becoming overed,
causing `Interactive.onOut` if it was overed previously.
Interactive would be treated as not overed as long as event is cancelled even if mouse is within the hitbox area.

### onTextInput

```haxe
dynamic function onTextInput(e:hxd.Event):Void
```

Sent when this Interactive is focused and user inputs text. Character added can be accessed through `Event.charCode`.

## Inherited members

- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
