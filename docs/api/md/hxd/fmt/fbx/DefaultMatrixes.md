# hxd.fmt.fbx.DefaultMatrixes

**class** · package [`hxd.fmt.fbx`](README.md) · module `hxd.fmt.fbx.BaseLibrary` · source [`hxd/fmt/fbx/BaseLibrary.hx`](../../../../../../hxd/fmt/fbx/BaseLibrary.hx)

The default transform of a FBX model: translation, scale, rotation and pre-rotation.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty transform.

## Static methods

### rightHandToLeft

```haxe
static inline function rightHandToLeft(m:h3d.Matrix):Void
```

Converts a right handed matrix to left handed, by flipping the X axis.

## Variables

### trans

```haxe
var trans:Null<h3d.col.Point>
```

The translation.

### scale

```haxe
var scale:Null<h3d.col.Point>
```

The scale.

### rotate

```haxe
var rotate:Null<h3d.col.Point>
```

The rotation (Euler angles in radians).

### preRot

```haxe
var preRot:Null<h3d.col.Point>
```

The pre-rotation (Euler angles in radians).

### wasRemoved

```haxe
var wasRemoved:Null<Int>
```

Set when the model was removed from the hierarchy (such as an optimized joint).

### transPos

```haxe
var transPos:h3d.Matrix
```

The bind transform of a joint.

## Methods

### fromMatrix

```haxe
function fromMatrix(m:h3d.Matrix):Void
```

Sets the transform from a matrix.

### toMatrix

```haxe
function toMatrix(leftHand:Bool):h3d.Matrix
```

Returns the matrix of the transform (converted to left handed if `leftHand` is set).

### toQuaternion

```haxe
function toQuaternion(leftHand:Bool):h3d.Quat
```

Returns the rotation of the transform (converted to left handed if `leftHand` is set).
