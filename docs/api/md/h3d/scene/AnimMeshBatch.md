# h3d.scene.AnimMeshBatch

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.AnimMeshBatcher` · source [`h3d/scene/AnimMeshBatcher.hx`](../../../../../h3d/scene/AnimMeshBatcher.hx)

Extends: [`h3d.scene.MeshBatch`](MeshBatch.md) → [`h3d.scene.MultiMaterial`](MultiMaterial.md) → [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

A `MeshBatch` whose instances all follow the animated transform of a source mesh (see `AnimMeshBatcher`).

## Constructor

### new

```haxe
function new(primitive:h3d.prim.MeshPrimitive, material:Null<h3d.mat.Material>, copyObject:Object, ?parent:Object):Void
```

Creates a batch of `primitive` whose instances copy the animated local transform of `copyObject`.

## Inherited members

- from [`h3d.scene.MeshBatch`](MeshBatch.md): `shadersChanged`, `instanceCount`, `worldPosition`, `primitiveSubMeshes`, `curSubMesh`, `calcBounds`, `curLod`, `enableStorageBuffer`, `enableGpuUpdate`, `forceGpuUpdate`, `enableSubMesh`, `enablePerInstanceTexture`, `enableCpuLod`, `begin`, `emitInstance`, `flush`, `disposeBuffers`
- from [`h3d.scene.MultiMaterial`](MultiMaterial.md): `materials`, `getMeshMaterials`, `clone`, `getMaterialByName`, `getMaterials`
- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
