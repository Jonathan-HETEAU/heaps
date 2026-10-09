# h3d.scene.GPUMeshBatch

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/GPUMeshBatch.hx`](../../../../../h3d/scene/GPUMeshBatch.hx)

Extends: [`h3d.scene.MeshBatch`](MeshBatch.md) → [`h3d.scene.MultiMaterial`](MultiMaterial.md) → [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

## Constructor

### new

```haxe
function new(primitive:h3d.prim.MeshPrimitive, ?material:h3d.mat.Material, ?parent:Object):Void
```

## Variables

### computePass

```haxe
var computePass:h3d.mat.Pass
```

### commandBuffer

```haxe
var commandBuffer:h3d.Buffer
```

### gpuCounter

```haxe
var gpuCounter:h3d.GPUCounter
```

### maxDistance

```haxe
var maxDistance:Float
```

* If set, clip all instanced behind this distance.

## Methods

### enableGpuLod

```haxe
function enableGpuLod():Bool
```

* Enable lod selection at each frame on the gpu using a compute shader.
* Has effects only if a lod is available in the primitive.

### enableGpuCulling

```haxe
function enableGpuCulling():Void
```

* Enable per instance frustum culling on the gpu using a compute shader.

### enableManualDispatch

```haxe
function enableManualDispatch():Void
```

* Enable the user to decide when to call dispatch.

### begin

```haxe
override function begin(?emitCountTip:Int = -1):Int
```

### flush

```haxe
override function flush():Void
```

### dispatch

```haxe
function dispatch(ctx:RenderContext):Void
```

## Inherited members

- from [`h3d.scene.MeshBatch`](MeshBatch.md): `shadersChanged`, `instanceCount`, `worldPosition`, `primitiveSubMeshes`, `curSubMesh`, `calcBounds`, `curLod`, `enableStorageBuffer`, `enableGpuUpdate`, `forceGpuUpdate`, `enableSubMesh`, `enablePerInstanceTexture`, `enableCpuLod`, `begin`, `emitInstance`, `flush`, `disposeBuffers`
- from [`h3d.scene.MultiMaterial`](MultiMaterial.md): `materials`, `getMeshMaterials`, `clone`, `getMaterialByName`, `getMaterials`
- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
