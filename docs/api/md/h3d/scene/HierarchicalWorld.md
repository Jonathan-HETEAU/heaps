# h3d.scene.HierarchicalWorld

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/HierarchicalWorld.hx`](../../../../../h3d/scene/HierarchicalWorld.hx)

Extends: [`h3d.scene.Object`](Object.md)

## Constructor

### new

```haxe
function new(parent:Null<Object>, data:WorldData):Void
```

## Static variables

### FULL

```haxe
static var FULL:Bool
```

### DEBUG

```haxe
static var DEBUG:Bool
```

## Variables

### data

```haxe
var data:WorldData
```

### level

```haxe
var level(get, null):Int
```

## Methods

### get_level

```haxe
function get_level():Int
```

### getChunkPos

```haxe
function getChunkPos(x:Float, y:Float, ?depth:Int = -1):h2d.col.Point
```

### containsAt

```haxe
function containsAt(x:Float, y:Float):Bool
```

### requestCreateAt

```haxe
function requestCreateAt(x:Float, y:Float, lock:Bool):Void
```

### getChunkAtLock

```haxe
function getChunkAtLock(x:Float, y:Float):HierarchicalWorld
```

### lockAt

```haxe
function lockAt(x:Float, y:Float):Void
```

### unlockAt

```haxe
function unlockAt(x:Float, y:Float):Void
```

### unlockAll

```haxe
function unlockAll():Void
```

### getRoot

```haxe
function getRoot():HierarchicalWorld
```

### refresh

```haxe
function refresh():Void
```

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
