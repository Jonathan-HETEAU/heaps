# h3d.scene.pbr.DirLight

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/DirLight.hx`](../../../../../../h3d/scene/pbr/DirLight.hx)

Extends: [`h3d.scene.pbr.Light`](Light.md) → [`h3d.scene.Light`](../Light.md) → [`h3d.scene.Object`](../Object.md)

A directional light of the PBR renderer, such as the sun: its rays are parallel and it lights the whole scene.

The light direction is the X axis of the object (see `Object.setDirection`).

## Constructor

### new

```haxe
function new(?dir:h3d.Vector, ?parent:h3d.scene.Object, ?cascade:Bool):Void
```

Creates a directional light.
- **param** `dir` The light direction (towards which the light shines).
- **param** `parent` An optional parent object.
- **param** `cascade` If `true`, uses cascaded shadow maps (`h3d.pass.CascadeShadowMap`), better for large scenes.
Otherwise uses a single `h3d.pass.DirShadowMap`.

## Methods

### clone

```haxe
override function clone(?o:h3d.scene.Object):h3d.scene.Object
```

### getShadowDirection

```haxe
override function getShadowDirection(?v:h3d.Vector):h3d.Vector
```

## Inherited members

- from [`h3d.scene.pbr.Light`](Light.md): `power`, `shadows`, `isMainLight`, `occlusionFactor`, `enableForward`, `getIntensity`, `inFrustum`
- from [`h3d.scene.Light`](../Light.md): `color`, `getShadowDirection`
- from [`h3d.scene.Object`](../Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
