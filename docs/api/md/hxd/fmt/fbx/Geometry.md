# hxd.fmt.fbx.Geometry

**class** · package [`hxd.fmt.fbx`](README.md) · source [`hxd/fmt/fbx/Geometry.hx`](../../../../../../hxd/fmt/fbx/Geometry.hx)

## Constructor

### new

```haxe
function new(l:BaseLibrary, root:FbxNode):Void
```

## Methods

### getRoot

```haxe
function getRoot():FbxNode
```

### getVertices

```haxe
function getVertices():Array<Float>
```

### getPolygons

```haxe
function getPolygons():Array<Int>
```

### getMaterials

```haxe
function getMaterials():Null<Null<Array<Int>>>
```

### getMaterialByTriangle

```haxe
function getMaterialByTriangle():Array<Int>
```

### merge

```haxe
function merge(g:Geometry, materials:Array<Int>):Void
```

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

### getNormals

```haxe
function getNormals(?matrix:h3d.Matrix):Null<Array<Float>>
```

### getColors

```haxe
function getColors():Null<{ values:Array<Float>, index:Array<Int> }>
```

### getUVs

```haxe
function getUVs():Array<{ values:Array<Float>, index:Array<Int> }>
```

### getGeomMatrix

```haxe
function getGeomMatrix():Null<h3d.Matrix>
```
