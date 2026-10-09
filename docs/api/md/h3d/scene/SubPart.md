# h3d.scene.SubPart

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.MeshBatch` · source [`h3d/scene/MeshBatch.hx`](../../../../../h3d/scene/MeshBatch.hx)

An index range of the primitive, for one material and its levels of detail.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty index range.

## Variables

### indexStart

```haxe
var indexStart:Int
```

The first index of the range.

### indexCount

```haxe
var indexCount:Int
```

The number of indexes of the range.

### lodIndexStart

```haxe
var lodIndexStart:Array<Int>
```

The first index of the range for each level of detail.

### lodIndexCount

```haxe
var lodIndexCount:Array<Int>
```

The number of indexes of the range for each level of detail.

### matIndex

```haxe
var matIndex:Int
```

The index of the material drawing this range.
