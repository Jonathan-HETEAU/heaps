# h3d.anim.LinearFrame

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.LinearAnimation` · source [`h3d/anim/LinearAnimation.hx`](../../../../../h3d/anim/LinearAnimation.hx)

A keyframe of a `LinearAnimation`: a position, a rotation quaternion and a scale.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty frame.

## Variables

### tx

```haxe
var tx:Float
```

The X position.

### ty

```haxe
var ty:Float
```

The Y position.

### tz

```haxe
var tz:Float
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
var qw:Float
```

The W component of the rotation quaternion.

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

### toMatrix

```haxe
function toMatrix():h3d.Matrix
```

Returns the transform of the frame as a matrix.
