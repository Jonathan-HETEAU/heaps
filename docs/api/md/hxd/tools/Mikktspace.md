# hxd.tools.Mikktspace

**class** · package [`hxd.tools`](README.md) · source [`hxd/tools/Mikktspace.hx`](../../../../../hxd/tools/Mikktspace.hx) · available on hl/sdl, hl/directx

Computes the tangents of a mesh with the MikkTSpace algorithm (HashLink only), the standard used by normal map bakers.
Set the input buffers and positions, then call `compute`.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty computation.

## Variables

### buffer

```haxe
var buffer:hl.BytesAccess<Single>
```

The vertex data.

### stride

```haxe
var stride:Int
```

The number of floats per vertex in `buffer`.

### xPos

```haxe
var xPos:Int
```

The position of the vertex position in a vertex.

### normalPos

```haxe
var normalPos:Int
```

The position of the normal in a vertex.

### uvPos

```haxe
var uvPos:Int
```

The position of the UV in a vertex.

### tangents

```haxe
var tangents:hl.BytesAccess<Single>
```

The output tangents.

### tangentStride

```haxe
var tangentStride:Int
```

The number of floats per vertex in `tangents`.

### tangentPos

```haxe
var tangentPos:Int
```

The position of the tangent in a vertex of `tangents`.

### indexes

```haxe
var indexes:hl.BytesAccess<Int>
```

The triangle indexes.

### indices

```haxe
var indices:Int
```

The number of indexes.

## Methods

### compute

```haxe
function compute(?threshold:Float = 180.):Void
```

Computes the tangents. `threshold` is the angle (in degrees) under which the tangents of adjacent faces are merged.
