# hxd.SceneEvents

**class** · package [`hxd`](README.md) · source [`hxd/SceneEvents.hx`](../../../../hxd/SceneEvents.hx)

Dispatches the window input events to the interactives of one or more scenes.
It handles the focus, the over/out events, the mouse capture and the cursor.
`hxd.App` creates one as `sevents`, with `s2d` and `s3d` added.

## Constructor

### new

```haxe
function new(?window:Window):Void
```

Creates an event dispatcher listening to the window (the current one by default).

## Variables

### enablePhysicalMouse

```haxe
var enablePhysicalMouse:Bool
```

* enablePhysicalMouse : enable mouse movements of system mouse, set it to false anse use setMousePos instead to manually set mouse position

### mouseCheckMove

```haxe
var mouseCheckMove:Bool
```

* enable/disable per frame check of elements under mouse (default:true)

### defaultCursor

```haxe
var defaultCursor(default, set):Cursor
```

* Default cursor when there is no Interactive present under cursor.

## Methods

### setMousePos

```haxe
function setMousePos(xPos:Float, yPos:Float):Void
```

Sets the mouse position, used when `enablePhysicalMouse` is disabled.

### addScene

```haxe
function addScene(s:InteractiveScene, ?index:Int):Void
```

Adds a scene, at the end of the list or at `index`. The scenes receive events in list order.

### removeScene

```haxe
function removeScene(s:InteractiveScene):Void
```

Removes a scene.

### dispose

```haxe
function dispose():Void
```

Stops listening to the window events.

### focus

```haxe
function focus(i:Interactive):Void
```

Gives the focus to the interactive, which then receives the key, text and wheel events. The interactive can refuse it by cancelling the `EFocus` event.

### blur

```haxe
function blur():Void
```

Removes the focus from the current interactive. It can refuse it by cancelling the `EFocusLost` event.

### checkEvents

```haxe
function checkEvents():Void
```

Dispatches the pending events. Called every frame by `hxd.App`.

### startCapture

```haxe
function startCapture(f:() -> Void, ?onCancel:() -> Void, ?touchId:Int):Void
```

Sends all the following events to `f` until `stopCapture` is called, such as for a drag operation.
`onCancel` is called when the capture stops. If `touchId` is set, only the events of this touch are captured.

### stopCapture

```haxe
function stopCapture():Void
```

Stops the current capture.

### getFocus

```haxe
function getFocus():Interactive
```

Returns the interactive which has the focus.

### updateCursor

```haxe
function updateCursor(i:Interactive):Void
```

Updates the displayed cursor after the cursor of the interactive changed.
