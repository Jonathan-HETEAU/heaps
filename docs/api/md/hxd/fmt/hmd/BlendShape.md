# hxd.fmt.hmd.BlendShape

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

A blend shape (morph target) of a geometry.

## Constructor

### new

```haxe
function new():Void
```

Creates a blend shape.

## Variables

### name

```haxe
var name:String
```

The name of the shape.

### geom

```haxe
var geom:Index<Geometry>
```

The geometry modified by the shape.

### vertexCount

```haxe
var vertexCount:Int
```

The number of vertices of the shape.

### vertexFormat

```haxe
var vertexFormat:hxd.BufferFormat
```

The format of the vertices of the shape.

### vertexPosition

```haxe
var vertexPosition:DataPosition
```

The position of the vertices of the shape in the data.

### indexCount

```haxe
var indexCount:DataPosition
```

The number of offset vertices of the shape.

### remapPosition

```haxe
var remapPosition:DataPosition
```

The position in the data of the geometry vertices moved by each offset vertex (a list per offset vertex, its last index having the bit 31 set).
