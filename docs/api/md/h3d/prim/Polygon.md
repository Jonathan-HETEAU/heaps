# h3d.prim.Polygon

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Polygon.hx`](../../../../../h3d/prim/Polygon.hx)

Extends: [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

Subclasses: [`h3d.prim.Capsule`](Capsule.md), [`h3d.prim.Cube`](Cube.md), [`h3d.prim.Disc`](Disc.md), [`h3d.prim.GeoSphere`](GeoSphere.md), [`h3d.prim.Grid`](Grid.md), [`h3d.prim.Sphere`](Sphere.md)

A primitive built from arrays of points, with optional indexes, normals, tangents, UVs and colors, kept on the CPU
until uploaded. It is the base of the procedural primitives (`Cube`, `Sphere`, `Disc`...).

```haxe
var p = new h3d.prim.Polygon([new h3d.col.Point(0, 0, 0), new h3d.col.Point(1, 0, 0), new h3d.col.Point(0, 1, 0)]);
p.addNormals();
p.addUVs();
new h3d.scene.Mesh(p, s3d);
```

## Constructor

### new

```haxe
function new(points:Array<h3d.col.Point>, ?idx:hxd.IndexBuffer):Void
```

Creates a polygon from points and optional triangle indexes.

## Variables

### lods

```haxe
var lods:Array<PolygonLod>
```

The lower levels of detail (used by `BatchPrimitive`).

### points

```haxe
var points:Array<h3d.col.Point>
```

The vertex positions.

### normals

```haxe
var normals:Array<h3d.col.Point>
```

The vertex normals, or `null`. See `addNormals`.

### tangents

```haxe
var tangents:Array<h3d.col.Point>
```

The vertex tangents, or `null`. See `addTangents`.

### uvs

```haxe
var uvs:Array<UV>
```

The vertex texture coordinates, or `null`. See `addUVs`.

### idx

```haxe
var idx:hxd.IndexBuffer
```

The triangle indexes, or `null` if every 3 points form a triangle.

### colors

```haxe
var colors:Array<h3d.col.Point>
```

The vertex colors (RGB), or `null`.

## Methods

### getBounds

```haxe
override function getBounds():h3d.col.Bounds
```

### getBufferFormat

```haxe
function getBufferFormat():hxd.BufferFormat
```

Returns the vertex format matching the available data (positions, normals, tangents, UVs, colors).

### getCPUBuffer

```haxe
function getCPUBuffer():hxd.FloatBuffer
```

Returns the vertex data interleaved in the `getBufferFormat` format.

### alloc

```haxe
override function alloc(engine:h3d.Engine):Void
```

### unindex

```haxe
function unindex():Void
```

Duplicates the shared points so that each triangle has its own 3 vertexes (needed for flat normals or per-face UVs).

### translate

```haxe
function translate(dx:Float, dy:Float, dz:Float):Void
```

Moves the points.

### scale

```haxe
function scale(s:Float):Void
```

Scales the points uniformly.

### addNormals

```haxe
function addNormals():Void
```

Computes per-point normals from the triangles.

### addTangents

```haxe
function addTangents():Void
```

Computes per-point tangents from the triangles and UVs (needed by normal maps).

### addUVs

```haxe
function addUVs():Void
```

Adds texture coordinates. The base implementation uses the X and Y of the points; procedural primitives provide better ones.

### setUVCount

```haxe
function setUVCount(count:Int):Void
```

Add additional Uv sets that are a copy of the base uv set

### uvScale

```haxe
function uvScale(su:Float, sv:Float):Void
```

Multiplies the texture coordinates.

### triCount

```haxe
override function triCount():Int
```

### vertexCount

```haxe
override function vertexCount():Int
```

### getCollider

```haxe
override function getCollider():h3d.col.Collider
```

### render

```haxe
override function render(engine:h3d.Engine):Void
```

## Inherited members

- from [`h3d.prim.MeshPrimitive`](MeshPrimitive.md): `hasInput`, `resolveBuffer`, `removeBuffer`, `addBuffer`, `dispose`, `render`
- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
