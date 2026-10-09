# h3d.Matrix

**abstract** · package [`h3d`](README.md) · source [`h3d/Matrix.hx`](../../../../h3d/Matrix.hx)

Underlying type: [`h3d.MatrixImpl`](MatrixImpl.md)

Members of [`h3d.MatrixImpl`](MatrixImpl.md) are forwarded (`@:forward`): they are usable directly on this type.

Implicit casts from: `MatrixImpl`

Implicit casts to: `MatrixImpl`

## Static variables

### IDENTITY_DECOMPOSED

```haxe
static final IDENTITY_DECOMPOSED:Matrix
```

## Static methods

### I

```haxe
static function I():Matrix
```

### L

```haxe
static function L(a:Array<Float>):Matrix
```

### T

```haxe
static function T(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Matrix
```

### R

```haxe
static function R(x:Float, y:Float, z:Float):Matrix
```

### S

```haxe
static function S(?x:Float = 1., ?y:Float = 1., ?z:Float = 1.0):Matrix
```

### lookAtXInline

```haxe
static inline function lookAtXInline(dir:Vector, up:Vector, m:Matrix):Matrix
```

Build a rotation Matrix so the X axis will look at the given direction, and the Z axis will be the Up vector ([0,0,1] by default)

### lookAtX

```haxe
static function lookAtX(dir:Vector, ?up:Vector, ?m:Matrix):Matrix
```

## Methods

### multiplied

```haxe
inline function multiplied(m:Matrix):Matrix
```
