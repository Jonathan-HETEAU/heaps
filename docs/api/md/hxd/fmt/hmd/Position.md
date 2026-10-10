# hxd.fmt.hmd.Position

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

A transform stored in the file: position, rotation (quaternion without its W component, which is recomputed) and scale.

## Constructor

### new

```haxe
function new():Void
```

Creates a transform.

## Variables

### x

```haxe
var x:Float
```

The X position.

### y

```haxe
var y:Float
```

The Y position.

### z

```haxe
var z:Float
```

The Z position.

### qx

```haxe
var qx:Float
```

The X component of the rotation quaternion.

### qy

```haxe
var qy:Float
```

The Y component of the rotation quaternion.

### qz

```haxe
var qz:Float
```

The Z component of the rotation quaternion.

### qw

```haxe
var qw(get, null):Float
```

The W component of the rotation quaternion, computed from the others.

### sx

```haxe
var sx:Float
```

The X scale.

### sy

```haxe
var sy:Float
```

The Y scale.

### sz

```haxe
var sz:Float
```

The Z scale.

## Methods

### isIdentity

```haxe
inline function isIdentity():Bool
```

Tells if the transform does nothing.

### loadQuaternion

```haxe
inline function loadQuaternion(q:h3d.Quat):Void
```

Writes the rotation to the quaternion.

### toMatrix

```haxe
function toMatrix(?postScale:Bool = false):h3d.Matrix
```

Returns the matrix of the transform. If `postScale` is set, the scale is applied after the translation.
