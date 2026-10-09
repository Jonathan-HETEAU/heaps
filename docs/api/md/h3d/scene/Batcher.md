# h3d.scene.Batcher

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Batcher.hx`](../../../../../h3d/scene/Batcher.hx)

Extends: [`h3d.scene.Object`](Object.md)

## Constructor

### new

```haxe
function new(parent:Object, renderer:Renderer, ?library:BatchLibrary, ?batchFlags:EnumFlags<BatcherFlags>):Void
```

## Variables

### shadowMaxDistance

```haxe
var shadowMaxDistance:Float
```

### shadowCameraFrustumCulling

```haxe
var shadowCameraFrustumCulling:Bool
```

### shadowCullingOffset

```haxe
var shadowCullingOffset:Float
```

### hzbCulling

```haxe
var hzbCulling:Bool
```

### isRelative

```haxe
var isRelative:Bool
```

### batchFlags

```haxe
var batchFlags:EnumFlags<BatcherFlags>
```

### syncShader

```haxe
var syncShader:SyncShaderInterface
```

## Methods

### hasSyncIDs

```haxe
function hasSyncIDs():Bool
```

### addShader

```haxe
function addShader(s:hxsl.Shader, ?pass:String = ""):Void
```

### removeShader

```haxe
function removeShader(s:hxsl.Shader, ?pass:String = ""):Void
```

### addInstance

```haxe
function addInstance(obj:Object, ?recChildren:Bool = true):ObjectInstance
```

### createGroup

```haxe
function createGroup():BatchGroup
```

### removeGroup

```haxe
function removeGroup(group:BatchGroup):Void
```

### reserveInstances

```haxe
function reserveInstances(instance:ObjectInstance, count:Int, ?groupID:Int = 0):Void
```

### emitInstance

```haxe
function emitInstance(instance:ObjectInstance, worldPosition:h3d.Matrix, ?syncID:Int = 0, ?groupID:Int = 0):Void
```

### syncGPU

```haxe
function syncGPU(ctx:RenderContext):Void
```

### emitGPU

```haxe
function emitGPU(ctx:RenderContext):Void
```

### dump

```haxe
function dump(?path:String = "batcher_dump.txt"):Void
```

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
