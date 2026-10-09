# h3d.parts.GpuParticles

**class** · package [`h3d.parts`](README.md) · source [`h3d/parts/GpuParticles.hx`](../../../../../h3d/parts/GpuParticles.hx)

Extends: [`h3d.scene.MultiMaterial`](../scene/MultiMaterial.md) → [`h3d.scene.Mesh`](../scene/Mesh.md) → [`h3d.scene.Object`](../scene/Object.md)

A particle system animated on the GPU: the initial state of each particle is computed once, then the shader computes
its position, size and color over time. Supports very large numbers of particles. Made of one or several `GpuPartGroup`.
Usually edited in Hide and loaded with `load`.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

Creates an empty particle system.

## Variables

### seed

```haxe
var seed(default, set):Int
```

The random seed of the particles.

### volumeBounds

```haxe
var volumeBounds(default, set):h3d.col.Bounds
```

The emission volume in `VolumeBounds` and `CameraBounds` modes.

### currentTime

```haxe
var currentTime:Float
```

The current time of the particle system, in seconds.

### duration

```haxe
var duration(default, null):Float
```

The duration of the effect, in seconds, computed from the groups (`0` if a group loops).

### bounds

```haxe
var bounds(default, null):h3d.col.Bounds
```

The bounds of the particles, used for culling.

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

Called when `currentTime` reaches `duration`. By default restarts the effect.

### save

```haxe
function save():Dynamic
```

Returns the settings of all the groups as a serializable object.

### load

```haxe
function load(_o:Dynamic, ?resourcePath:String):Void
```

Loads the groups from saved settings.

### addGroup

```haxe
function addGroup(?g:GpuPartGroup, ?material:h3d.mat.Material, ?index:Int):Null<GpuPartGroup>
```

Adds a group (a new one if `g` is `null`) and returns it.
- **param** `material` The material of the group.
- **param** `index` The position of the group.

### rebuild

```haxe
function rebuild():Void
```

Rebuilds all the particles.

### removeGroup

```haxe
function removeGroup(g:GpuPartGroup):Void
```

Removes a group.

### getGroup

```haxe
function getGroup(name:String):GpuPartGroup
```

Returns the group named `name`, or `null`.

### getGroups

```haxe
inline function getGroups():ArrayIterator<GpuPartGroup>
```

Returns an iterator on the groups.

## Inherited members

- from [`h3d.scene.MultiMaterial`](../scene/MultiMaterial.md): `materials`, `getMeshMaterials`, `clone`, `getMaterialByName`, `getMaterials`
- from [`h3d.scene.Mesh`](../scene/Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](../scene/Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
