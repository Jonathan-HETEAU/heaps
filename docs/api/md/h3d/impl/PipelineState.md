# h3d.impl.PipelineState

**class** · package [`h3d.impl`](README.md) · module `h3d.impl.DirectXDriver` · source [`h3d/impl/DirectXDriver.hx`](../../../../../h3d/impl/DirectXDriver.hx) · available on hl/directx

The resources bound to a stage of the DirectX 11 pipeline.

## Constructor

### new

```haxe
function new(kind:PipelineKind):Void
```

Creates the state of a stage.

## Variables

### kind

```haxe
var kind:PipelineKind
```

The stage.

### samplers

```haxe
var samplers:hl.NativeArray<dx.SamplerState>
```

The bound sampler states.

### samplerBits

```haxe
var samplerBits:Array<Int>
```

The settings of the bound samplers, to avoid redundant changes.

### resources

```haxe
var resources:hl.NativeArray<dx.ShaderResourceView>
```

The bound textures.

### buffers

```haxe
var buffers:hl.NativeArray<dx.Resource>
```

The bound constant buffers.
