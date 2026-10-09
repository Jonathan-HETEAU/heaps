# h3d.scene.pbr.RectangleLight

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/RectangleLight.hx`](../../../../../../h3d/scene/pbr/RectangleLight.hx)

Extends: [`h3d.scene.pbr.Light`](Light.md) → [`h3d.scene.Light`](../Light.md) → [`h3d.scene.Object`](../Object.md)

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

## Variables

### width

```haxe
var width(default, set):Float
```

### height

```haxe
var height(default, set):Float
```

### verticalAngle

```haxe
var verticalAngle(default, set):Float
```

### horizontalAngle

```haxe
var horizontalAngle(default, set):Float
```

### range

```haxe
var range(default, set):Float
```

### fallOff

```haxe
var fallOff:Float
```

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

### inFrustum

```haxe
override function inFrustum(frustum:h3d.col.Frustum):Bool
```

## Inherited members

- from [`h3d.scene.pbr.Light`](Light.md): `power`, `shadows`, `isMainLight`, `occlusionFactor`, `enableForward`, `getIntensity`, `inFrustum`
- from [`h3d.scene.Light`](../Light.md): `color`, `getShadowDirection`
- from [`h3d.scene.Object`](../Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
