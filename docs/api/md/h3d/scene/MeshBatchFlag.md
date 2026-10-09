# h3d.scene.MeshBatchFlag

**enum** · package [`h3d.scene`](README.md) · module `h3d.scene.MeshBatch` · source [`h3d/scene/MeshBatch.hx`](../../../../../h3d/scene/MeshBatch.hx)

Options of a `MeshBatch`, set with its `enable*` methods.

## Constructors

### EnableResizeDown

```haxe
EnableResizeDown
```

Shrinks the instance buffers when much fewer instances are emitted.

### EnableGpuUpdate

```haxe
EnableGpuUpdate
```

The per instance parameters can be written by compute shaders. See `MeshBatch.enableGpuUpdate`.

### EnableStorageBuffer

```haxe
EnableStorageBuffer
```

The per instance parameters are stored in a storage buffer. See `MeshBatch.enableStorageBuffer`.

### HasPrimitiveOffset

```haxe
HasPrimitiveOffset
```

Internal: instances store an offset in the primitive (used with sub meshes).

### EnableCpuLod

```haxe
EnableCpuLod
```

The level of detail is chosen per instance on the CPU. See `MeshBatch.enableCpuLod`.

### ForceGpuUpdate

```haxe
ForceGpuUpdate
```

The per instance parameters are only written by compute shaders. See `MeshBatch.forceGpuUpdate`.

### EnableSubMesh

```haxe
EnableSubMesh
```

Instances draw parts of the primitive. See `MeshBatch.enableSubMesh`.

### EnablePerInstanceTexture

```haxe
EnablePerInstanceTexture
```

Instances can use different textures (bindless). See `MeshBatch.enablePerInstanceTexture`.
