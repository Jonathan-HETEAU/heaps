# hxd.fmt.hmd.ConvexHullsCollider

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

Extends: [`hxd.fmt.hmd.Collider`](Collider.md)

A collider made of convex hulls.

## Constructor

### new

```haxe
function new():Void
```

Creates the collider.

## Static variables

### UNITS

```haxe
static final UNITS:Map<String, Float>
```

The size of the length units, in meters.

## Static methods

### buildConvexHulls

```haxe
static function buildConvexHulls(vertices:Array<Float>, indexes:Array<Int>, params:ConvexHullParams):Array<{ vertices:Array<Float>, indexes:Array<Int> }>
```

Decomposes a mesh (3 floats per vertex, 3 indexes per triangle) into convex hulls, with the `meshTools` command or the V-HACD library.

### scale

```haxe
static function scale(vertices:Array<Float>, indexes:Array<Int>, f:Float):{ vertices:Array<Float>, indexes:Array<Int> }
```

Returns a copy of the mesh scaled by `f`.

## Variables

### vertexCounts

```haxe
var vertexCounts:Array<Int>
```

The number of vertices of each hull.

### vertexPosition

```haxe
var vertexPosition:DataPosition
```

The position of the vertices in the data.

### indexCounts

```haxe
var indexCounts:Array<Int>
```

The number of indexes of each hull.

### indexPosition

```haxe
var indexPosition:DataPosition
```

The position of the indexes in the data.

## Inherited members

- from [`hxd.fmt.hmd.Collider`](Collider.md): `type`
