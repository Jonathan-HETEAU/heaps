# h3d.parts.GpuParticles

**class** · package [`h3d.parts`](README.md) · source [`h3d/parts/GpuParticles.hx`](../../../../../h3d/parts/GpuParticles.hx)

Extends: [`h3d.scene.MultiMaterial`](../scene/MultiMaterial.md) → [`h3d.scene.Mesh`](../scene/Mesh.md) → [`h3d.scene.Object`](../scene/Object.md)

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

## Variables

### seed

```haxe
var seed(default, set):Int
```

### volumeBounds

```haxe
var volumeBounds(default, set):h3d.col.Bounds
```

### currentTime

```haxe
var currentTime:Float
```

### duration

```haxe
var duration(default, null):Float
```

### bounds

```haxe
var bounds(default, null):h3d.col.Bounds
```

### amount

```haxe
var amount:Float
```

Tells how much percent of the particles to display. This can be used to progressively display a particle effect.
This can also be done per group in GpuPartGroup.progress

### uploadedCount

```haxe
var uploadedCount(default, null):Int
```

Tells how many particles were uploaded to GPU last frame (for performance tuning).

### count

```haxe
var count(get, null):Int
```

Tells how many particles are live actually

## Methods

### onEnd

```haxe
dynamic function onEnd():Void
```

### save

```haxe
function save():Dynamic
```

### load

```haxe
function load(_o:Dynamic, ?resourcePath:String):Void
```

### addGroup

```haxe
function addGroup(?g:GpuPartGroup, ?material:h3d.mat.Material, ?index:Int):Null<GpuPartGroup>
```

### rebuild

```haxe
function rebuild():Void
```

### removeGroup

```haxe
function removeGroup(g:GpuPartGroup):Void
```

### getGroup

```haxe
function getGroup(name:String):GpuPartGroup
```

### getGroups

```haxe
inline function getGroups():ArrayIterator<GpuPartGroup>
```

## Inherited members

- from [`h3d.scene.MultiMaterial`](../scene/MultiMaterial.md): `materials`, `getMeshMaterials`, `clone`, `getMaterialByName`, `getMaterials`
- from [`h3d.scene.Mesh`](../scene/Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](../scene/Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
