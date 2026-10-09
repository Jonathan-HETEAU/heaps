# h3d.prim.Sphere

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Sphere.hx`](../../../../../h3d/prim/Sphere.hx)

Extends: [`h3d.prim.Polygon`](Polygon.md) → [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

## Constructor

### new

```haxe
function new(?ray:Float = 1., ?segsW:Int = 8, ?segsH:Int = 6, ?portion:Float = 1.):Void
```

## Static methods

### defaultUnitSphere

```haxe
static function defaultUnitSphere():Sphere
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

### addUVs

```haxe
override function addUVs():Void
```

## Inherited members

- from [`h3d.prim.Polygon`](Polygon.md): `lods`, `points`, `normals`, `tangents`, `uvs`, `idx`, `colors`, `getBounds`, `getBufferFormat`, `getCPUBuffer`, `alloc`, `unindex`, `translate`, `scale`, `addNormals`, `addTangents`, `addUVs`, `setUVCount`, `uvScale`, `triCount`, `vertexCount`, `getCollider`, `render`
- from [`h3d.prim.MeshPrimitive`](MeshPrimitive.md): `hasInput`, `resolveBuffer`, `removeBuffer`, `addBuffer`, `dispose`, `render`
- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
