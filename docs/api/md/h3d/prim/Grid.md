# h3d.prim.Grid

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Grid.hx`](../../../../../h3d/prim/Grid.hx)

Extends: [`h3d.prim.Polygon`](Polygon.md) → [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

A flat grid in the XY plane of `width` x `height` cells, starting at the origin.

## Constructor

### new

```haxe
function new(width:Int, height:Int, ?cellWidth:Float = 1., ?cellHeight:Float = 1.):Void
```

Creates a grid.

## Variables

### width

```haxe
var width(default, null):Int
```

The number of cells along X.

### height

```haxe
var height(default, null):Int
```

The number of cells along Y.

### cellWidth

```haxe
var cellWidth(default, null):Float
```

The size of a cell along X.

### cellHeight

```haxe
var cellHeight(default, null):Float
```

The size of a cell along Y.

## Methods

### addUVs

```haxe
override function addUVs():Void
```

## Inherited members

- from [`h3d.prim.Polygon`](Polygon.md): `lods`, `points`, `normals`, `tangents`, `uvs`, `idx`, `colors`, `getBounds`, `getBufferFormat`, `getCPUBuffer`, `alloc`, `unindex`, `translate`, `scale`, `addNormals`, `addTangents`, `addUVs`, `setUVCount`, `uvScale`, `triCount`, `vertexCount`, `getCollider`, `render`
- from [`h3d.prim.MeshPrimitive`](MeshPrimitive.md): `hasInput`, `resolveBuffer`, `removeBuffer`, `addBuffer`, `dispose`, `render`
- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
