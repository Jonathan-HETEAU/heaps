# h3d.scene.pbr.RectangleLight

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/RectangleLight.hx`](../../../../../../h3d/scene/pbr/RectangleLight.hx)

Extends: [`h3d.scene.pbr.Light`](Light.md) → [`h3d.scene.Light`](../Light.md) → [`h3d.scene.Object`](../Object.md)

A rectangular area light of the PBR renderer, such as a window or a screen. The rectangle is in the YZ plane of
the object and shines along its X axis, up to `range`.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

Creates a rectangle light with a range of 10.

## Variables

### width

```haxe
var width(default, set):Float
```

The width of the rectangle (along the Y axis).

### height

```haxe
var height(default, set):Float
```

The height of the rectangle (along the Z axis).

### verticalAngle

```haxe
var verticalAngle(default, set):Float
```

The vertical opening angle of the emitted light, in degrees.

### horizontalAngle

```haxe
var horizontalAngle(default, set):Float
```

The horizontal opening angle of the emitted light, in degrees.

### range

```haxe
var range(default, set):Float
```

The maximum distance reached by the light.

### fallOff

```haxe
var fallOff:Float
```

The half angle, in degrees, inside which the light has its full intensity: it fades out up to half of
`verticalAngle` / `horizontalAngle`.

## Methods

### set_width

```haxe
function set_width(v:Float):Float
```

### set_height

```haxe
function set_height(v:Float):Float
```

### set_verticalAngle

```haxe
function set_verticalAngle(v:Float):Float
```

### set_horizontalAngle

```haxe
function set_horizontalAngle(v:Float):Float
```

### clone

```haxe
override function clone(?o:h3d.scene.Object):h3d.scene.Object
```

### getSpread

```haxe
function getSpread(angle:Float):Float
```

Returns how far the light spreads sideways at `range` for an opening `angle` in degrees (capped to 179).

### inFrustum

```haxe
override function inFrustum(frustum:h3d.col.Frustum):Bool
```

## Inherited members

- from [`h3d.scene.pbr.Light`](Light.md): `power`, `shadows`, `isMainLight`, `occlusionFactor`, `enableForward`, `getIntensity`, `inFrustum`
- from [`h3d.scene.Light`](../Light.md): `color`, `getShadowDirection`
- from [`h3d.scene.Object`](../Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
