# h3d.scene.CameraController

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/CameraController.hx`](../../../../../h3d/scene/CameraController.hx)

Extends: [`h3d.scene.Object`](Object.md)

Subclasses: [`h3d.scene.FPSCameraController`](FPSCameraController.md), [`h3d.scene.OrbitCameraController`](OrbitCameraController.md)

Base class of the mouse/keyboard camera controllers. Add a controller to the scene to drive `Scene.camera`:
it listens to the scene events and moves the camera smoothly towards the wanted position every frame.

The camera position is expressed in spherical coordinates around `target`: `distance`, `theta` (horizontal angle)
and `phi` (vertical angle, from the Z axis). Use `set` to change them and `loadFromCamera` to start from the
current camera.
See `OrbitCameraController` and `FPSCameraController`.

## Constructor

### new

```haxe
function new(?distance:Float, ?parent:Object):Void
```

Creates a controller. It must be added to the scene (directly or through `parent`) to control its camera.
- **param** `distance` The initial distance to the target.

## Static methods

### getCameraControllersClass

```haxe
static function getCameraControllersClass():Array<Class<CameraController>>
```

Returns the available controller classes (used by editors to let the user pick one).

### getCameraControllerClassIdx

```haxe
static function getCameraControllerClassIdx(ctrl:CameraController):Int
```

Returns the index of the class of `ctrl` in `getCameraControllersClass()`, or `-1`.

## Variables

### distance

```haxe
var distance(get, null):Float
```

The current distance between the camera and its target.

### targetDistance

```haxe
var targetDistance(get, null):Float
```

The distance the camera is moving to.

### theta

```haxe
var theta(get, null):Float
```

The current horizontal angle of the camera around the target, in radians.

### phi

```haxe
var phi(get, null):Float
```

The current vertical angle of the camera, in radians, from `0` (looking down from above) to `PI` (looking up from below).

### fovY

```haxe
var fovY(get, null):Float
```

The current vertical field of view, in degrees.

### target

```haxe
var target(get, null):h3d.col.Point
```

The current position the camera is looking at.

### minDistance

```haxe
var minDistance:Float
```

The minimum distance reachable by zooming.

### maxDistance

```haxe
var maxDistance:Float
```

The maximum distance reachable by zooming.

### enableZoom

```haxe
var enableZoom:Bool
```

If `true`, the mouse wheel changes the distance to the target. Otherwise it moves the camera forward and backward.

### zoomAmount

```haxe
var zoomAmount:Float
```

The distance multiplier applied for each mouse wheel step.

### friction

```haxe
var friction:Float
```

The inertia damping of rotations, between `0` (rotation keeps going) and `1` (stops immediately).

### rotateSpeed

```haxe
var rotateSpeed:Float
```

The rotation speed multiplier.

### panSpeed

```haxe
var panSpeed:Float
```

The panning speed multiplier.

### smooth

```haxe
var smooth:Float
```

The smoothing of the camera movement, between `0` (immediate) and `1` (never reaches the target).

### lockZPlanes

```haxe
var lockZPlanes:Bool
```

If `false`, the camera `zNear` and `zFar` are adjusted to the distance to the target.

### wantedFOV

```haxe
var wantedFOV:Float
```

The vertical field of view, in degrees, applied by `OrbitCameraController` and `FPSCameraController` every frame.

### moveSpeed

```haxe
var moveSpeed:Float
```

The speed of the keyboard movements.

## Methods

### set

```haxe
function set(?distance:Float, ?theta:Float, ?phi:Float, ?target:Null<h3d.col.Point>, ?fovY:Float):Void
```

Set the controller parameters.
Distance is ray distance from target.
Theta and Phi are the two spherical angles
Target is the target position

### loadFromCamera

```haxe
function loadFromCamera(?animate:Bool = false):Void
```

Load current position from current camera position and target.
Call if you want to modify manually the camera.

### initFromScene

```haxe
function initFromScene():Void
```

Initialize to look at the whole scene, based on reported scene bounds.

### toTarget

```haxe
function toTarget():Void
```

Stop animation by directly moving to end position.
Call after set() if you don't want to animate the change

### onCustomEvent

```haxe
dynamic function onCustomEvent(e:hxd.Event):Void
```

Called for each scene event before the controller handles it. Set `e.propagate = false` to prevent the controller
from handling the event.

### onClick

```haxe
dynamic function onClick(e:hxd.Event):Void
```

Called when the user clicks (presses and releases quickly without moving) with the button used to move the camera.

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
