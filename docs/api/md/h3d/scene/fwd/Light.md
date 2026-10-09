# h3d.scene.fwd.Light

**class** · package [`h3d.scene.fwd`](README.md) · source [`h3d/scene/fwd/Light.hx`](../../../../../../h3d/scene/fwd/Light.hx)

Extends: [`h3d.scene.Light`](../Light.md) → [`h3d.scene.Object`](../Object.md)

Subclasses: [`h3d.scene.fwd.DirLight`](DirLight.md), [`h3d.scene.fwd.PointLight`](PointLight.md)

Base class of the lights of the forward renderer (`h3d.scene.fwd.Renderer`, the default renderer).
See `DirLight` and `PointLight`.

## Constructor

### new

```haxe
function new(shader:hxsl.Shader, ?parent:h3d.scene.Object):Void
```

## Variables

### priority

```haxe
var priority:Int
```

When an object is lit by more lights than `LightSystem.maxLightsPerObject`, lights with a higher priority are
kept first, then the nearest ones.

### enableSpecular

```haxe
var enableSpecular(get, set):Bool
```

Enables the specular highlights of this light. Not supported by all lights (throws when enabled on those).

## Inherited members

- from [`h3d.scene.Light`](../Light.md): `color`, `getShadowDirection`
- from [`h3d.scene.Object`](../Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
