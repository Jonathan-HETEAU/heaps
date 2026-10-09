# h3d.scene.Joint

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.Skin` · source [`h3d/scene/Skin.hx`](../../../../../h3d/scene/Skin.hx)

Extends: [`h3d.scene.Object`](Object.md)

A temporary object representing a joint (bone) of a `Skin`, returned by `Skin.getObjectByName`.

Its absolute position follows the joint, which allows attaching objects to bones or reading their position.
It is not part of the scene tree: it is recreated by each `getObjectByName` call.

## Constructor

### new

```haxe
function new(skin:Skin, j:h3d.anim.Joint):Void
```

Creates an object following the joint `j` of `skin`.

## Variables

### skin

```haxe
var skin:Skin
```

The skin this joint belongs to.

### index

```haxe
var index:Int
```

The index of the joint in `h3d.anim.Skin.allJoints`.

## Methods

### getObjectByName

```haxe
override function getObjectByName(name:String):Null<Joint>
```

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
