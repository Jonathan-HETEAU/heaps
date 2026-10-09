# h3d.prim.ModelCache

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/ModelCache.hx`](../../../../../h3d/prim/ModelCache.hx)

## Constructor

### new

```haxe
function new():Void
```

## Methods

### dispose

```haxe
function dispose():Void
```

### loadLibrary

```haxe
function loadLibrary(res:hxd.res.Model):hxd.fmt.hmd.Library
```

### loadModel

```haxe
function loadModel(res:hxd.res.Model):h3d.scene.Object
```

### loadCollider

```haxe
function loadCollider(res:hxd.res.Model):Array<h3d.col.TransformCollider>
```

### loadTexture

```haxe
function loadTexture(model:hxd.res.Model, texturePath:String, ?async:Bool = false):h3d.mat.Texture
```

### loadAnimation

```haxe
function loadAnimation(anim:hxd.res.Model, ?name:String, ?forModel:hxd.res.Model):h3d.anim.Animation
```

### cleanModels

```haxe
function cleanModels(?lastUseTime:Int = 180):Void
```

### refreshLodConfig

```haxe
function refreshLodConfig():Void
```
