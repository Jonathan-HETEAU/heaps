# h3d.scene.SubSkin

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.Skin` · source [`h3d/scene/Skin.hx`](../../../../../h3d/scene/Skin.hx)

Extends: [`h3d.scene.Skin`](Skin.md) → [`h3d.scene.MultiMaterial`](MultiMaterial.md) → [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

A skin following the skeleton of another skin: the joints with the same name copy the pose of `baseSkin`.

Used for separate skinned parts sharing a skeleton, such as clothes or equipment on a character.
Animations bound to the hierarchy are not applied to it, but animations played directly on it are
(for instance facial animations on top of the body animation).

## Constructor

### new

```haxe
function new(baseSkin:Skin, subSkin:Skin, ?parent:Object):Void
```

Creates a skin using the skin data and materials of `subSkin`, posed by the skeleton of `baseSkin`.

## Methods

### setSkinData

```haxe
override function setSkinData(s:h3d.anim.Skin, ?shaderInit:Bool = true):Void
```

### playAnimation

```haxe
override function playAnimation(a:h3d.anim.Animation):h3d.anim.Animation
```

### getObjectByName

```haxe
override function getObjectByName(name:String):Object
```

## Inherited members

- from [`h3d.scene.Skin`](Skin.md): `MAX_SHADER_BONES`, `accumulator`, `showJoints`, `enableRetargeting`, `prevEnableRetargeting`, `clone`, `getCurrentSkeletonBounds`, `getObjectByName`, `getLocalCollider`, `getGlobalCollider`, `getSkinData`, `getJointRelPosition`, `setJointRelPosition`, `setSkinData`
- from [`h3d.scene.MultiMaterial`](MultiMaterial.md): `materials`, `getMeshMaterials`, `clone`, `getMaterialByName`, `getMaterials`
- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
