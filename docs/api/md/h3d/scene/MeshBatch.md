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

Creates a mesh batch drawing instances of `primitive`. The batch does not support colliders.
- **param** `primitive` The primitive drawn by each instance.
- **param** `material` The material, or `null` for a default one.
- **param** `parent` An optional parent object.

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

The index in `primitiveSubMeshes` of the sub mesh drawn by the next `emitInstance`.

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

Selects the level of detail of each instance on the CPU, according to its screen size (or `curLod` if set).
Has no effect if the primitive has a single level of detail. Enables the storage buffer.

### begin

```haxe
function begin(?emitCountTip:Int = -1):Int
```

Starts emitting instances: removes the previous instances and prepares the buffers.
Call it, then for each instance set the batch transform (or `worldPosition`) and the shader parameters,
and call `emitInstance`.

```haxe
batch.begin(units.length);
for( u in units ) {
    batch.setPosition(u.x, u.y, 0);
    colorShader.color.setColor(u.color);
    batch.emitInstance();
}
```
- **param** `emitCountTip` The expected number of instances, used to size the buffers (128 by default).
- **returns** The number of instances the buffers were sized for.

### emitInstance

```haxe
function emitInstance():Void
```

Adds an instance using the current transform of the batch (or `worldPosition` if set) and the current values of
the parameters of its shaders.

### flush

```haxe
function flush():Void
```

Uploads the emitted instances to the GPU. Called automatically during sync.

### disposeBuffers

```haxe
function disposeBuffers():Void
```

Releases the GPU buffers of the instances. They are reallocated by the next `flush`.

## Inherited members

- from [`h3d.scene.MultiMaterial`](MultiMaterial.md): `materials`, `getMeshMaterials`, `clone`, `getMaterialByName`, `getMaterials`
- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
