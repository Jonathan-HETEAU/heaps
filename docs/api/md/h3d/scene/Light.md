# h3d.scene.Light

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Light.hx`](../../../../../h3d/scene/Light.hx)

Extends: [`h3d.scene.Object`](Object.md)

Subclasses: [`h3d.scene.fwd.Light`](fwd/Light.md), [`h3d.scene.pbr.Light`](pbr/Light.md)

Base class for all 3D lights.

A light is a regular scene `Object`: it is positioned and oriented through its transform and emits itself
to the `RenderContext` at render time so that the renderer's `LightSystem` can apply it to the lit objects.
Do not instantiate it directly: use the implementations of the active renderer, such as
`h3d.scene.fwd.PointLight` / `h3d.scene.fwd.DirLight` (forward renderer) or
`h3d.scene.pbr.PointLight` / `h3d.scene.pbr.SpotLight` / `h3d.scene.pbr.DirLight` (PBR renderer).

## Variables

### color

```haxe
var color(get, set):h3d.Vector
```

The color of the light. The base implementation returns a new zero vector and ignores assignments:
subclasses map it to their shader parameter.

## Methods

### getShadowDirection

```haxe
function getShadowDirection(?v:h3d.Vector):h3d.Vector
```

Returns the direction used to cast shadows, or `null` if this light does not cast directional shadows.
Used by `LightSystem.initLights` to select the scene shadow light.
- **param** `v` An optional vector to store the result in, avoiding an allocation.

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
