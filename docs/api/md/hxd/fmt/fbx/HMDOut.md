# hxd.fmt.fbx.HMDOut

**class** · package [`hxd.fmt.fbx`](README.md) · source [`hxd/fmt/fbx/HMDOut.hx`](../../../../../../hxd/fmt/fbx/HMDOut.hx)

Extends: [`hxd.fmt.fbx.BaseLibrary`](BaseLibrary.md)

Converts a FBX file to the HMD format of Heaps (see `hxd.fs.Convert`): optimized geometries, skins, animations, levels of detail and colliders.

## Constructor

### new

```haxe
function new(fileName:String):Void
```

## Static methods

### writePrec

```haxe
static inline function writePrec(d:BytesOutput, v:Float, p:hxd.Precision):Float
```

Writes a value with the precision, and returns the value as it will be read.

### precisionSize

```haxe
static inline function precisionSize(p:hxd.Precision):Int
```

Returns the size of a value of the precision, in bytes.

### flushPrec

```haxe
static inline function flushPrec(d:BytesOutput, p:hxd.Precision, count:Int):Void
```

Writes the padding after `count` values of the precision, to align the data to 4 bytes.

### remapPrecision

```haxe
static function remapPrecision(inputName:String):String
```

Returns the input name used to look up the precision of a vertex input (`tangent` uses the one of `normal`, the UV channels the one of `uv`).

### writeFloat

```haxe
static inline function writeFloat(d:BytesOutput, f:Float):Void
```

Writes a float, avoiding negative zero.

## Variables

### absoluteTexturePath

```haxe
var absoluteTexturePath:Bool
```

If set, the texture paths are kept absolute, instead of relative to the file.

### optimizeSkin

```haxe
var optimizeSkin:Bool
```

If set, the joints that don't influence any vertex are removed.

### optimizeMesh

```haxe
var optimizeMesh:Bool
```

If set, the meshes are optimized (vertex deduplication and cache optimization, HashLink only).

### generateNormals

```haxe
var generateNormals:Bool
```

If set, the normals are computed instead of read from the file.

### generateTangents

```haxe
var generateTangents:Bool
```

If set, the tangents are generated even without normal map.

### generateCollides

```haxe
var generateCollides:CollideParams
```

The default collider parameters.

### modelCollides

```haxe
var modelCollides:Map<String, Array<CollideParams>>
```

The collider parameters of each model, by name.

### ignoreCollides

```haxe
var ignoreCollides:Array<String>
```

The names of the materials whose triangles are not part of the generated colliders.

### collisionThresholdHeight

```haxe
var collisionThresholdHeight:Float
```

The size under which a model gets no default collider.

### collisionUseLowLod

```haxe
var collisionUseLowLod:Bool
```

If set, the default collider uses the lowest level of detail.

### noCollision

```haxe
var noCollision:Bool
```

If set, no collider is generated.

### lowPrecConfig

```haxe
var lowPrecConfig:Map<String, hxd.Precision>
```

The storage precision of the vertex inputs, by name (such as `uv` or `normal`), or `null` for the default.

### lodsDecimation

```haxe
var lodsDecimation:Array<Float>
```

The decimation factor of each generated level of detail (unskinned models without LODs).

### maxUVs

```haxe
var maxUVs:Int
```

The maximum number of UV channels kept, or `0` for all.

### noColor

```haxe
var noColor:Bool
```

If set, the vertex colors are not exported.

## Methods

### toHMD

```haxe
function toHMD(filePath:String, includeGeometry:Bool):hxd.fmt.hmd.Data
```

Converts the loaded FBX data to HMD. If `includeGeometry` is not set, only the animations and the joint positions are exported.

## Inherited members

- from [`hxd.fmt.fbx.BaseLibrary`](BaseLibrary.md): `fileName`, `version`, `keepJoints`, `skipObjects`, `fourBonesByVertex`, `maxBonesPerSkin`, `unskinnedJointsAsObjects`, `allowVertexColor`, `normalizeScaleOrient`, `highPrecision`, `legacyScaleAxisConversion`, `legacySkinImport`, `loadFile`, `load`, `leftHandConvert`, `getGeometry`, `getParent`, `getChild`, `getSpecChild`, `getChilds`, `getParents`, `getRoot`, `mergeModels`, `getAnimationNames`, `loadAnimation`
