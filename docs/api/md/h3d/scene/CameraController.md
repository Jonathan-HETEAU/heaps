# h3d.scene.CameraController

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/CameraController.hx`](../../../../../h3d/scene/CameraController.hx)

Extends: [`h3d.scene.Object`](Object.md)

Subclasses: [`h3d.scene.FPSCameraController`](FPSCameraController.md), [`h3d.scene.OrbitCameraController`](OrbitCameraController.md)

## Constructor

### new

```haxe
function new(?distance:Float, ?parent:Object):Void
```

## Static methods

### getCameraControllersClass

```haxe
static function getCameraControllersClass():Array<Class<CameraController>>
```

### getCameraControllerClassIdx

```haxe
static function getCameraControllerClassIdx(ctrl:CameraController):Int
```

## Variables

### distance

```haxe
var distance(get, null):Float
```

### targetDistance

```haxe
var targetDistance(get, null):Float
```

### theta

```haxe
var theta(get, null):Float
```

### phi

```haxe
var phi(get, null):Float
```

### fovY

```haxe
var fovY(get, null):Float
```

### target

```haxe
var target(get, null):h3d.col.Point
```

### minDistance

```haxe
var minDistance:Float
```

### maxDistance

```haxe
var maxDistance:Float
```

### enableZoom

```haxe
var enableZoom:Bool
```

### zoomAmount

```haxe
var zoomAmount:Float
```

### friction

```haxe
var friction:Float
```

### rotateSpeed

```haxe
var rotateSpeed:Float
```

### panSpeed

```haxe
var panSpeed:Float
```

### smooth

```haxe
var smooth:Float
```

### lockZPlanes

```haxe
var lockZPlanes:Bool
```

### wantedFOV

```haxe
var wantedFOV:Float
```

### moveSpeed

```haxe
var moveSpeed:Float
```

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

### onClick

```haxe
dynamic function onClick(e:hxd.Event):Void
```

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
