# h3d.scene.World

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/World.hx`](../../../../../h3d/scene/World.hx)

Extends: [`h3d.scene.Object`](Object.md)

## Constructor

### new

```haxe
function new(chunkSize:Int, parent:Null<Object>, ?autoCollect:Bool = true):Void
```

## Variables

### chunkSize

```haxe
var chunkSize(default, null):Int
```

### enableSpecular

```haxe
var enableSpecular:Bool
```

### enableNormalMaps

```haxe
var enableNormalMaps:Bool
```

### specularInAlpha

```haxe
var specularInAlpha:Bool
```

### wrap

```haxe
var wrap(default, set):h3d.mat.Wrap
```

## Methods

### set_wrap

```haxe
function set_wrap(v:h3d.mat.Wrap):h3d.mat.Wrap
```

### garbage

```haxe
function garbage():Void
```

### done

```haxe
function done():Void
```

### loadModel

```haxe
function loadModel(r:hxd.res.Model, ?filter:() -> Bool):WorldModel
```

### dispose

```haxe
function dispose():Void
```

Dispose the World instance.
Note: Only chunked world objects will be disposed. Any objects added to World object will be disposed when World is removed from scene or scene is disposed.

### onContextLost

```haxe
function onContextLost():Void
```

### add

```haxe
function add(model:WorldModel, x:Float, y:Float, z:Float, ?scale:Float = 1., ?rotation:Float = 0.):Void
```

### addTransform

```haxe
function addTransform(model:WorldModel, mat:h3d.Matrix):Void
```

### getWorldBounds

```haxe
function getWorldBounds(?b:h3d.col.Bounds):Null<h3d.col.Bounds>
```

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
