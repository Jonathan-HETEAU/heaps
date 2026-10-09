# hxd.Window

**class** · package [`hxd`](README.md) · source [`hxd/Window.js.hx`](../../../../hxd/Window.js.hx)

## Constructor

### new

```haxe
function new(?canvas:js.html.CanvasElement, ?globalEvents:Bool):Void
```

## Static methods

### getInstance

```haxe
static function getInstance():Window
```

### getMonitors _(hl/sdl, hl/directx only)_

```haxe
static function getMonitors():Array<Monitor>
```

### hasWindow _(hl/sdl, hl/directx only)_

```haxe
static function hasWindow():Bool
```

## Variables

### x

```haxe
var x(get, null):Int
```

### y

```haxe
var y(get, null):Int
```

### width

```haxe
var width(get, null):Int
```

### height

```haxe
var height(get, null):Int
```

### mouseX

```haxe
var mouseX(get, null):Int
```

### mouseY

```haxe
var mouseY(get, null):Int
```

### mouseLock

```haxe
var mouseLock(get, set):Bool
```

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

### isFocused

```haxe
var isFocused(get, null):Bool
```

### propagateKeyEvents _(js only)_

```haxe
var propagateKeyEvents:Bool
```

### title

```haxe
var title(get, set):String
```

### displayMode

```haxe
var displayMode(get, set):DisplayMode
```

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

### monitor _(hl/sdl, hl/directx only)_

```haxe
var monitor(default, set):Null<Int>
```

### framerate _(hl/sdl, hl/directx only)_

```haxe
var framerate:Null<Int>
```

### displayScale _(hl/sdl, hl/directx only)_

```haxe
var displayScale(get, null):Float
```

Get the preferred scaling ratio for high dpi displays for this window

### currentMonitorIndex _(hl/sdl, hl/directx only)_

```haxe
var currentMonitorIndex(get, null):Int
```

## Methods

### dispose _(js only)_

```haxe
function dispose():Void
```

### setIcon

```haxe
function setIcon(icon:BitmapData):Void
```

### onClose

```haxe
dynamic function onClose():Bool
```

### onMouseModeChange

```haxe
dynamic function onMouseModeChange(from:hxd.impl.MouseMode, to:hxd.impl.MouseMode):Null<hxd.impl.MouseMode>
```

### event

```haxe
function event(e:Event):Void
```

### addEventTarget

```haxe
function addEventTarget(et:() -> Void):Void
```

### removeEventTarget

```haxe
function removeEventTarget(et:() -> Void):Void
```

### addResizeEvent

```haxe
function addResizeEvent(f:() -> Void):Void
```

### removeResizeEvent

```haxe
function removeResizeEvent(f:() -> Void):Void
```

### resize

```haxe
function resize(width:Int, height:Int):Void
```

### setPosition

```haxe
function setPosition(x:Int, y:Int):Void
```

### addDragAndDropTarget

```haxe
function addDragAndDropTarget(f:(event:DropFileEvent) -> Void):Void
```

### removeDragAndDropTarget

```haxe
function removeDragAndDropTarget(f:(event:DropFileEvent) -> Void):Void
```

### setFullScreen

```haxe
function setFullScreen(v:Bool):Void
```

### setCursorPos

```haxe
function setCursorPos(x:Int, y:Int, ?emitEvent:Bool = false):Void
```

### captureMouseEvents

```haxe
function captureMouseEvents(enable:Bool):Void
```

### setCurrent

```haxe
function setCurrent():Void
```

### onMove _(hl/sdl, hl/directx only)_

```haxe
dynamic function onMove():Void
```

### close _(hl/sdl, hl/directx only)_

```haxe
function close():Void
```

### applyDisplay _(hl/sdl, hl/directx only)_

```haxe
function applyDisplay():Void
```

### setMaximized _(hl/sdl, hl/directx only)_

```haxe
function setMaximized(maximized:Bool):Void
```

### isMaximized _(hl/sdl, hl/directx only)_

```haxe
function isMaximized():Bool
```

### getCurrentDisplaySetting _(hl/sdl, hl/directx only)_

```haxe
function getCurrentDisplaySetting(?monitorId:Int, ?registry:Bool = false):DisplaySetting
```

### getDisplaySettings _(hl/sdl, hl/directx only)_

```haxe
function getDisplaySettings(?monitorId:Int):Array<DisplaySetting>
```
