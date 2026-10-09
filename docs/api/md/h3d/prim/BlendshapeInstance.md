# h3d.prim.BlendshapeInstance

**class** · package [`h3d.prim`](README.md) · module `h3d.prim.Blendshape` · source [`h3d/prim/Blendshape.hx`](../../../../../h3d/prim/Blendshape.hx)

The blend shape weights of a mesh using a `Blendshape` geometry, applied on the GPU. See `h3d.scene.Mesh.setBlendshapeWeight`.

## Constructor

### new

```haxe
function new(blendshape:Blendshape, mesh:h3d.scene.Mesh):Void
```

Creates the instance of `blendshape` for `mesh`.

## Methods

### setBlendshapeWeight

```haxe
function setBlendshapeWeight(name:String, weight:Float):Void
```

Sets the weight of the blend shape `name`.

### setBlendshapeWeights

```haxe
function setBlendshapeWeights(weights:Array<Float>):Void
```

Sets the weights of the blend shapes, by index.

### uploadBlendshapeBytes _(js only)_

```haxe
function uploadBlendshapeBytes(weights:Array<Float>):Void
```

WebGL: computes the blended geometry on the CPU and uploads it.

### alloc

```haxe
function alloc():Void
```

Allocates the GPU resources.

### dispose

```haxe
function dispose():Void
```

Releases the GPU resources.
