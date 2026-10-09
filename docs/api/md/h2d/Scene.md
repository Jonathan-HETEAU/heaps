# h2d.Scene

**class** · package [`h2d`](README.md) · source [`h2d/Scene.hx`](../../../../h2d/Scene.hx)

Extends: [`h2d.Layers`](Layers.md) → [`h2d.Object`](Object.md)

Implements: [`hxd.InteractiveScene`](../hxd/InteractiveScene.md), [`h3d.IDrawable`](../h3d/IDrawable.md)

Subclasses: [`h2d.LoadingScene`](LoadingScene.md)

The root class for a 2D scene. All root objects are added to it before being drawn on screen.

## Constructor

### new

```haxe
function new():Void
```

Create a new 2D scene. A default 2D scene is already available in `hxd.App.s2d`.

## Variables

### width

```haxe
var width(default, null):Int
```

The current width (in pixels) of the scene. Can change if the screen gets resized or `scaleMode` changes.

### height

```haxe
var height(default, null):Int
```

The current height (in pixels) of the scene. Can change if the screen gets resized or `scaleMode` changes.

### viewportScaleX

```haxe
var viewportScaleX(default, null):Float
```

Horizontal scale of a scene when rendering to the screen.

Can change if the screen gets resized or `scaleMode` changes.

### viewportScaleY

```haxe
var viewportScaleY(default, null):Float
```

Vertical scale of a scene when rendering to the screen.

Can change if the screen gets resized or `scaleMode` changes.

### mouseX

```haxe
var mouseX(get, null):Float
```

The current mouse X coordinates (in pixels) relative to the current `Scene.interactiveCamera`.

### mouseY

```haxe
var mouseY(get, null):Float
```

The current mouse Y coordinates (in pixels) relative to the current `Scene.interactiveCamera`.

### scaleMode

```haxe
var scaleMode(default, set):ScaleMode
```

Scene scaling mode.

Important thing to keep in mind - Scene does not clip rendering to it's scaled size and
graphics can render outside of it. However `RenderContext.drawTile` (and consecutively `Object.emitTile`) does check for those bounds and
will clip out tiles that are outside of the scene bounds.

### cameras

```haxe
var cameras(get, null):ReadOnlyArray<Camera>
```

List of all cameras attached to the Scene. Should contain at least one camera to render (created by default).

Override `h2d.Camera.layerVisible` method to filter out specific layers from camera rendering.

To add or remove cameras use `Scene.addCamera` and `Scene.removeCamera` methods.

### camera

```haxe
var camera(get, null):Camera
```

Alias to the first camera in the camera list: `cameras[0]`

### interactiveCamera

```haxe
var interactiveCamera(default, set):Camera
```

Camera instance that handles the scene events.

Due to Heaps structure, only one Camera can work with the Interactives.
Contrary to rendering, event handling does not check if layer is visible for the camera or not.

Should never be null. When set, if Camera does not belong to the Scene, it will be added with `Scene.addCamera`.
Would cause an exception when trying to remove current interactive camera from the list.

### defaultSmooth

```haxe
var defaultSmooth(get, set):Bool
```

Controls the default value for `h2d.Drawable.smooth`. Default: `false`

### renderer

```haxe
var renderer(get, set):RenderContext
```

The current Scene renderer. Can be customized.

## Methods

### addCamera

```haxe
function addCamera(cam:Camera, ?pos:Int):Void
```

Adds a Camera to the Scene camera list with optional index at which it is added.
- **param** `cam` The Camera instance to add.
- **param** `pos` Optional index at which the camera will be inserted.

### removeCamera

```haxe
function removeCamera(cam:Camera):Void
```

Removes the Camera from the Scene camera list.
Attempting to remove current `Scene.interactiveCamera` would cause an exception.

### getInteractive

```haxe
function getInteractive(x:Float, y:Float):Interactive
```

Returns the topmost visible Interactive at the specified coordinates.

### addEventListener

```haxe
function addEventListener(f:() -> Void):Void
```

Add an event listener that will capture all events that were not caught by an `h2d.Interactive`

### removeEventListener

```haxe
function removeEventListener(f:() -> Void):Bool
```

Remove a previously added event listener, returns false it was not part of the event listeners.

### startCapture

```haxe
function startCapture(onEvent:() -> Void, ?onCancel:() -> Void, ?touchId:Int):Void
```

Starts input events capture and redirects them to `onEvent` method until `Scene.stopDrag` is called.

While the method name may imply that only mouse events would be captured: This is not the case,
as it will also capture all other input events, including keyboard events.

- **param** `onEvent` A callback method that receives `hxd.Event` when input event happens.
Unless `onEvent` sets `Event.propagate` to `true`, event won't be sent to other Interactives.
- **param** `onCancel` An optional callback that is invoked when `Scene.stopDrag` is called.
- **param** `refEvent` For touch events, when defined, only capture events that match the reference `Event.touchId`.

### stopCapture

```haxe
function stopCapture():Void
```

Stops current input event capture.

### getFocus

```haxe
function getFocus():Interactive
```

Get the currently focused Interactive.

### dispose

```haxe
function dispose():Void
```

Dispose the scene and all its children, freeing used GPU memory.

If Scene was allocated, causes `Object.onRemove` on all Scene objects.

### setElapsedTime

```haxe
function setElapsedTime(v:Float):Void
```

<span class="label">Internal usage</span>

Before `Scene.render` or `Scene.sync` are called, allows to set how much time has elapsed (in seconds) since the last frame in order to update scene animations.
This is managed automatically by hxd.App.

### syncOnly

```haxe
function syncOnly(et:Float):Void
```

Synchronize the scene without rendering, updating all objects and animations by the given amount of time, in seconds.

### render

```haxe
function render(engine:h3d.Engine):Void
```

<span class="label">Internal usage</span>

Render the scene on the screen.

### mark

```haxe
dynamic function mark(name:String):Void
```

### captureBitmap

```haxe
function captureBitmap(?target:Tile):Bitmap
```

Capture the scene into a texture and returns the resulting `h2d.Bitmap`.

- **param** `target` Optional Tile to render onto. If not set, new Texture with interval Scene viewport dimensions is allocated,
otherwise Tile boundaries and Texture are used.

## Inherited members

- from [`h2d.Layers`](Layers.md): `addChild`, `add`, `addChildAt`, `removeChild`, `under`, `over`, `getLayer`, `getChildAtLayer`, `getChildLayer`, `getChildIndexInLayer`, `ysort`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
