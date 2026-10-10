# h3d.impl.PipelineCache

**abstract** · package [`h3d.impl`](README.md) · source [`h3d/impl/PipelineCache.hx`](../../../../../h3d/impl/PipelineCache.hx) · available on hl/sdl, hl/directx

Type parameters: `<T>`

The pipeline states of a shader, by signature hash.

Underlying type: `Map<Int, hl.NativeArray<CachedPipeline<h3d.impl.PipelineCache.T>>>`

## Methods

### diff

```haxe
function diff(cp:CachedPipeline<h3d.impl.PipelineCache.T>, ?max:Int = 3):String
```

Returns the differences between the entry and the `max` closest other entries, to understand why new pipelines are created.
