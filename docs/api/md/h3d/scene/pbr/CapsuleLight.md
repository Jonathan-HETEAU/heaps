# h3d.scene.pbr.CapsuleLight

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/CapsuleLight.hx`](../../../../../../h3d/scene/pbr/CapsuleLight.hx)

Extends: [`h3d.scene.pbr.Light`](Light.md) → [`h3d.scene.Light`](../Light.md) → [`h3d.scene.Object`](../Object.md)

A capsule shaped light of the PBR renderer (a segment of `length` along the X axis, with a `radius`),
such as a neon tube, up to `range`.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

Creates a capsule light with a range of 10.

## Variables

### radius

```haxe
var radius:Float
```

The radius of the light source.

### length

```haxe
var length(default, set):Float
```

The length of the light segment, along the X axis.

### zNear

```haxe
var zNear:Float
```

The near plane distance of the shadow map cameras.

### range

```haxe
var range(get, set):Float
```

Alias for uniform scale.

## Methods

### clone

```haxe
override function clone(?o:h3d.scene.Object):h3d.scene.Object
```

### getIntensity

```haxe
override function getIntensity():Float
```

### inFrustum

```haxe
override function inFrustum(frustum:h3d.col.Frustum):Bool
```

## Inherited members

- from [`h3d.scene.pbr.Light`](Light.md): `power`, `shadows`, `isMainLight`, `occlusionFactor`, `enableForward`, `getIntensity`, `inFrustum`
- from [`h3d.scene.Light`](../Light.md): `color`, `getShadowDirection`
- from [`h3d.scene.Object`](../Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
