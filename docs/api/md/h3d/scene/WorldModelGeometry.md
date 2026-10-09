# h3d.scene.WorldModelGeometry

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.World` · source [`h3d/scene/World.hx`](../../../../../h3d/scene/World.hx)

A part of a `WorldModel` using one material.

## Constructor

### new

```haxe
function new(m:WorldMaterial):Void
```

Creates a geometry using material `m`.

## Variables

### m

```haxe
var m:WorldMaterial
```

The material of this part.

### startVertex

```haxe
var startVertex:Int
```

The first vertex of the part in the model buffer.

### startIndex

```haxe
var startIndex:Int
```

The first index of the part in the model index buffer.

### vertexCount

```haxe
var vertexCount:Int
```

The number of vertexes of the part.

### indexCount

```haxe
var indexCount:Int
```

The number of indexes of the part.
