# h3d.scene.fwd.DirLight

**class** · package [`h3d.scene.fwd`](README.md) · source [`h3d/scene/fwd/DirLight.hx`](../../../../../../h3d/scene/fwd/DirLight.hx)

Extends: [`h3d.scene.fwd.Light`](Light.md) → [`h3d.scene.Light`](../Light.md) → [`h3d.scene.Object`](../Object.md)

A directional light of the forward renderer, such as the sun: its rays are parallel and it has no position.

The light direction is the X axis of the object (see `Object.setDirection`).

```haxe
var light = new h3d.scene.fwd.DirLight(new h3d.Vector(0.5, 0.5, -0.5), s3d);
light.color.set(1, 1, 1);
```

## Constructor

### new

```haxe
function new(?dir:h3d.Vector, ?parent:h3d.scene.Object):Void
```

Creates a directional light, with a `priority` of 100.
- **param** `dir` The light direction (towards which the light shines).
- **param** `parent` An optional parent object.

## Methods

### getShadowDirection

```haxe
override function getShadowDirection(?v:h3d.Vector):h3d.Vector
```

## Inherited members

- from [`h3d.scene.fwd.Light`](Light.md): `priority`, `enableSpecular`
- from [`h3d.scene.Light`](../Light.md): `color`, `getShadowDirection`
- from [`h3d.scene.Object`](../Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
