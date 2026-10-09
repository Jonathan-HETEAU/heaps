# h3d.scene.ObjectInstance

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.Batcher` · source [`h3d/scene/Batcher.hx`](../../../../../h3d/scene/Batcher.hx)

A model registered in a `Batcher` with `Batcher.addInstance`, which can then be emitted many times.

## Variables

### meshes

```haxe
var meshes:Array<h3d.scene._Batcher.MeshInstance>
```

The meshes of the model, with their transform relative to the model root.

### materials

```haxe
var materials:Array<h3d.scene._Batcher.MaterialInstance>
```

The materials of the meshes.

### draws

```haxe
var draws:Array<h3d.scene._Batcher.DrawInstance>
```

The draw passes of the materials.
