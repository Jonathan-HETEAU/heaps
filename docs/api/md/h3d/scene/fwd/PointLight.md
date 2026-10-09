# h3d.scene.fwd.PointLight

**class** · package [`h3d.scene.fwd`](README.md) · source [`h3d/scene/fwd/PointLight.hx`](../../../../../../h3d/scene/fwd/PointLight.hx)

Extends: [`h3d.scene.fwd.Light`](Light.md) → [`h3d.scene.Light`](../Light.md) → [`h3d.scene.Object`](../Object.md)

A point light of the forward renderer, shining in all directions from its position.

Its intensity at distance `d` is divided by `params.x + params.y * d + params.z * d²`.
The light is culled when this attenuated intensity falls below 1/128 outside of the camera view.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

Creates a point light.

## Variables

### params

```haxe
var params(get, set):h3d.Vector
```

The attenuation coefficients: `x` constant, `y` linear and `z` quadratic.

## Inherited members

- from [`h3d.scene.fwd.Light`](Light.md): `priority`, `enableSpecular`
- from [`h3d.scene.Light`](../Light.md): `color`, `getShadowDirection`
- from [`h3d.scene.Object`](../Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
