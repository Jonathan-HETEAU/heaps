# h3d.scene.SyncShaderInterface

**interface** · package [`h3d.scene`](README.md) · module `h3d.scene.Batcher` · source [`h3d/scene/Batcher.hx`](../../../../../h3d/scene/Batcher.hx)

The parameters of a `Batcher.syncShader`, filled by the batcher before running it. Implemented by shaders
extending `BaseSync`.

## Variables

### instancesData

```haxe
var instancesData(get, set):h3d.Buffer
```

The per instance data buffer.

### instanceStride

```haxe
var instanceStride(get, set):Int
```

The number of 4-floats vectors per instance in `instancesData`.

### modelViewOffset

```haxe
var modelViewOffset(get, set):Int
```

The offset of the transform matrix in the data of an instance.

### instanceCount

```haxe
var instanceCount(get, set):Int
```

The number of instances.

### syncIDs

```haxe
var syncIDs(get, set):h3d.Buffer
```

The sync IDs of the instances, given to `Batcher.emitInstance`.

## Methods

### hasSyncIDs

```haxe
function hasSyncIDs():Bool
```

Tells if the shader uses the sync IDs.
