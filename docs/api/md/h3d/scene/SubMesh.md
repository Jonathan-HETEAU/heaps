# h3d.scene.SubMesh

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.MeshBatch` · source [`h3d/scene/MeshBatch.hx`](../../../../../h3d/scene/MeshBatch.hx)

A part of the primitive of a `MeshBatch` which can be drawn by an instance (see `MeshBatch.primitiveSubMeshes`).

## Constructor

### new

```haxe
function new():Void
```

Creates an empty sub mesh.

## Variables

### subParts

```haxe
var subParts:Array<SubPart>
```

The index ranges of the sub mesh, one per material.

### bounds

```haxe
var bounds:h3d.col.Bounds
```

The local bounds of the sub mesh.

### lodCount

```haxe
var lodCount:Int
```

The number of levels of detail of the sub mesh.

### lodConfig

```haxe
var lodConfig:Array<Float>
```

The screen ratios at which each level of detail is selected.
