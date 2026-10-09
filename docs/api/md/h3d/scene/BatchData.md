# h3d.scene.BatchData

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.MeshBatch` · source [`h3d/scene/MeshBatch.hx`](../../../../../h3d/scene/MeshBatch.hx)

The instance data of one material pass of a `MeshBatch`.

## Constructor

### new

```haxe
function new():Void
```

Creates empty pass data.

## Variables

### paramsCount

```haxe
var paramsCount:Int
```

The number of 4-floats vectors of parameters per instance.

### maxInstance

```haxe
var maxInstance:Int
```

The maximum number of instances per buffer.

### matIndex

```haxe
var matIndex:Int
```

The index of the material of the batch this pass belongs to.

### indirectCallBuffers

```haxe
var indirectCallBuffers:Array<h3d.impl.InstanceBuffer>
```

The indirect draw commands, one per buffer.

### buffers

```haxe
var buffers:Array<h3d.Buffer>
```

The GPU buffers storing the per instance parameters.

### bufferFormat

```haxe
var bufferFormat:hxd.BufferFormat
```

The format of the per instance data.

### textureHandles

```haxe
var textureHandles:Array<h3d.mat.TextureHandle>
```

The bindless texture handles used by the instances (with `enablePerInstanceTexture`).

### data

```haxe
var data:hxd.FloatBuffer
```

The per instance parameters filled on the CPU before upload.

### params

```haxe
var params:hxsl.AllocParam
```

The shader parameters copied for each instance.

### shader

```haxe
var shader:hxsl.BatchShader
```

The generated shader reading the per instance parameters.

### shaders

```haxe
var shaders:Array<hxsl.Shader>
```

The shaders whose parameters are stored per instance.

### pass

```haxe
var pass:h3d.mat.Pass
```

The material pass drawn.

### next

```haxe
var next:BatchData
```

The next pass in the list.

## Methods

### clean

```haxe
function clean():Void
```

Releases the buffers and removes the generated shader from the pass.
