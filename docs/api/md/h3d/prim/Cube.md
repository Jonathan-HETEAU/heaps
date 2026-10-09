# h3d.prim.Cube

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Cube.hx`](../../../../../h3d/prim/Cube.hx)

Extends: [`h3d.prim.Polygon`](Polygon.md) → [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

## Constructor

### new

```haxe
function new(?x:Float = 1., ?y:Float = 1., ?z:Float = 1., ?centered:Bool = false):Void
```

## Static methods

### defaultUnitCube

```haxe
static function defaultUnitCube():Cube
```

## Methods

### addUVs

```haxe
override function addUVs():Void
```

### addUniformUVs

```haxe
function addUniformUVs(?scale:Float = 1.):Void
```

### getCollider

```haxe
override function getCollider():h3d.col.Collider
```

## Inherited members

- from [`h3d.prim.Polygon`](Polygon.md): `lods`, `points`, `normals`, `tangents`, `uvs`, `idx`, `colors`, `getBounds`, `getBufferFormat`, `getCPUBuffer`, `alloc`, `unindex`, `translate`, `scale`, `addNormals`, `addTangents`, `addUVs`, `setUVCount`, `uvScale`, `triCount`, `vertexCount`, `getCollider`, `render`
- from [`h3d.prim.MeshPrimitive`](MeshPrimitive.md): `hasInput`, `resolveBuffer`, `removeBuffer`, `addBuffer`, `dispose`, `render`
- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
