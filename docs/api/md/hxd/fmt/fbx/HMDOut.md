# hxd.fmt.fbx.HMDOut

**class** · package [`hxd.fmt.fbx`](README.md) · source [`hxd/fmt/fbx/HMDOut.hx`](../../../../../../hxd/fmt/fbx/HMDOut.hx)

Extends: [`hxd.fmt.fbx.BaseLibrary`](BaseLibrary.md)

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

### precisionSize

```haxe
static inline function precisionSize(p:hxd.Precision):Int
```

### flushPrec

```haxe
static inline function flushPrec(d:BytesOutput, p:hxd.Precision, count:Int):Void
```

### remapPrecision

```haxe
static function remapPrecision(inputName:String):String
```

### writeFloat

```haxe
static inline function writeFloat(d:BytesOutput, f:Float):Void
```

## Variables

### absoluteTexturePath

```haxe
var absoluteTexturePath:Bool
```

### optimizeSkin

```haxe
var optimizeSkin:Bool
```

### optimizeMesh

```haxe
var optimizeMesh:Bool
```

### generateNormals

```haxe
var generateNormals:Bool
```

### generateTangents

```haxe
var generateTangents:Bool
```

### generateCollides

```haxe
var generateCollides:CollideParams
```

### modelCollides

```haxe
var modelCollides:Map<String, Array<CollideParams>>
```

### ignoreCollides

```haxe
var ignoreCollides:Array<String>
```

### collisionThresholdHeight

```haxe
var collisionThresholdHeight:Float
```

### collisionUseLowLod

```haxe
var collisionUseLowLod:Bool
```

### noCollision

```haxe
var noCollision:Bool
```

### lowPrecConfig

```haxe
var lowPrecConfig:Map<String, hxd.Precision>
```

### lodsDecimation

```haxe
var lodsDecimation:Array<Float>
```

### maxUVs

```haxe
var maxUVs:Int
```

### noColor

```haxe
var noColor:Bool
```

## Methods

### toHMD

```haxe
function toHMD(filePath:String, includeGeometry:Bool):hxd.fmt.hmd.Data
```

## Inherited members

- from [`hxd.fmt.fbx.BaseLibrary`](BaseLibrary.md): `fileName`, `version`, `keepJoints`, `skipObjects`, `fourBonesByVertex`, `maxBonesPerSkin`, `unskinnedJointsAsObjects`, `allowVertexColor`, `normalizeScaleOrient`, `highPrecision`, `legacyScaleAxisConversion`, `legacySkinImport`, `loadFile`, `load`, `leftHandConvert`, `getGeometry`, `getParent`, `getChild`, `getSpecChild`, `getChilds`, `getParents`, `getRoot`, `mergeModels`, `getAnimationNames`, `loadAnimation`
