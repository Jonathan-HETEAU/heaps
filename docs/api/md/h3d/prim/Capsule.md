# h3d.prim.Capsule

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Capsule.hx`](../../../../../h3d/prim/Capsule.hx)

Extends: [`h3d.prim.Polygon`](Polygon.md) → [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

A capsule centered on the origin: a cylinder of `length` along `axis`, capped by two half spheres of radius `ray`.

## Constructor

### new

```haxe
function new(?ray:Float = 1., ?length:Float = 1., ?segs:Int = 8, ?axis:Axis = X):Void
```

Creates a capsule.
- **param** `ray` The radius.
- **param** `length` The length of the cylindrical part.
- **param** `segs` The number of segments around the axis.
- **param** `axis` The axis of the capsule.

## Static methods

### defaultUnitCapsule

```haxe
static function defaultUnitCapsule(?axis:Axis = X):Capsule
```

Returns a shared capsule of radius 1 and length 1 along `axis`.

## Methods

### getCollider

```haxe
override function getCollider():h3d.col.Collider
```

### addNormals

```haxe
override function addNormals():Void
```

## Inherited members

- from [`h3d.prim.Polygon`](Polygon.md): `lods`, `points`, `normals`, `tangents`, `uvs`, `idx`, `colors`, `getBounds`, `getBufferFormat`, `getCPUBuffer`, `alloc`, `unindex`, `translate`, `scale`, `addNormals`, `addTangents`, `addUVs`, `setUVCount`, `uvScale`, `triCount`, `vertexCount`, `getCollider`, `render`
- from [`h3d.prim.MeshPrimitive`](MeshPrimitive.md): `hasInput`, `resolveBuffer`, `removeBuffer`, `addBuffer`, `dispose`, `render`
- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
