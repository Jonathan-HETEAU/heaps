# hxd.fmt.fbx.Geometry

**class** · package [`hxd.fmt.fbx`](README.md) · source [`hxd/fmt/fbx/Geometry.hx`](../../../../../../hxd/fmt/fbx/Geometry.hx)

Reads the data of a FBX geometry node.

## Constructor

### new

```haxe
function new(l:BaseLibrary, root:FbxNode):Void
```

Creates the reader for the geometry node of the library.

## Methods

### getRoot

```haxe
function getRoot():FbxNode
```

Returns the geometry node.

### getVertices

```haxe
function getVertices():Array<Float>
```

Returns the vertex positions (3 floats per vertex).

### getPolygons

```haxe
function getPolygons():Array<Int>
```

Returns the polygon vertex indexes: the last index of each polygon is stored as `-index - 1`.

### getMaterials

```haxe
function getMaterials():Null<Null<Array<Int>>>
```

Returns the material index of each polygon, or `null`.

### getMaterialByTriangle

```haxe
function getMaterialByTriangle():Array<Int>
```

Returns the material index of each triangle.

### merge

```haxe
function merge(g:Geometry, materials:Array<Int>):Void
```

Appends another geometry, with the given material remapping. Throws if one has a geometric transform.

### getIndexes

```haxe
function getIndexes():{ vidx:Array<Int>, idx:Array<Int> }
```

Decode polygon informations into triangle indexes and vertices indexes.
Returns vidx, which is the list of vertices indexes and iout which is the index buffer for the full vertex model

### getPoints

```haxe
function getPoints(?matrix:h3d.Matrix):Array<h3d.Vector>
```

Returns the vertex positions, transformed by the matrix (the geometric transform by default).

### getNormals

```haxe
function getNormals(?matrix:h3d.Matrix):Null<Array<Float>>
```

Returns the normals of the polygon vertices (3 floats each), transformed by the matrix (the geometric transform by default), or `null`.

### getColors

```haxe
function getColors():Null<{ values:Array<Float>, index:Array<Int> }>
```

Returns the vertex colors and their indexes, or `null`.

### getUVs

```haxe
function getUVs():Array<{ values:Array<Float>, index:Array<Int> }>
```

Returns the UV channels, with their values and indexes.

### getGeomMatrix

```haxe
function getGeomMatrix():Null<h3d.Matrix>
```

Returns the geometric transform of the model, or `null`.
