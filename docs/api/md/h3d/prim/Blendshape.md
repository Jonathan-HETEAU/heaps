# h3d.prim.Blendshape

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Blendshape.hx`](../../../../../h3d/prim/Blendshape.hx)

The blend shapes (morph targets) of a `HMDModel`: alternative vertex positions and normals that are blended with the
base geometry according to weights.

## Constructor

### new

```haxe
function new(hmdModel:HMDModel):Void
```

Creates the blend shapes of a model geometry.

## Variables

### refCount

```haxe
var refCount(default, null):Int
```

The number of users of the GPU data.

## Methods

### incref

```haxe
function incref():Void
```

Increases the reference count.

### decref

```haxe
function decref():Void
```

Decreases the reference count, disposing the GPU data when it reaches 0.

### dispose

```haxe
function dispose():Void
```

Releases the GPU data.

### alloc

```haxe
function alloc():Void
```

Uploads the blend shape offsets to the GPU.

### getBlendShapeIndex

```haxe
function getBlendShapeIndex(name:String):Int
```

Returns the index of the blend shape `name`, or `-1`.

### getBlendshapeName

```haxe
function getBlendshapeName(idx:Int):String
```

Returns the name of the blend shape `idx`.

### getBlendshapeCount

```haxe
function getBlendshapeCount():Int
```

Returns the number of blend shapes.

### getBlendshapeInstance

```haxe
function getBlendshapeInstance(mesh:h3d.scene.Mesh):BlendshapeInstance
```

Creates the weights instance of a mesh.
