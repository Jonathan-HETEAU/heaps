# h3d.scene.pbr.Light

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/Light.hx`](../../../../../../h3d/scene/pbr/Light.hx)

Extends: [`h3d.scene.Light`](../Light.md) → [`h3d.scene.Object`](../Object.md)

Subclasses: [`h3d.scene.pbr.CapsuleLight`](CapsuleLight.md), [`h3d.scene.pbr.DirLight`](DirLight.md), [`h3d.scene.pbr.PointLight`](PointLight.md), [`h3d.scene.pbr.RectangleLight`](RectangleLight.md), [`h3d.scene.pbr.SpotLight`](SpotLight.md)

## Variables

### power

```haxe
var power:Float
```

### shadows

```haxe
var shadows:h3d.pass.Shadows
```

### isMainLight

```haxe
var isMainLight:Bool
```

### occlusionFactor

```haxe
var occlusionFactor:Float
```

### enableForward

```haxe
var enableForward:Bool
```

## Methods

### getIntensity

```haxe
function getIntensity():Float
```

### inFrustum

```haxe
function inFrustum(frustum:h3d.col.Frustum):Bool
```

## Inherited members

- from [`h3d.scene.Light`](../Light.md): `color`, `getShadowDirection`
- from [`h3d.scene.Object`](../Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
