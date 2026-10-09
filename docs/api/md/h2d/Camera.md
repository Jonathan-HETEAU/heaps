# h2d.Camera

**class** · package [`h2d`](README.md) · source [`h2d/Camera.hx`](../../../../h2d/Camera.hx)

A 2D camera representation attached to `h2d.Scene`.

Enables ability to move, scale and rotate the scene viewport.

Scene supports usage of multiple Camera instances.
To configure which layers each Camera renders - `Camera.layerVisible` method should be overridden.
By default, camera does not clip out the contents that are outside camera bounding box, which can be enabled through `Camera.clipViewport`.

Due to Heaps event handling structure, only one Camera instance can handle the mouse/touch input, and can be set through `h2d.Scene.interactiveCamera` variable.
Note that during even handing, interactive camera does not check if the Camera itself is visible nor the layers filters as well as `clipViewport` is not applied.

## Constructor

### new

```haxe
function new(?scene:Scene):Void
```

Create a new Camera instance and attach to the given `scene`.
- **param** `scene` Optional owner Scene to which camera auto-attaches to.
Note that when Camera is not attached to the Scene, a number of methods would lead to an error if called.

## Variables

### x

```haxe
var x(default, set):Float
```

X position of the camera in world space based on anchorX.

### y

```haxe
var y(default, set):Float
```

Y position of the camera in world space based on anchorY.

### scaleX

```haxe
var scaleX(default, set):Float
```

Horizontal scale factor of the camera. Scaling applied, using anchored position as pivot.

### scaleY

```haxe
var scaleY(default, set):Float
```

Vertical scale factor of the camera. Scaling applied, using anchored position as pivot.

### rotation

```haxe
var rotation(default, set):Float
```

Rotation of the camera in radians. Camera is rotated around anchored position.

### clipViewport

```haxe
var clipViewport:Bool
```

Enables viewport clipping. Allow to restrict rendering area of the camera to the viewport boundaries.

Does not affect the user input when Camera is set as interactive camera.

### viewportX

```haxe
var viewportX(get, set):Float
```

Horizontal viewport offset of the camera relative to internal scene viewport (see `h2d.Scene.scaleMode`) in scene coordinates. ( default : 0 )
Automatically scales on scene resize.

### viewportY

```haxe
var viewportY(get, set):Float
```

Vertical viewport offset of the camera relative to internal scene viewport (see `h2d.Scene.scaleMode`) in scene coordinates. ( default : 0 )
Automatically scales on scene resize.

### viewportWidth

```haxe
var viewportWidth(get, set):Float
```

Camera viewport width in scene coordinates. ( default : scene.width )
Automatically scales on scene resize.

### viewportHeight

```haxe
var viewportHeight(get, set):Float
```

Camera viewport height in scene coordinates. ( default: scene.height )
Automatically scales on scene resize.

### anchorX

```haxe
var anchorX(default, set):Float
```

Horizontal anchor position inside viewport boundaries used for positioning and resize compensation. ( default : 0 )
Value is a percentile (0..1) from left viewport edge to right viewport edge with 0.5 being center.

### anchorY

```haxe
var anchorY(default, set):Float
```

Vertical anchor position inside viewport boundaries used for positioning and resize compensation. ( default : 0 )
Value is a percentile (0..1) from top viewport edge to bottom viewport edge with 0.5 being center.

### visible

```haxe
var visible:Bool
```

Camera visibility.

Does not affect the user input when Camera is set as interactive camera.

### follow

```haxe
var follow:Object
```

Makes camera to follow the referenced Object position.

### followRotation

```haxe
var followRotation:Bool
```

Enables `h2d.Object.rotation` sync between `Camera.follow` object and Camera.

## Methods

### remove

```haxe
inline function remove():Void
```

Detaches Camera from the Scene it currently attached to.

### layerVisible

```haxe
dynamic function layerVisible(layer:Int):Bool
```

Override this method to set visibility only to specific layers. Renders all layers by default.

Does not affect the user input when Camera is set as interactive camera.

Usage example:

```haxe
final LAYER_SHARED = 0;
final LAYER_PLAYER_1 = 2;
final LAYER_PLAYER_2 = 3;
final LAYER_UI = 4;
// Set first camera to only render shared layer and one that only visible to player 1.
s2d.camera.layerVisible = (layer) -> layer == LAYER_SHARED || layer == LAYER_PLAYER_1;
var player2 = new h2d.Camera(s2d);
// Set second camera to only render shared layer and one that only visible to player 2.
player2.layerVisible = (layer) -> layer == LAYER_SHARED || layer == LAYER_PLAYER_2;
var ui = new h2d.Camera(s2d);
// Set last camera to only render UI layer.
ui.layerVisible = (layer) -> layer == LAYER_UI;
```

- **param** `layer` The rendered layer index in `h2d.Scene`.
- **returns** s `true` if layer can be rendered, `false` otherwise.

### setScale

```haxe
inline function setScale(x:Float, y:Float):Void
```

Sets the `Camera.scaleX` and `Camera.scaleY` to given `x` and `y`.

### scale

```haxe
inline function scale(x:Float, y:Float):Void
```

Multiplies the `Camera.scaleX` by `x` and `Camera.scaleY` by `y`.

### setPosition

```haxe
inline function setPosition(x:Float, y:Float):Void
```

Sets the camera position to given `x` and `y`.

### move

```haxe
inline function move(dx:Float, dy:Float):Void
```

Moves the camera position by given `dx` and `dy`.

### rotate

```haxe
inline function rotate(angle:Float):Void
```

Rotates the camera relative to current rotation by given `angle` in radians.

### setAnchor

```haxe
inline function setAnchor(x:Float, y:Float):Void
```

Sets the `Camera.anchorX` and `Camera.anchorY` to given `x` and `y`.

### setViewport

```haxe
inline function setViewport(?x:Float = 0, ?y:Float = 0, ?w:Float = 0, ?h:Float = 0):Void
```

Sets camera viewport dimensions. If `w` or `h` arguments are 0 - scene size is used (width or height respectively).

Requires Camera being attached to a Scene.

### setRawViewport

```haxe
inline function setRawViewport(?x:Float = 0, ?y:Float = 0, ?w:Float = 1, ?h:Float = 1):Void
```

Sets camera viewport dimensions in raw format of 0..1 percentiles.

### screenToCamera

```haxe
function screenToCamera(pt:h2d.col.Point):Void
```

Convert screen position into a local camera position.

Requires Camera being attached to a Scene.

### cameraToScreen

```haxe
function cameraToScreen(pt:h2d.col.Point):Void
```

Convert local camera position to absolute screen position.

Requires Camera being attached to a Scene.

### sceneToCamera

```haxe
function sceneToCamera(pt:h2d.col.Point):Void
```

Convert an absolute scene position into a local camera position.
Does not represent screen position, see `Camera.screenToCamera` to convert position with accounting of `scaleMode`.

Requires Camera being attached to a Scene.

### cameraToScene

```haxe
function cameraToScene(pt:h2d.col.Point):Void
```

Convert local camera position into absolute scene position.
Does not represent screen position, see `Camera.cameraToScreen` to convert position with accounting of `scaleMode`.

Requires Camera being attached to a Scene.
