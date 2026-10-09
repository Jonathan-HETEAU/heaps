# h3d.prim.HMDModel

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/HMDModel.hx`](../../../../../h3d/prim/HMDModel.hx)

Extends: [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

## Constructor

### new

```haxe
function new(model:hxd.fmt.hmd.Model, dataPos:Int, lib:hxd.fmt.hmd.Library, ?lods:Array<hxd.fmt.hmd.Model>):Void
```

## Variables

### lib

```haxe
var lib(default, null):hxd.fmt.hmd.Library
```

## Methods

### getPath

```haxe
function getPath():String
```

### hasInput

```haxe
override function hasInput(name:String):Bool
```

### triCount

```haxe
override function triCount():Int
```

### vertexCount

```haxe
override function vertexCount():Int
```

### getBounds

```haxe
override function getBounds():h3d.col.Bounds
```

### selectMaterial

```haxe
override function selectMaterial(material:Int, lod:Int):Void
```

### getMaterialIndexStart

```haxe
override function getMaterialIndexStart(material:Int, ?lod:Int = 0):Int
```

### getMaterialIndexCount

```haxe
override function getMaterialIndexCount(material:Int, ?lod:Int = 0):Int
```

### getDataBuffers

```haxe
function getDataBuffers(fmt:hxd.BufferFormat, ?defaults:Array<h3d.Vector4>, ?material:Int):hxd.fmt.hmd.GeometryBuffer
```

### getLodBuffers

```haxe
function getLodBuffers(fmt:hxd.BufferFormat, lodIdx:Int, ?defaults:Array<h3d.Vector4>, ?material:Int):hxd.fmt.hmd.GeometryBuffer
```

### loadSkin

```haxe
function loadSkin(skin:h3d.anim.Skin):Void
```

### alloc

```haxe
override function alloc(engine:h3d.Engine):Void
```

### recomputeNormals

```haxe
function recomputeNormals(?name:String):Void
```

### addTangents

```haxe
function addTangents():Void
```

### render

```haxe
override function render(engine:h3d.Engine):Void
```

### getCollider

```haxe
override function getCollider():h3d.col.Collider
```

### getRawPolygonCollider

```haxe
function getRawPolygonCollider():h3d.col.Collider
```

### lodCount

```haxe
override function lodCount():Int
```

### screenRatioToLod

```haxe
override function screenRatioToLod(screenRatio:Float):Int
```

### getCullingScreenRatio

```haxe
override function getCullingScreenRatio():Float
```

### getLodConfig

```haxe
function getLodConfig():Array<Float>
```

## Inherited members

- from [`h3d.prim.MeshPrimitive`](MeshPrimitive.md): `hasInput`, `resolveBuffer`, `removeBuffer`, `addBuffer`, `dispose`, `render`
- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
