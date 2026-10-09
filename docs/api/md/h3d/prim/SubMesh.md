# h3d.prim.SubMesh

**class** · package [`h3d.prim`](README.md) · module `h3d.prim.BatchPrimitive` · source [`h3d/prim/BatchPrimitive.hx`](../../../../../h3d/prim/BatchPrimitive.hx)

A model packed in a `BatchPrimitive`.

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

The index ranges of the model, one per material.

### subPartStart

```haxe
var subPartStart:Int
```

The index of the first sub part of the model in the GPU sub part infos.

### bounds

```haxe
var bounds:h3d.col.Bounds
```

The local bounds of the model.

### lodCount

```haxe
var lodCount:Int
```

The number of levels of detail.

### lodConfig

```haxe
var lodConfig:Array<Float>
```

The screen ratios at which each level of detail is selected.

### cullingScreenRatio

```haxe
var cullingScreenRatio:Float
```

The screen ratio under which the model is not drawn.
