# h3d.scene.pbr.SpotLight

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/SpotLight.hx`](../../../../../../h3d/scene/pbr/SpotLight.hx)

Extends: [`h3d.scene.pbr.Light`](Light.md) → [`h3d.scene.Light`](../Light.md) → [`h3d.scene.Object`](../Object.md)

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

## Static methods

### spotLightPrim

```haxe
static function spotLightPrim():h3d.prim.Polygon
```

## Variables

### range

```haxe
var range(get, set):Float
```

### angle

```haxe
var angle(default, set):Float
```

### fallOff

```haxe
var fallOff:Float
```

### cookie

```haxe
var cookie:h3d.mat.Texture
```

## Methods

### clone

```haxe
override function clone(?o:h3d.scene.Object):h3d.scene.Object
```

### getShadowDirection

```haxe
override function getShadowDirection(?v:h3d.Vector):h3d.Vector
```

### inFrustum

```haxe
override function inFrustum(frustum:h3d.col.Frustum):Bool
```

## Inherited members

- from [`h3d.scene.pbr.Light`](Light.md): `power`, `shadows`, `isMainLight`, `occlusionFactor`, `enableForward`, `getIntensity`, `inFrustum`
- from [`h3d.scene.Light`](../Light.md): `color`, `getShadowDirection`
- from [`h3d.scene.Object`](../Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
