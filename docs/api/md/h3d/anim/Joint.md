# h3d.anim.Joint

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.Skin` · source [`h3d/anim/Skin.hx`](../../../../../h3d/anim/Skin.hx)

Subclasses: [`h3d.anim.DynamicJoint`](DynamicJoint.md)

A joint (bone) of a skeleton (`Skin`).

## Constructor

### new

```haxe
function new():Void
```

Creates a joint.

## Variables

### index

```haxe
var index:Int
```

The index of the joint in `Skin.allJoints`.

### name

```haxe
var name:String
```

The joint name, used to bind animations and to find it with `h3d.scene.Skin.getObjectByName`.

### bindIndex

```haxe
var bindIndex:Int
```

The index of the joint in `Skin.boundJoints` (the joints influencing vertexes), or `-1`.

### splitIndex

```haxe
var splitIndex:Int
```

The index of the joint in its split group when the skin is split (see `Skin.split`), or `-1`.

### defMat

```haxe
var defMat:h3d.Matrix
```

The default transform of the joint, relative to its parent (bind pose).

### transPos

```haxe
var transPos:h3d.Matrix
```

The inverse of the absolute bind pose transform, used for skinning.

### parent

```haxe
var parent:Joint
```

The parent joint, or `null` for a root joint.

### follow

```haxe
var follow:Joint
```

If set, the joint is not computed from its animation but follows another joint.

### subs

```haxe
var subs:Array<Joint>
```

The child joints.

### offsets

```haxe
var offsets:h3d.col.Bounds
```

The bounds of the vertexes influenced by the joint, in joint space, used to compute the skin bounds.

### offsetRay

```haxe
var offsetRay:Float
```

The radius added around `offsets`, or a negative value if the joint does not influence the bounds.

### retargetAnim

```haxe
var retargetAnim:Bool
```

When animated, we will use the default bind pose translation instead of the animated translation,
enabling retargeting on a skeleton with different proportions

## Methods

### shouldReceiveAnimation

```haxe
function shouldReceiveAnimation():Bool
```

Tells if animations write the transform of this joint.

### makeRuntimeData

```haxe
function makeRuntimeData():h3d.scene.JointData
```

Creates the runtime state of the joint (see `h3d.scene.Skin.JointData`).
