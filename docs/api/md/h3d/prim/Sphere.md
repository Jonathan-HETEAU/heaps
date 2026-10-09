# h3d.prim.Sphere

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Sphere.hx`](../../../../../h3d/prim/Sphere.hx)

Extends: [`h3d.prim.Polygon`](Polygon.md) → [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

A UV sphere centered on the origin, made of `segsW` meridians and `segsH` parallels.

## Constructor

### new

```haxe
function new(?ray:Float = 1., ?segsW:Int = 8, ?segsH:Int = 6, ?portion:Float = 1.):Void
```

Creates a sphere. Call `addNormals()` and `addUVs()` if needed.
- **param** `ray` The radius.
- **param** `segsW` The number of horizontal segments.
- **param** `segsH` The number of vertical segments.
- **param** `portion` The vertical portion of the sphere built, from the top: `0.5` builds a hemisphere.

## Static methods

### defaultUnitSphere

```haxe
static function defaultUnitSphere():Sphere
```

Returns a shared sphere of radius 1 (16x16 segments) with normals and UVs.

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
