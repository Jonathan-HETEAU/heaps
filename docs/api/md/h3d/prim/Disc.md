# h3d.prim.Disc

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Disc.hx`](../../../../../h3d/prim/Disc.hx)

Extends: [`h3d.prim.Polygon`](Polygon.md) → [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

A flat disc (or disc sector) in the XY plane, centered on the origin.

## Constructor

### new

```haxe
function new(?radius:Float = 0.5, ?segments:Int = 8, ?thetaStart:Float = 0.0, ?thetaLength:Float):Void
```

Creates a disc.
- **param** `thetaStart` The start angle of the sector, in radians.
- **param** `thetaLength` The angle of the sector, in radians (a full disc by default).

## Static methods

### defaultUnitDisc

```haxe
static function defaultUnitDisc():Disc
```

* Get a default unit Disc with
* radius = 0.5, segments = 8, thetaStart = 0.0, thetaLength = Math.PI * 2
* and add UVs to it. If it has not be cached, it is cached and subsequent
* calls to this method will return Disc from cache.

## Variables

### radius

```haxe
var radius(default, null):Float
```

The radius.

### segments

```haxe
var segments(default, null):Int
```

The number of segments of the border.

## Methods

### addUVs

```haxe
override function addUVs():Void
```

## Inherited members

- from [`h3d.prim.Polygon`](Polygon.md): `lods`, `points`, `normals`, `tangents`, `uvs`, `idx`, `colors`, `getBounds`, `getBufferFormat`, `getCPUBuffer`, `alloc`, `unindex`, `translate`, `scale`, `addNormals`, `addTangents`, `addUVs`, `setUVCount`, `uvScale`, `triCount`, `vertexCount`, `getCollider`, `render`
- from [`h3d.prim.MeshPrimitive`](MeshPrimitive.md): `hasInput`, `resolveBuffer`, `removeBuffer`, `addBuffer`, `dispose`, `render`
- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
