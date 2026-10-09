# hxd.SceneEvents

**class** · package [`hxd`](README.md) · source [`hxd/SceneEvents.hx`](../../../../hxd/SceneEvents.hx)

## Constructor

### new

```haxe
function new(?window:Window):Void
```

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

### addScene

```haxe
function addScene(s:InteractiveScene, ?index:Int):Void
```

### removeScene

```haxe
function removeScene(s:InteractiveScene):Void
```

### dispose

```haxe
function dispose():Void
```

### focus

```haxe
function focus(i:Interactive):Void
```

### blur

```haxe
function blur():Void
```

### checkEvents

```haxe
function checkEvents():Void
```

### startCapture

```haxe
function startCapture(f:() -> Void, ?onCancel:() -> Void, ?touchId:Int):Void
```

### stopCapture

```haxe
function stopCapture():Void
```

### getFocus

```haxe
function getFocus():Interactive
```

### updateCursor

```haxe
function updateCursor(i:Interactive):Void
```
