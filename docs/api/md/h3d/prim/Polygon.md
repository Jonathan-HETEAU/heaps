# h3d.prim.Polygon

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Polygon.hx`](../../../../../h3d/prim/Polygon.hx)

Extends: [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

Subclasses: [`h3d.prim.Capsule`](Capsule.md), [`h3d.prim.Cube`](Cube.md), [`h3d.prim.Disc`](Disc.md), [`h3d.prim.GeoSphere`](GeoSphere.md), [`h3d.prim.Grid`](Grid.md), [`h3d.prim.Sphere`](Sphere.md)

## Constructor

### new

```haxe
function new(points:Array<h3d.col.Point>, ?idx:hxd.IndexBuffer):Void
```

## Variables

### lods

```haxe
var lods:Array<PolygonLod>
```

### points

```haxe
var points:Array<h3d.col.Point>
```

### normals

```haxe
var normals:Array<h3d.col.Point>
```

### tangents

```haxe
var tangents:Array<h3d.col.Point>
```

### uvs

```haxe
var uvs:Array<UV>
```

### idx

```haxe
var idx:hxd.IndexBuffer
```

### colors

```haxe
var colors:Array<h3d.col.Point>
```

## Methods

### getBounds

```haxe
override function getBounds():h3d.col.Bounds
```

### getBufferFormat

```haxe
function getBufferFormat():hxd.BufferFormat
```

### getCPUBuffer

```haxe
function getCPUBuffer():hxd.FloatBuffer
```

### alloc

```haxe
override function alloc(engine:h3d.Engine):Void
```

### unindex

```haxe
function unindex():Void
```

### translate

```haxe
function translate(dx:Float, dy:Float, dz:Float):Void
```

### scale

```haxe
function scale(s:Float):Void
```

### addNormals

```haxe
function addNormals():Void
```

### addTangents

```haxe
function addTangents():Void
```

### addUVs

```haxe
function addUVs():Void
```

### setUVCount

```haxe
function setUVCount(count:Int):Void
```

Add additional Uv sets that are a copy of the base uv set

### uvScale

```haxe
function uvScale(su:Float, sv:Float):Void
```

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
