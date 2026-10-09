# h3d.scene.pbr.SpotLight

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/SpotLight.hx`](../../../../../../h3d/scene/pbr/SpotLight.hx)

Extends: [`h3d.scene.pbr.Light`](Light.md) → [`h3d.scene.Light`](../Light.md) → [`h3d.scene.Object`](../Object.md)

A spot light of the PBR renderer: a cone of light along the X axis of the object (see `Object.setDirection`),
up to `range`. A `cookie` texture can be projected.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

Creates a spot light with a range of 10 and an angle of 45 degrees.

## Static methods

### spotLightPrim

```haxe
static function spotLightPrim():h3d.prim.Polygon
```

Returns the pyramid primitive used to draw the light volume (shared, cached by the engine).

## Variables

### range

```haxe
var range(get, set):Float
```

The maximum distance reached by the light. Alias for the X scale of the object.

### angle

```haxe
var angle(default, set):Float
```

The opening angle of the cone, in degrees.

### fallOff

```haxe
var fallOff:Float
```

The half angle, in degrees, inside which the light has its full intensity: it then fades out up to `angle / 2`.
With `0` the light fades from the center of the cone.

### cookie

```haxe
var cookie:h3d.mat.Texture
```

An optional texture projected by the light (its color and alpha modulate the light).

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
