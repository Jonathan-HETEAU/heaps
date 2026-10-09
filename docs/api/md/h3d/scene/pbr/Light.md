# h3d.scene.pbr.Light

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/Light.hx`](../../../../../../h3d/scene/pbr/Light.hx)

Extends: [`h3d.scene.Light`](../Light.md) → [`h3d.scene.Object`](../Object.md)

Subclasses: [`h3d.scene.pbr.CapsuleLight`](CapsuleLight.md), [`h3d.scene.pbr.DirLight`](DirLight.md), [`h3d.scene.pbr.PointLight`](PointLight.md), [`h3d.scene.pbr.RectangleLight`](RectangleLight.md), [`h3d.scene.pbr.SpotLight`](SpotLight.md)

Base class of the lights of the PBR renderer (`h3d.scene.pbr.Renderer`).

Lights with a volume (point, spot, capsule, rectangle) are drawn as their volume in the lighting pass, so they only
cost for the pixels they cover. Each light owns its `shadows` map.
See `DirLight`, `PointLight`, `SpotLight`, `CapsuleLight` and `RectangleLight`.

## Variables

### power

```haxe
var power:Float
```

The light power. The intensity is `power * power` (scaled by 100 for point and capsule lights).

### shadows

```haxe
var shadows:h3d.pass.Shadows
```

The shadow map of the light. Shadows are disabled by default: set `shadows.mode` to enable them.

### isMainLight

```haxe
var isMainLight:Bool
```

If `true`, the light color, power, position, direction and shadow map are exposed to the shaders as the
`mainLight*` globals (`mainLightColor`, `mainLightPower`, `mainLightPos`, `mainLightDir`, `mainLightShadowMap`,
`mainLightViewProj`).

### occlusionFactor

```haxe
var occlusionFactor:Float
```

How much the material ambient occlusion attenuates this light, from `0` (not at all) to `1` (fully).

### enableForward

```haxe
var enableForward:Bool
```

If `true`, the light also lights the objects drawn in the forward passes (`"forward"` and `"forwardAlpha"`),
such as transparent objects.

## Methods

### getIntensity

```haxe
function getIntensity():Float
```

Returns the light intensity, computed from `power`.

### inFrustum

```haxe
function inFrustum(frustum:h3d.col.Frustum):Bool
```

Tells if the light volume intersects `frustum`. Lights outside of the camera frustum are not drawn.

## Inherited members

- from [`h3d.scene.Light`](../Light.md): `color`, `getShadowDirection`
- from [`h3d.scene.Object`](../Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
