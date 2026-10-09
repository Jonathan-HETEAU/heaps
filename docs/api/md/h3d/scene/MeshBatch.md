# h3d.scene.MeshBatch

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/MeshBatch.hx`](../../../../../h3d/scene/MeshBatch.hx)

Extends: [`h3d.scene.MultiMaterial`](MultiMaterial.md) → [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

Subclasses: [`h3d.scene.AnimMeshBatch`](AnimMeshBatch.md), [`h3d.scene.GPUMeshBatch`](GPUMeshBatch.md)

h3d.scene.MeshBatch allows to draw multiple meshed in a single draw call.
See samples/MeshBatch.hx for an example.

## Constructor

### new

```haxe
function new(primitive:h3d.prim.MeshPrimitive, ?material:h3d.mat.Material, ?parent:Object):Void
```

## Variables

### shadersChanged

```haxe
var shadersChanged:Bool
```

Set if shader list or shader constants has changed, before calling begin()

### instanceCount

```haxe
var instanceCount(default, null):Int
```

The number of instances on this batch

### worldPosition

```haxe
var worldPosition:h3d.Matrix
```

* 	If set, use this position in emitInstance() instead MeshBatch absolute position

### primitiveSubMeshes

```haxe
var primitiveSubMeshes:Array<SubMesh>
```

Tells the mesh batch to draw only a subpart of the primitive.

### curSubMesh

```haxe
var curSubMesh:Int
```

### calcBounds

```haxe
var calcBounds:Bool
```

If set, exact bounds will be recalculated during emitInstance (default true)

### curLod

```haxe
var curLod:Int
```

With EnableCpuLod, set the lod of the next emitInstance.
Without EnableCpuLod and not using primitiveSubMeshes, set the lod of the whole batch.

## Methods

### enableStorageBuffer

```haxe
function enableStorageBuffer():Void
```

* Buffer of per instance params such as position is created as a storage buffer
* allowing for huge amount of instances.

### enableGpuUpdate

```haxe
function enableGpuUpdate():Void
```

* Buffer of per instance params such as position is created with its own format
* allowing compute shaders to update those parameters.

### forceGpuUpdate

```haxe
function forceGpuUpdate():Void
```

* Force PerInstance to be setup by a compute shader.
* Don't support without Storage Buffer to simplify implementation.

### enableSubMesh

```haxe
function enableSubMesh():Void
```

* Use sub mesh to emit instance.
* Don't support multiple materials without Storage Buffer to simplify implementation.

### enablePerInstanceTexture

```haxe
function enablePerInstanceTexture():Void
```

* Enable per instance texture if bindless is supported.

### enableCpuLod

```haxe
function enableCpuLod():Void
```

### begin

```haxe
function begin(?emitCountTip:Int = -1):Int
```

### emitInstance

```haxe
function emitInstance():Void
```

### flush

```haxe
function flush():Void
```

### disposeBuffers

```haxe
function disposeBuffers():Void
```

## Inherited members

- from [`h3d.scene.MultiMaterial`](MultiMaterial.md): `materials`, `getMeshMaterials`, `clone`, `getMaterialByName`, `getMaterials`
- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
