# h3d.scene.Sphere

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Sphere.hx`](../../../../../h3d/scene/Sphere.hx)

Extends: [`h3d.scene.Graphics`](Graphics.md) → [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

## Constructor

### new

```haxe
function new(?color:Int = 0xFFFF0000, ?radius:Float = 1.0, ?depth:Bool = true, ?parent:Object):Void
```

## Variables

### color

```haxe
var color:Int
```

### radius

```haxe
var radius(default, set):Float
```

## Methods

### getLocalCollider

```haxe
override function getLocalCollider():Null<h3d.col.Collider>
```

## Inherited members

- from [`h3d.scene.Graphics`](Graphics.md): `is3D`, `clear`, `lineStyle`, `setColorF`, `setColor`, `drawLine`, `moveTo`, `lineTo`
- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
