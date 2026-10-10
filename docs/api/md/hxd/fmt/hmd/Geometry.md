# hxd.fmt.hmd.Geometry

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

The vertex and index data of a mesh, split by material.

## Constructor

### new

```haxe
function new():Void
```

Creates a geometry.

## Variables

### props

```haxe
var props:Properties
```

The properties of the geometry.

### vertexCount

```haxe
var vertexCount:Int
```

The number of vertices.

### vertexFormat

```haxe
var vertexFormat:hxd.BufferFormat
```

The format of the vertices.

### vertexPosition

```haxe
var vertexPosition:DataPosition
```

The position of the vertices in the data.

### indexCount

```haxe
var indexCount(get, null):Int
```

The total number of indexes.

### indexCounts

```haxe
var indexCounts:Array<Int>
```

The number of indexes of each material.

### indexPosition

```haxe
var indexPosition:DataPosition
```

The position of the indexes in the data.

### bounds

```haxe
var bounds:h3d.col.Bounds
```

The bounds of the vertices.
