# h3d.scene.AnimMeshBatcher

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/AnimMeshBatcher.hx`](../../../../../h3d/scene/AnimMeshBatcher.hx)

Extends: [`h3d.scene.Object`](Object.md)

Draws many copies of an animated object with instancing: one `MeshBatch` is created per mesh of the object, and
all the copies play the same animation in sync.

Only the transform of each mesh is animated (rigid animations): skeletal deformation is not supported.

## Constructor

### new

```haxe
function new(object:Object, spawn:() -> Bool, ?parent:Object):Void
```

Creates the batches from `object`, which becomes a hidden child used as animation source.
- **param** `object` The object to copy. Play animations on the batcher with `playAnimation`.
- **param** `spawn` Called repeatedly to place the copies: it must fill the given matrix with the world transform of the
next copy and return `true`, or return `false` when there are no more copies.
- **param** `parent` An optional parent object.

## Methods

### playAnimation

```haxe
override function playAnimation(anim:h3d.anim.Animation):h3d.anim.Animation
```

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
