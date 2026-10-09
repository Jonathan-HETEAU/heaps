# hxd.fmt.fbx.BaseLibrary

**class** · package [`hxd.fmt.fbx`](README.md) · source [`hxd/fmt/fbx/BaseLibrary.hx`](../../../../../../hxd/fmt/fbx/BaseLibrary.hx)

Subclasses: [`hxd.fmt.fbx.HMDOut`](HMDOut.md)

## Constructor

### new

```haxe
function new(fileName:String):Void
```

## Variables

### fileName

```haxe
var fileName:String
```

### version

```haxe
var version:Float
```

The FBX version that was decoded

### keepJoints

```haxe
var keepJoints:Map<String, Bool>
```

Allows to prevent some terminal unskinned joints to be removed, for instance if we want to track their position

### skipObjects

```haxe
var skipObjects:Map<String, Bool>
```

Allows to skip some objects from being processed as if they were not part of the FBX

### fourBonesByVertex

```haxe
var fourBonesByVertex:Bool
```

Use 4 bones of influence per vertex instead of 3

### maxBonesPerSkin

```haxe
var maxBonesPerSkin:Int
```

If there are too many bones, the model will be split in separate render passes.

### unskinnedJointsAsObjects

```haxe
var unskinnedJointsAsObjects:Bool
```

Consider unskinned joints to be simple objects

### allowVertexColor

```haxe
var allowVertexColor:Bool
```

### normalizeScaleOrient

```haxe
var normalizeScaleOrient:Bool
```

Convert centimeters to meters and axis to Z-up (Maya FBX export)

### highPrecision

```haxe
var highPrecision:Bool
```

Keep high precision values. Might increase animation data size and compressed size.

### legacyScaleAxisConversion

```haxe
var legacyScaleAxisConversion:Bool
```

Use the legacy system to convert scale and axis of FBX file

### legacySkinImport

```haxe
var legacySkinImport:Bool
```

Use the legacy system to import skinned mesh of FBX file

## Methods

### loadFile

```haxe
function loadFile(data:Bytes):Void
```

### load

```haxe
function load(root:FbxNode):Void
```

### leftHandConvert

```haxe
function leftHandConvert():Void
```

### getGeometry

```haxe
function getGeometry(?name:String = ""):Geometry
```

### getParent

```haxe
function getParent(node:FbxNode, nodeName:String, ?opt:Bool):Null<FbxNode>
```

### getChild

```haxe
function getChild(node:FbxNode, nodeName:String, ?opt:Bool):Null<FbxNode>
```

### getSpecChild

```haxe
function getSpecChild(node:FbxNode, name:String):Null<FbxNode>
```

### getChilds

```haxe
function getChilds(node:FbxNode, ?nodeName:String):Array<Null<FbxNode>>
```

### getParents

```haxe
function getParents(node:FbxNode, ?nodeName:String):Array<Null<FbxNode>>
```

### getRoot

```haxe
function getRoot():FbxNode
```

### mergeModels

```haxe
function mergeModels(modelNames:Array<String>):Void
```

### getAnimationNames

```haxe
function getAnimationNames():Array<String>
```

Returns an array of names with all animations present in FBX file.

### loadAnimation

```haxe
function loadAnimation(?animName:String, ?root:Null<FbxNode>, ?lib:BaseLibrary):h3d.anim.Animation
```
