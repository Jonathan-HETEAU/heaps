# h3d.Quat

**class** · package [`h3d`](README.md) · source [`h3d/Quat.hx`](../../../../h3d/Quat.hx)

A quaternion representing a 3D rotation, used for instance by `h3d.scene.Object` to store its rotation.
Most methods modify the quaternion in place.

```haxe
var q = new h3d.Quat();
q.initRotateAxis(0, 0, 1, Math.PI / 2); // 90 degrees around Z
obj.setRotationQuat(q);
```

## Constructor

### new

```haxe
inline function new(?x:Float = 0., ?y:Float = 0., ?z:Float = 0., ?w:Float = 1.):Void
```

Creates a quaternion, the identity (no rotation) by default.

## Variables

### x

```haxe
var x:Float
```

The X component of the rotation axis part.

### y

```haxe
var y:Float
```

The Y component of the rotation axis part.

### z

```haxe
var z:Float
```

The Z component of the rotation axis part.

### w

```haxe
var w:Float
```

The scalar part (`1` for no rotation).

## Methods

### set

```haxe
inline function set(x:Float, y:Float, z:Float, w:Float):Void
```

Sets the four components.

### identity

```haxe
inline function identity():Void
```

Resets to the identity (no rotation).

### lengthSq

```haxe
inline function lengthSq():Float
```

Returns the squared length.

### length

```haxe
inline function length():Float
```

Returns the length (`1` for a rotation).

### load

```haxe
inline function load(q:Quat):Void
```

Copies the components of `q`.

### clone

```haxe
inline function clone():Quat
```

Returns a copy.

### initMoveTo

```haxe
function initMoveTo(from:Vector, to:Vector):Void
```

Sets the rotation turning the direction `from` to the direction `to` (both normalized).
Unstable when the directions are almost opposite.

### initNormal

```haxe
function initNormal(dir:h3d.col.Point, ?rotate:Float = 0.0):Void
```

Sets a rotation whose Z axis is the direction `dir`, rotated by `rotate` radians around it.

### initDirection

```haxe
function initDirection(dir:Vector, ?up:Vector):Void
```

Sets the rotation whose X axis points to `dir` (used by `h3d.scene.Object.setDirection`).
- **param** `up` The up vector used to orient the other axes (Z up by default).

### initRotateAxis

```haxe
function initRotateAxis(x:Float, y:Float, z:Float, a:Float):Void
```

Sets a rotation of `a` radians around the axis (`x`, `y`, `z`), which must be normalized.

### initRotateMatrix

```haxe
function initRotateMatrix(m:Matrix):Void
```

Sets the rotation of the matrix `m`, which must not contain a scale.

### normalize

```haxe
function normalize():Void
```

Normalizes the quaternion. Resets to the identity if its length is zero.

### initRotation

```haxe
function initRotation(ax:Float, ay:Float, az:Float):Void
```

Sets the rotation from Euler angles, in radians (X, then Y, then Z).

### multiply

```haxe
function multiply(q1:Quat, q2:Quat):Void
```

Sets `this` to the product `q1 * q2`: the rotation `q2` followed by `q1`.

### toEuler

```haxe
function toEuler():Vector
```

Returns the Euler angles of the rotation, in radians.

### lerp

```haxe
inline function lerp(q1:Quat, q2:Quat, v:Float, ?nearest:Bool = false):Void
```

Sets `this` to the linear interpolation between `q1` and `q2` (call `normalize` after it).
- **param** `nearest` If `true`, interpolates along the shortest path.

### slerp

```haxe
function slerp(q1:Quat, q2:Quat, v:Float):Void
```

Sets `this` to the spherical linear interpolation between `q1` and `q2`, at `v` from `0` to `1`.

### conjugate

```haxe
inline function conjugate():Void
```

Inverts the rotation (conjugate of a unit quaternion).

### pow

```haxe
inline function pow(v:Float):Void
```

Makes a unit quaternion to the power of the value.

### negate

```haxe
inline function negate():Void
```

Negate the quaternion: this will not change the actual angle, use `conjugate` for that.

### dot

```haxe
inline function dot(q:Quat):Float
```

Returns the dot product with `q`.

### getDirection

```haxe
inline function getDirection():Vector
```

Returns the rotated X axis (the direction the rotation points to).

### getUpAxis

```haxe
inline function getUpAxis():Vector
```

Returns the rotated Z axis.

### getRightAxis

```haxe
inline function getRightAxis():Vector
```

Returns the rotated Y axis.

### toMatrix

```haxe
function toMatrix(?m:Matrix):Null<Matrix>
```

Save to a Left-Handed matrix

### toString

```haxe
function toString():String
```

Returns a string representation of the components.

### weightedBlend

```haxe
function weightedBlend(sourceQuats:Array<Quat>, weights:Array<Float>, referenceQuat:Quat):Void
```

Blends the sourceQuats together with the given weights and store the result in `this`.
ReferenceQuat is the default rotation to use as the base for the blend
(for example the default rotation of a bone in a skeletal mesh)
