# h3d.scene.HierarchicalWorld

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/HierarchicalWorld.hx`](../../../../../h3d/scene/HierarchicalWorld.hx)

Extends: [`h3d.scene.Object`](Object.md)

A streamed world split in a quadtree of square chunks on the XY plane.

The root node covers the whole world. Each frame, the nodes close to the camera are subdivided in 4 children
(at most one subdivision per frame, through a loading queue), and the subdivisions of far nodes are removed.
Use `WorldData.onCreate` to populate the nodes when they are created. Nodes can be locked to keep them loaded
while editing.

## Constructor

### new

```haxe
function new(parent:Null<Object>, data:WorldData):Void
```

Creates a node. Create the root with `depth = 0`: its children are then created automatically.

## Static variables

### FULL

```haxe
static var FULL:Bool
```

If `true`, all the nodes are subdivided whatever the camera distance (loads the whole world).

### DEBUG

```haxe
static var DEBUG:Bool
```

If `true`, displays the bounds of the nodes (locked leaves are shown in red).

## Variables

### data

```haxe
var data:WorldData
```

The parameters of this node.

### level

```haxe
var level(get, null):Int
```

The number of subdivision levels below this node: `0` for the leaves.

## Methods

### get_level

```haxe
function get_level():Int
```

### getChunkPos

```haxe
function getChunkPos(x:Float, y:Float, ?depth:Int = -1):h2d.col.Point
```

Returns the center of the chunk containing the world position (`x`, `y`) at the given depth (the leaf depth by default).

### containsAt

```haxe
function containsAt(x:Float, y:Float):Bool
```

Tells if the world position (`x`, `y`) is inside this node.

### requestCreateAt

```haxe
function requestCreateAt(x:Float, y:Float, lock:Bool):Void
```

Immediately subdivides the nodes containing the world position (`x`, `y`) down to the leaves.
- **param** `lock` If `true`, also locks these nodes so that they are kept whatever the camera distance.

### getChunkAtLock

```haxe
function getChunkAtLock(x:Float, y:Float):HierarchicalWorld
```

Returns the leaf node containing the world position (`x`, `y`), creating and locking it if needed.
Returns `null` if the position is outside this node.

### lockAt

```haxe
function lockAt(x:Float, y:Float):Void
```

Locks the existing nodes containing the world position (`x`, `y`): they are not removed when the camera moves away.

### unlockAt

```haxe
function unlockAt(x:Float, y:Float):Void
```

Unlocks the nodes containing the world position (`x`, `y`).

### unlockAll

```haxe
function unlockAll():Void
```

Unlocks this node and all its descendants.

### getRoot

```haxe
function getRoot():HierarchicalWorld
```

Returns the root node.

### refresh

```haxe
function refresh():Void
```

Removes the children nodes so that they are recreated (and repopulated with `onCreate`) when needed.

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
