# h3d.impl.CachedPipeline

**class** · package [`h3d.impl`](README.md) · module `h3d.impl.PipelineCache` · source [`h3d/impl/PipelineCache.hx`](../../../../../h3d/impl/PipelineCache.hx) · available on hl/sdl, hl/directx

Type parameters: `<T>`

A pipeline state cached for a signature (render states, render target formats and vertex layout).

## Constructor

### new

```haxe
function new():Void
```

Creates an empty entry.

## Variables

### bytes

```haxe
var bytes:h3d.impl._PipelineCache.Bytes
```

The signature of the pipeline.

### size

```haxe
var size:Int
```

The size of the signature, in bytes.

### pipeline

```haxe
var pipeline:h3d.impl.CachedPipeline.T
```

The native pipeline state, created by the driver.

## Methods

### getFields

```haxe
function getFields():Array<{ value:String, name:String }>
```

Returns the decoded fields of the signature, for debugging.

### toString

```haxe
function toString():String
```

Returns the decoded fields of the signature.
