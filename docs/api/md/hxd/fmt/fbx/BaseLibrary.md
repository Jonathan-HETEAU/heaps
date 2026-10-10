# hxd.fmt.fbx.BaseLibrary

**class** · package [`hxd.fmt.fbx`](README.md) · source [`hxd/fmt/fbx/BaseLibrary.hx`](../../../../../../hxd/fmt/fbx/BaseLibrary.hx)

Subclasses: [`hxd.fmt.fbx.HMDOut`](HMDOut.md)

Loads a FBX file (version 7) and builds its hierarchy, geometries, skins and animations. `HMDOut` converts it to the HMD format.

## Constructor

### new

```haxe
function new(fileName:String):Void
```

Creates the library for the file.

## Variables

### fileName

```haxe
var fileName:String
```

The path of the FBX file.

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

If set, the vertex colors are imported.

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

Parses the FBX file and loads it.

### load

```haxe
function load(root:FbxNode):Void
```

Loads the parsed FBX data. Throws if the FBX version is not 7.

### leftHandConvert

```haxe
function leftHandConvert():Void
```

Converts the data from right handed to left handed coordinates, by flipping the X axis.

### getGeometry

```haxe
function getGeometry(?name:String = ""):Geometry
```

Returns the geometry of the given name.

### getParent

```haxe
function getParent(node:FbxNode, nodeName:String, ?opt:Bool):Null<FbxNode>
```

Returns the parent of the node with the given node type. Throws if there are several, or none unless `opt` is set.

### getChild

```haxe
function getChild(node:FbxNode, nodeName:String, ?opt:Bool):Null<FbxNode>
```

Returns the child of the node with the given node type. Throws if there are several, or none unless `opt` is set.

### getSpecChild

```haxe
function getSpecChild(node:FbxNode, name:String):Null<FbxNode>
```

Returns the child connected to the node with the given property name, or `null`.

### getChilds

```haxe
function getChilds(node:FbxNode, ?nodeName:String):Array<Null<FbxNode>>
```

Returns the children of the node (of the given node type if set).

### getParents

```haxe
function getParents(node:FbxNode, ?nodeName:String):Array<Null<FbxNode>>
```

Returns the parents of the node (of the given node type if set).

### getRoot

```haxe
function getRoot():FbxNode
```

Returns the root of the FBX data.

### mergeModels

```haxe
function mergeModels(modelNames:Array<String>):Void
```

Merges the geometries of the given models into the first one.

### getAnimationNames

```haxe
function getAnimationNames():Array<String>
```

Returns an array of names with all animations present in FBX file.

### loadAnimation

```haxe
function loadAnimation(?animName:String, ?root:Null<FbxNode>, ?lib:BaseLibrary):h3d.anim.Animation
```

Loads the animation of the given name (the first one by default), from this library, another FBX data (`root`), or another library (`lib`) applied to this skeleton.
