# h3d.scene.FPSCameraController

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.CameraController` · source [`h3d/scene/CameraController.hx`](../../../../../h3d/scene/CameraController.hx)

Extends: [`h3d.scene.CameraController`](CameraController.md) → [`h3d.scene.Object`](Object.md)

A free flying "first person" camera controller:
- right button drag: looks around;
- while holding the right or middle button: arrow keys or ZQSD move forward/backward/sideways (W, S and D also work),
  A moves down and E moves up;
- mouse wheel while holding a button: changes `moveSpeed`.

## Constructor

### new

```haxe
function new(?distance:Float, ?parent:Object):Void
```

Creates a first person controller.
- **param** `distance` The initial distance between the camera and the point it looks at.
- **param** `parent` The parent object, usually the scene.

## Variables

### zNear

```haxe
var zNear:Float
```

The camera near plane distance, applied every frame.

### zFar

```haxe
var zFar:Float
```

The camera far plane distance, applied every frame.

### snapToGround

```haxe
var snapToGround:Bool
```

Currently unused.

## Inherited members

- from [`h3d.scene.CameraController`](CameraController.md): `distance`, `targetDistance`, `theta`, `phi`, `fovY`, `target`, `minDistance`, `maxDistance`, `enableZoom`, `zoomAmount`, `friction`, `rotateSpeed`, `panSpeed`, `smooth`, `lockZPlanes`, `wantedFOV`, `moveSpeed`, `set`, `loadFromCamera`, `initFromScene`, `toTarget`, `onCustomEvent`, `onClick`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
