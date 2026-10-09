# h3d.Matrix

**abstract** · package [`h3d`](README.md) · source [`h3d/Matrix.hx`](../../../../h3d/Matrix.hx)

A 4x4 transformation matrix. Heaps uses row vectors: a point is transformed with `p * M`, the translation is stored in
the 4th row (`_41`, `_42`, `_43`), and `a * b` applies `a` then `b`.

```haxe
var m = h3d.Matrix.S(2, 2, 2);  // scale
m.rotate(0, 0, Math.PI / 4);    // then rotate around Z
m.translate(10, 0, 0);          // then translate
var p = new h3d.Vector(1, 0, 0).transformed(m);
```

Underlying type: [`h3d.MatrixImpl`](MatrixImpl.md)

Members of [`h3d.MatrixImpl`](MatrixImpl.md) are forwarded (`@:forward`): they are usable directly on this type.

Implicit casts from: `MatrixImpl`

Implicit casts to: `MatrixImpl`

## Static variables

### IDENTITY_DECOMPOSED

```haxe
static final IDENTITY_DECOMPOSED:Matrix
```

The identity in the decomposed format of `decomposeMatrix` (scale and rotation quaternion stored separately).

## Static methods

### I

```haxe
static function I():Matrix
```

Returns a new identity matrix.

### L

```haxe
static function L(a:Array<Float>):Matrix
```

Returns a new matrix from 16 values, row by row.

### T

```haxe
static function T(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Matrix
```

Returns a new translation matrix.

### R

```haxe
static function R(x:Float, y:Float, z:Float):Matrix
```

Returns a new rotation matrix from Euler angles, in radians.

### S

```haxe
static function S(?x:Float = 1., ?y:Float = 1., ?z:Float = 1.0):Matrix
```

Returns a new scale matrix.

### lookAtXInline

```haxe
static inline function lookAtXInline(dir:Vector, up:Vector, m:Matrix):Matrix
```

Build a rotation Matrix so the X axis will look at the given direction, and the Z axis will be the Up vector ([0,0,1] by default)

### lookAtX

```haxe
static function lookAtX(dir:Vector, ?up:Vector, ?m:Matrix):Matrix
```

Returns a rotation matrix whose X axis points to `dir` and whose Z axis is up (`up`, by default `0, 0, 1`).

## Methods

### multiplied

```haxe
inline function multiplied(m:Matrix):Matrix
```

Returns `this * m` as a new matrix.
