# h3d.prim.HMDModel

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/HMDModel.hx`](../../../../../h3d/prim/HMDModel.hx)

Extends: [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

The primitive of a model geometry loaded from a HMD file (the format FBX and other models are converted to),
with its levels of detail, blend shapes and collision data. Created by `hxd.fmt.hmd.Library` when making the
objects of a model.

## Constructor

### new

```haxe
function new(model:hxd.fmt.hmd.Model, dataPos:Int, lib:hxd.fmt.hmd.Library, ?lods:Array<hxd.fmt.hmd.Model>):Void
```

Creates the primitive of `model`. Done by `hxd.fmt.hmd.Library`.
- **param** `lods` The models of the lower levels of detail.

## Variables

### lib

```haxe
var lib(default, null):hxd.fmt.hmd.Library
```

The library (loaded model file) the geometry comes from.

## Methods

### getPath

```haxe
function getPath():String
```

Returns the path of the model file.

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

Returns the geometry data (of the most detailed level) converted to the format `fmt`.
- **param** `defaults` The values of the inputs missing in the file.
- **param** `material` If set, only the triangles of this material group.

### getLodBuffers

```haxe
function getLodBuffers(fmt:hxd.BufferFormat, lodIdx:Int, ?defaults:Array<h3d.Vector4>, ?material:Int):hxd.fmt.hmd.GeometryBuffer
```

Returns the geometry data of the level of detail `lodIdx` converted to the format `fmt`.

### loadSkin

```haxe
function loadSkin(skin:h3d.anim.Skin):Void
```

Loads the skinning data (joint weights) of the geometry into `skin`.

### alloc

```haxe
override function alloc(engine:h3d.Engine):Void
```

### recomputeNormals

```haxe
function recomputeNormals(?name:String):Void
```

Computes smooth normals for the geometry and stores them in the vertex input `name` (`"normal"` by default),
unless the file already provides this input.

### addTangents

```haxe
function addTangents():Void
```

Computes the tangents of the geometry (needed by normal maps), unless it already has them.

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

Returns a collider made of the triangles of the geometry (precise but slow).

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

Returns the screen ratios at which each level of detail is selected, or `null` for the defaults.

## Inherited members

- from [`h3d.prim.MeshPrimitive`](MeshPrimitive.md): `hasInput`, `resolveBuffer`, `removeBuffer`, `addBuffer`, `dispose`, `render`
- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
