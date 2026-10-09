# h3d.scene.OrbitCameraController

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.CameraController` · source [`h3d/scene/CameraController.hx`](../../../../../h3d/scene/CameraController.hx)

Extends: [`h3d.scene.CameraController`](CameraController.md) → [`h3d.scene.Object`](Object.md)

A camera controller orbiting around a target, as in 3D editors:
- right button drag: pans the target;
- middle button drag (or Alt + left button drag): rotates around the target;
- mouse wheel: zooms (see `enableZoom`);
- arrow keys, WASD or ZQSD while dragging: move the target horizontally.

```haxe
new h3d.scene.CameraController.OrbitCameraController(s3d).loadFromCamera();
```

## Constructor

### new

```haxe
function new(?distance:Float, ?parent:Object):Void
```

Creates an orbit controller.
- **param** `distance` The initial distance to the target.
- **param** `parent` The parent object, usually the scene.

## Inherited members

- from [`h3d.scene.CameraController`](CameraController.md): `distance`, `targetDistance`, `theta`, `phi`, `fovY`, `target`, `minDistance`, `maxDistance`, `enableZoom`, `zoomAmount`, `friction`, `rotateSpeed`, `panSpeed`, `smooth`, `lockZPlanes`, `wantedFOV`, `moveSpeed`, `set`, `loadFromCamera`, `initFromScene`, `toTarget`, `onCustomEvent`, `onClick`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
