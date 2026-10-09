# h3d.scene.BatcherFlags

**enum** · package [`h3d.scene`](README.md) · module `h3d.scene.Batcher` · source [`h3d/scene/Batcher.hx`](../../../../../h3d/scene/Batcher.hx)

Options of a `Batcher`.

## Constructors

### ManualEmitGPU

```haxe
ManualEmitGPU
```

The compute passes building the draw commands are not run automatically: call `Batcher.syncGPU` and
`Batcher.emitGPU` yourself.
