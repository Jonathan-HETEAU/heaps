# h3d.scene.World

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/World.hx`](../../../../../h3d/scene/World.hx)

Extends: [`h3d.scene.Object`](Object.md)

A static world made of many model instances, split in square chunks on the XY plane.

The instances of each chunk are merged in a few big meshes (one per material) when the chunk becomes visible,
and their textures packed in big textures, which makes drawing many static models fast.
The meshes of the least recently visible chunks are released when GPU memory is needed (see `garbage`).

```haxe
var world = new h3d.scene.World(64, s3d);
var tree = world.loadModel(hxd.Res.tree);
for( i in 0...1000 )
    world.add(tree, Math.random() * 512, Math.random() * 512, 0, 1, Math.random() * Math.PI * 2);
world.done();
```

## Constructor

### new

```haxe
function new(chunkSize:Int, parent:Null<Object>, ?autoCollect:Bool = true):Void
```

Creates an empty world.
- **param** `chunkSize` The size of a chunk, in world units.
- **param** `parent` The parent object.
- **param** `autoCollect` If `true`, the world registers `garbage` as the GPU memory garbage collector of the engine.

## Variables

### chunkSize

```haxe
var chunkSize(default, null):Int
```

The size of a chunk, in world units.

### enableSpecular

```haxe
var enableSpecular:Bool
```

For each texture loaded, will call resolveSpecularTexture and have separate spec texture.

### enableNormalMaps

```haxe
var enableNormalMaps:Bool
```

For each texture loaded, will call resolveNormalMap and have separate normal texture.

### specularInAlpha

```haxe
var specularInAlpha:Bool
```

When enableSpecular=true, will store the specular value in the alpha channel instead of a different texture.
This will erase alpha value of transparent textures, so should only be used if specular is only on opaque models.

### wrap

```haxe
var wrap(default, set):h3d.mat.Wrap
```

The wrap mode of the big textures.

## Methods

### set_wrap

```haxe
function set_wrap(v:h3d.mat.Wrap):h3d.mat.Wrap
```

### garbage

```haxe
function garbage():Void
```

Releases the meshes of the least recently visible chunk, which are rebuilt when it becomes visible again.

### done

```haxe
function done():Void
```

Finalizes the big textures. Call it after loading all the models.

### loadModel

```haxe
function loadModel(r:hxd.res.Model, ?filter:() -> Bool):WorldModel
```

Loads a model and its textures so that it can be added to the world.
- **param** `filter` If set, only the parts of the model for which it returns `true` are loaded.

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

Releases the meshes of all the chunks after the GPU context was lost. They are rebuilt when visible.

### add

```haxe
function add(model:WorldModel, x:Float, y:Float, z:Float, ?scale:Float = 1., ?rotation:Float = 0.):Void
```

Adds an instance of `model` at the given world position.
- **param** `scale` A uniform scale.
- **param** `rotation` A rotation around the Z axis, in radians.

### addTransform

```haxe
function addTransform(model:WorldModel, mat:h3d.Matrix):Void
```

Adds an instance of `model` with any world transform (slower to merge than `add`).

### getWorldBounds

```haxe
function getWorldBounds(?b:h3d.col.Bounds):Null<h3d.col.Bounds>
```

Returns the bounds of all the instances of the world.
- **param** `b` An optional bounds to add the result to.

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
