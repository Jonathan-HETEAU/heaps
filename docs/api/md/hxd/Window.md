# hxd.Window

**class** · package [`hxd`](README.md) · source [`hxd/Window.js.hx`](../../../../hxd/Window.js.hx)

The application window, which receives the input events and resize notifications.
On JS, it is a canvas of the page. Use `Window.getInstance()` to get the current window.
Each target has its own implementation (`Window.hl.hx`, `Window.js.hx`).

## Constructor

### new

```haxe
function new(?canvas:js.html.CanvasElement, ?globalEvents:Bool):Void
```

Creates a window. On HashLink: with the given title and size; flags: `fixed` disables resizing, `hidden` creates it hidden, `background` (DirectX) creates it without activating it. The main window is created by `hxd.System.createWindow`.
On JS: for the given canvas, or for the `#webgl` canvas of the page. If `globalEvents` is set (or the canvas has the `globalEvents="1"` attribute), events are captured on the whole page instead of only the canvas.

## Static methods

### getInstance

```haxe
static function getInstance():Window
```

Returns the current window (on JS, it is created for the `#webgl` canvas if needed).

### getMonitors _(hl/sdl, hl/directx only)_

```haxe
static function getMonitors():Array<Monitor>
```

Returns the list of the connected monitors.

### hasWindow _(hl/sdl, hl/directx only)_

```haxe
static function hasWindow():Bool
```

Tells if at least one window is open.

## Variables

### x

```haxe
var x(get, null):Int
```

The X position of the window on the screen (of the canvas in the page on JS).

### y

```haxe
var y(get, null):Int
```

The Y position of the window on the screen (of the canvas in the page on JS).

### width

```haxe
var width(get, null):Int
```

The width of the drawable area in pixels.

### height

```haxe
var height(get, null):Int
```

The height of the drawable area in pixels.

### mouseX

```haxe
var mouseX(get, null):Int
```

The X position of the mouse, relative to the window.

### mouseY

```haxe
var mouseY(get, null):Int
```

The Y position of the mouse, relative to the window.

### mouseLock

```haxe
var mouseLock(get, set):Bool
```

Tells if the mouse is locked. Deprecated: use `mouseMode = AbsoluteUnbound(true)`.

### mouseClip

```haxe
var mouseClip(get, set):Bool
```

If set, will restrain the mouse cursor within the window boundaries.

### mouseMode

```haxe
var mouseMode(default, set):hxd.impl.MouseMode
```

Set the mouse movement input handling mode.

- **see** `hxd.impl.MouseMode` for more details on each mode.

### vsync

```haxe
var vsync(get, set):Bool
```

Tells if the rendering is synchronized with the screen refresh. It can't be disabled on JS.

### isFocused

```haxe
var isFocused(get, null):Bool
```

Tells if the window has the focus.

### propagateKeyEvents _(js only)_

```haxe
var propagateKeyEvents:Bool
```

If set, key events are not stopped by the canvas and propagate to the rest of the page. Set from the `globalEvents` constructor argument, or the `propagateKeyEvents` canvas attribute.

### title

```haxe
var title(get, set):String
```

The title of the window (of the page on JS).

### displayMode

```haxe
var displayMode(get, set):DisplayMode
```

The display mode of the window: windowed, borderless or fullscreen. On JS, any mode other than `Windowed` requests the browser fullscreen.

### useScreenPixels _(js only)_

```haxe
var useScreenPixels:Bool
```

When enabled, the browser zoom does not affect the canvas.
(default : true)

### maxPixelRatio _(js only)_

```haxe
var maxPixelRatio:Float
```

Sets the maximum pixel ratio that will be used (only applicable with useScreenPixels enabled).
(default : Browser.window.devicePixelRatio)

### discardMouseCaptureEvent _(js only)_

```haxe
var discardMouseCaptureEvent:Bool
```

When enabled, the user click event on the canvas that would trigger mouse capture to be enabled would be discarded.
(default : true)

### id _(hl/sdl, hl/directx only)_

```haxe
var id:Int
```

The identifier of the native window (only set with the `multidriver` define).

### monitor _(hl/sdl, hl/directx only)_

```haxe
var monitor(default, set):Null<Int>
```

The index of the monitor used in fullscreen and borderless modes, or `null` to use the current monitor.

### framerate _(hl/sdl, hl/directx only)_

```haxe
var framerate:Null<Int>
```

The refresh rate to use when changing the resolution in fullscreen mode, or `null` to keep the current one.

### displayScale _(hl/sdl, hl/directx only)_

```haxe
var displayScale(get, null):Float
```

Get the preferred scaling ratio for high dpi displays for this window

### currentMonitorIndex _(hl/sdl, hl/directx only)_

```haxe
var currentMonitorIndex(get, null):Int
```

The index of the monitor containing the window.

## Methods

### dispose _(js only)_

```haxe
function dispose():Void
```

Stops observing the canvas size and releases the instance.

### setIcon

```haxe
function setIcon(icon:BitmapData):Void
```

Sets the icon of the window (not supported on JS).

### onClose

```haxe
dynamic function onClose():Bool
```

Called when the user asks to close the window. Return `false` to keep it open.

### onMouseModeChange

```haxe
dynamic function onMouseModeChange(from:hxd.impl.MouseMode, to:hxd.impl.MouseMode):Null<hxd.impl.MouseMode>
```

Called when `mouseMode` changes, including when only the parameters of the mode change.
Returns a mouse mode to use instead of `to`, or `null` to keep it.

### event

```haxe
function event(e:Event):Void
```

Sends an event to all the event targets.

### addEventTarget

```haxe
function addEventTarget(et:() -> Void):Void
```

Adds a function called for every input event of the window.

### removeEventTarget

```haxe
function removeEventTarget(et:() -> Void):Void
```

Removes a function added with `addEventTarget`.

### addResizeEvent

```haxe
function addResizeEvent(f:() -> Void):Void
```

Adds a function called when the window is resized.

### removeResizeEvent

```haxe
function removeResizeEvent(f:() -> Void):Void
```

Removes a function added with `addResizeEvent`.

### resize

```haxe
function resize(width:Int, height:Int):Void
```

Resizes the window (not supported on JS). In fullscreen mode, it also changes the screen resolution to the closest available one.

### setPosition

```haxe
function setPosition(x:Int, y:Int):Void
```

Moves the window on the screen (not supported on JS).

### addDragAndDropTarget

```haxe
function addDragAndDropTarget(f:(event:DropFileEvent) -> Void):Void
```

Adds a function called when files are dropped on the window.

### removeDragAndDropTarget

```haxe
function removeDragAndDropTarget(f:(event:DropFileEvent) -> Void):Void
```

Removes a function added with `addDragAndDropTarget`.

### setFullScreen

```haxe
function setFullScreen(v:Bool):Void
```

Enables or disables fullscreen mode. Deprecated: use `displayMode`.

### setCursorPos

```haxe
function setCursorPos(x:Int, y:Int, ?emitEvent:Bool = false):Void
```

Moves the mouse cursor, relative to the window. If `emitEvent` is set, an `EMove` event is sent.
On JS, the browser can't move the cursor: it is only allowed in relative mouse modes, and sets the mouse position.

### captureMouseEvents

```haxe
function captureMouseEvents(enable:Bool):Void
```

Enables or disables the mouse capture: while enabled, the window keeps receiving mouse events when the cursor leaves it.

### setCurrent

```haxe
function setCurrent():Void
```

Makes this window the current one, returned by `getInstance`.

### onMove _(hl/sdl, hl/directx only)_

```haxe
dynamic function onMove():Void
```

Called when the window is moved.

### close _(hl/sdl, hl/directx only)_

```haxe
function close():Void
```

Closes the window.

### applyDisplay _(hl/sdl, hl/directx only)_

```haxe
function applyDisplay():Void
```

Applies `displayMode` again, after changing `monitor` or `framerate`.

### setMaximized _(hl/sdl, hl/directx only)_

```haxe
function setMaximized(maximized:Bool):Void
```

Maximizes or restores the window.

### isMaximized _(hl/sdl, hl/directx only)_

```haxe
function isMaximized():Bool
```

Tells if the window is maximized.

### getCurrentDisplaySetting _(hl/sdl, hl/directx only)_

```haxe
function getCurrentDisplaySetting(?monitorId:Int, ?registry:Bool = false):DisplaySetting
```

Returns the current display setting of the monitor (the first one by default). On DirectX, if `registry` is set, returns the default setting instead of the one changed by the application.

### getDisplaySettings _(hl/sdl, hl/directx only)_

```haxe
function getDisplaySettings(?monitorId:Int):Array<DisplaySetting>
```

Returns the display settings available on the monitor (`monitor` by default), keeping only the ones of at least 720 pixels high and 60 Hz (or 30 Hz) when there are any.
