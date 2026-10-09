# h3d.scene.Graphics

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Graphics.hx`](../../../../../h3d/scene/Graphics.hx)

Extends: [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

Subclasses: [`h3d.scene.Box`](Box.md), [`h3d.scene.Capsule`](Capsule.md), [`h3d.scene.Sphere`](Sphere.md)

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

## Variables

### is3D

```haxe
var is3D(default, set):Bool
```

Setting is3D to true will switch from a screen space line (constant size whatever the distance) to a world space line

## Methods

### clear

```haxe
function clear():Void
```

### lineStyle

```haxe
function lineStyle(?size:Float = 0., ?color:Int = 0, ?alpha:Float = 1.):Void
```

### setColorF

```haxe
function setColorF(r:Float, g:Float, b:Float, ?a:Float = 1.):Void
```

### setColor

```haxe
function setColor(color:Int, ?alpha:Float = 1.):Void
```

### drawLine

```haxe
inline function drawLine(p1:h3d.col.Point, p2:h3d.col.Point):Void
```

### moveTo

```haxe
function moveTo(x:Float, y:Float, z:Float):Void
```

### lineTo

```haxe
function lineTo(x:Float, y:Float, z:Float):Void
```

## Inherited members

- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
