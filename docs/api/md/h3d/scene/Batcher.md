# h3d.scene.Batcher

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Batcher.hx`](../../../../../h3d/scene/Batcher.hx)

Extends: [`h3d.scene.Object`](Object.md)

A GPU driven renderer for very large numbers of static instances of many different models.

Register each model once with `addInstance`, then add as many instances as needed with `emitInstance`.
Instances are kept from frame to frame: they stay until their group is removed (see `createGroup`).
The culling (frustum, distance and optionally occlusion with `hzbCulling`) and the level of detail selection are
done on the GPU by compute shaders, and the instances are drawn with indirect draw calls, with all the meshes of the
same vertex format in a single primitive.

Requires a driver supporting bindless resources (throws otherwise).

## Constructor

### new

```haxe
function new(parent:Object, renderer:Renderer, ?library:BatchLibrary, ?batchFlags:EnumFlags<BatcherFlags>):Void
```

Creates a batcher.
- **param** `parent` The parent object.
- **param** `renderer` The renderer of the scene, used to set up the material passes.
- **param** `library` The geometry library, or `null` to create one owned by this batcher.
- **param** `batchFlags` The options of the batcher.

## Variables

### shadowMaxDistance

```haxe
var shadowMaxDistance:Float
```

If positive, instances farther than this distance are not drawn in the shadow passes.

### shadowCameraFrustumCulling

```haxe
var shadowCameraFrustumCulling:Bool
```

If `true`, the shadow passes only draw the instances inside the camera frustum (aggressive culling, faster but
shadows of objects outside the view can disappear). Otherwise they draw the instances inside the area seen by the
camera, extended towards the light by `shadowCullingOffset`.

### shadowCullingOffset

```haxe
var shadowCullingOffset:Float
```

The distance the shadow casting area is extended towards the light, so that objects outside the view still cast
shadows inside it.

### hzbCulling

```haxe
var hzbCulling:Bool
```

Enables GPU occlusion culling using the hierarchical depth buffer built by the renderer (`RenderContext.hzb`).

### isRelative

```haxe
var isRelative:Bool
```

If `true`, the instance positions are relative to the batcher transform, so the batcher can be moved.
Otherwise they are in world space.

### batchFlags

```haxe
var batchFlags:EnumFlags<BatcherFlags>
```

The options of the batcher.

### syncShader

```haxe
var syncShader:SyncShaderInterface
```

An optional compute shader updating the instance transforms on the GPU each frame (see `BaseSync`), run by `syncGPU`.

## Methods

### hasSyncIDs

```haxe
function hasSyncIDs():Bool
```

Tells if the `syncShader` uses per instance sync IDs.

### addShader

```haxe
function addShader(s:hxsl.Shader, ?pass:String = ""):Void
```

Adds a shader to all the instances.
- **param** `pass` The name of the material pass to add the shader to, or `""` for the main pass of every material.

### removeShader

```haxe
function removeShader(s:hxsl.Shader, ?pass:String = ""):Void
```

Removes a shader added with `addShader`.

### addInstance

```haxe
function addInstance(obj:Object, ?recChildren:Bool = true):ObjectInstance
```

Registers the meshes of `obj` (their primitives must be `h3d.prim.HMDModel` or `h3d.prim.Polygon`) and returns a
model which can be emitted with `emitInstance`. `obj` itself is not modified and does not need to be in the scene.
- **param** `recChildren` If `true`, also registers the meshes of all its descendants.

### createGroup

```haxe
function createGroup():BatchGroup
```

Creates a group of instances, which can be removed together with `BatchGroup.remove`.

### removeGroup

```haxe
function removeGroup(group:BatchGroup):Void
```

Removes all the instances of `group`.

### reserveInstances

```haxe
function reserveInstances(instance:ObjectInstance, count:Int, ?groupID:Int = 0):Void
```

Preallocates `count` instances of `instance` before emitting them, to avoid reallocations.

### emitInstance

```haxe
function emitInstance(instance:ObjectInstance, worldPosition:h3d.Matrix, ?syncID:Int = 0, ?groupID:Int = 0):Void
```

Adds an instance of a model registered with `addInstance`.
- **param** `worldPosition` The transform of the instance (relative to the batcher if `isRelative` is set).
- **param** `syncID` A value stored per instance, read by the `syncShader`.
- **param** `groupID` The group of the instance: prefer `BatchGroup.emitInstance`.

### syncGPU

```haxe
function syncGPU(ctx:RenderContext):Void
```

With the `ManualEmitGPU` flag: runs the `syncShader` on all the instances.

### emitGPU

```haxe
function emitGPU(ctx:RenderContext):Void
```

With the `ManualEmitGPU` flag: runs the compute passes culling the instances and building the draw commands.

### dump

```haxe
function dump(?path:String = "batcher_dump.txt"):Void
```

Writes a text report of the primitives, models and instances of the batcher to the file `path` (debug).

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
