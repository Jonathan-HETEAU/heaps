# hxd.fmt.fbx.TmpObject

**class** · package [`hxd.fmt.fbx`](README.md) · module `hxd.fmt.fbx.BaseLibrary` · source [`hxd/fmt/fbx/BaseLibrary.hx`](../../../../../../hxd/fmt/fbx/BaseLibrary.hx)

A node of the hierarchy built while converting a FBX file.

## Constructor

### new

```haxe
function new():Void
```

Creates a node.

## Variables

### index

```haxe
var index:Int
```

The index of the node.

### model

```haxe
var model:FbxNode
```

The FBX model of the node.

### parent

```haxe
var parent:TmpObject
```

The parent node.

### isJoint

```haxe
var isJoint:Bool
```

Tells if the node is a skeleton joint.

### isMesh

```haxe
var isMesh:Bool
```

Tells if the node is a mesh.

### childs

```haxe
var childs:Array<TmpObject>
```

The children nodes.

### obj

```haxe
var obj:h3d.scene.Object
```

The object created for the node.

### joint

```haxe
var joint:h3d.anim.Joint
```

The joint created for the node.

### skin

```haxe
var skin:TmpObject
```

The skinned mesh node of the joint.

### rootJoints

```haxe
var rootJoints:Array<TmpObject>
```

The root joints of a skinned mesh node.
