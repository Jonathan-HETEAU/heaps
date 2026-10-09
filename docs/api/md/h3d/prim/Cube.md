# h3d.prim.Cube

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Cube.hx`](../../../../../h3d/prim/Cube.hx)

Extends: [`h3d.prim.Polygon`](Polygon.md) → [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

A box of `x` by `y` by `z` units, from the origin (or centered on it). Call `addNormals()` and `addUVs()` if needed.

```haxe
var cube = new h3d.prim.Cube(1, 1, 1, true);
cube.addNormals();
cube.addUVs();
new h3d.scene.Mesh(cube, s3d);
```

## Constructor

### new

```haxe
function new(?x:Float = 1., ?y:Float = 1., ?z:Float = 1., ?centered:Bool = false):Void
```

Creates a box.
- **param** `centered` If `true`, the box is centered on the origin, otherwise it goes from `0` to the sizes.

## Static methods

### defaultUnitCube

```haxe
static function defaultUnitCube():Cube
```

Returns a shared unit cube centered on the origin, with normals, uniform UVs and tangents.

## Methods

### addUVs

```haxe
override function addUVs():Void
```

### addUniformUVs

```haxe
function addUniformUVs(?scale:Float = 1.):Void
```

Adds UVs proportional to the face sizes (a texture keeps the same scale on all faces), multiplied by `scale`.

### getCollider

```haxe
override function getCollider():h3d.col.Collider
```

## Inherited members

- from [`h3d.prim.Polygon`](Polygon.md): `lods`, `points`, `normals`, `tangents`, `uvs`, `idx`, `colors`, `getBounds`, `getBufferFormat`, `getCPUBuffer`, `alloc`, `unindex`, `translate`, `scale`, `addNormals`, `addTangents`, `addUVs`, `setUVCount`, `uvScale`, `triCount`, `vertexCount`, `getCollider`, `render`
- from [`h3d.prim.MeshPrimitive`](MeshPrimitive.md): `hasInput`, `resolveBuffer`, `removeBuffer`, `addBuffer`, `dispose`, `render`
- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
