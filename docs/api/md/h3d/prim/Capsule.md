# h3d.prim.Capsule

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Capsule.hx`](../../../../../h3d/prim/Capsule.hx)

Extends: [`h3d.prim.Polygon`](Polygon.md) → [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

## Constructor

### new

```haxe
function new(?ray:Float = 1., ?length:Float = 1., ?segs:Int = 8, ?axis:Axis = X):Void
```

## Static methods

### defaultUnitCapsule

```haxe
static function defaultUnitCapsule(?axis:Axis = X):Capsule
```

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
