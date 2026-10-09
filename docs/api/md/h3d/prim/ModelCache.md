# h3d.prim.ModelCache

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/ModelCache.hx`](../../../../../h3d/prim/ModelCache.hx)

Loads and caches models, their textures and animations, so that the same model file is only parsed once.

```haxe
var cache = new h3d.prim.ModelCache();
var obj = cache.loadModel(hxd.Res.character);
s3d.addChild(obj);
obj.playAnimation(cache.loadAnimation(hxd.Res.character_walk));
```

## Constructor

### new

```haxe
function new():Void
```

Creates an empty cache.

## Methods

### dispose

```haxe
function dispose():Void
```

Disposes all the cached models and textures.

### loadLibrary

```haxe
function loadLibrary(res:hxd.res.Model):hxd.fmt.hmd.Library
```

Returns the parsed model file (cached).

### loadModel

```haxe
function loadModel(res:hxd.res.Model):h3d.scene.Object
```

Creates a new object tree (meshes, skins, joints) from the model. Geometries and textures are shared between the
objects created from the same model.

### loadCollider

```haxe
function loadCollider(res:hxd.res.Model):Array<h3d.col.TransformCollider>
```

Returns the colliders of the geometries of the model, in model space (cached).

### loadTexture

```haxe
function loadTexture(model:hxd.res.Model, texturePath:String, ?async:Bool = false):h3d.mat.Texture
```

Loads a texture referenced by a model (cached). If not found at its path, it is searched in the model directory.
- **param** `model` The model referencing the texture, or `null` for a texture not related to a model.
- **param** `async` If `true`, the texture is loaded asynchronously when possible.

### loadAnimation

```haxe
function loadAnimation(anim:hxd.res.Model, ?name:String, ?forModel:hxd.res.Model):h3d.anim.Animation
```

Loads an animation from a model file (cached), with the events of its `.props` file.
- **param** `name` The name of the animation in the file, or `null` for the first one.
- **param** `forModel` The model the animation is played on, whose `.props` file events are also loaded.

### cleanModels

```haxe
function cleanModels(?lastUseTime:Int = 180):Void
```

Disposes the models not loaded during the last `lastUseTime` seconds and not used by any object anymore.

### refreshLodConfig

```haxe
function refreshLodConfig():Void
```

Resets the level of detail settings of the cached geometries, so that they are read again.
