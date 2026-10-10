# h2d.col.Matrix

**class** · package [`h2d.col`](README.md) · source [`h2d/col/Matrix.hx`](../../../../../h2d/col/Matrix.hx)

An affine 2D 2x3 matrix.

Matrix properties are as follows:
```
[a, c, x]
[b, d, y]
```

## Constructor

### new

```haxe
inline function new():Void
```

Create a new identity Matrix.

## Variables

### a

```haxe
var a:Float
```

The X component of the transformed X axis (scale and rotation).

### b

```haxe
var b:Float
```

The Y component of the transformed X axis (skew and rotation).

### c

```haxe
var c:Float
```

The X component of the transformed Y axis (skew and rotation).

### d

```haxe
var d:Float
```

The Y component of the transformed Y axis (scale and rotation).

### x

```haxe
var x:Float
```

The X translation.

### y

```haxe
var y:Float
```

The Y translation.

## Methods

### identity

```haxe
inline function identity():Void
```

Sets the matrix values to ones that would perform no transformation.
```
[1, 0, 0]
[0, 1, 0]
```

### initTranslate

```haxe
inline function initTranslate(x:Float, y:Float):Void
```

Sets the matrix values to ones that would only move the transformed positions by given `x` and `y`.
```
[1, 0, x]
[0, 1, y]
```

### initScale

```haxe
inline function initScale(sx:Float, sy:Float):Void
```

Sets the matrix values to ones that would only scale the transformed positions by given `sx` and `sy`.
```
[sx, 0, 0]
[0, sy, 0]
```

### initRotate

```haxe
inline function initRotate(angle:Float):Void
```

Sets the matrix values to ones that would only rotate the transformed position by given `angle`.
```
[cos(angle), -sin(angle), 0]
[sin(angle),  cos(angle), 0]
```

### initSkew

```haxe
inline function initSkew(sx:Float, sy:Float):Void
```

Sets the matrix values to ones that would only skew the transformed position by given `sx` and `sy`.
```
[1, tan(sx), 0]
[tan(sy), 1, 0]
```

### invert

```haxe
function invert():Void
```

Inverts the matrix to perform the opposite transformation. Can be used to undo the previously applied transformation.
- **see** `Matrix.inverse`

### getDeterminant

```haxe
inline function getDeterminant():Float
```

Returns the determinant of the Matrix `a`, `b`, `c` and `d` values.

### inverse

```haxe
function inverse(m:Matrix):Void
```

Sets this Matrix value to be the inverse of the given Matrix `m`.

### transform

```haxe
inline function transform(pt:Point):Point
```

Returns a new Point that is a result of transforming Point `pt` by this Matrix.

### translate

```haxe
inline function translate(x:Float, y:Float):Void
```

Applies translation transform to Matrix by given `x` and `y`.

### translateX

```haxe
inline function translateX(x:Float):Void
```

Applies translation transform on X-axis to Matrix by given `x`. Equivalent of `matrix.x += x`.

### translateY

```haxe
inline function translateY(y:Float):Void
```

Applies translation transform on Y-axis to Matrix by given `y`. Equivalent of `matrix.y += y`.

### prependTranslate

```haxe
inline function prependTranslate(x:Float, y:Float):Void
```

Transforms given `x` and `y` with current Matrix values (excluding translation) and
applies translation transform to Matrix by resulting `x` and `y`.

### prependTranslateX

```haxe
inline function prependTranslateX(x:Float):Void
```

Transforms given `x` with current Matrix values (excluding translation) and
applies translation transform on X-axis to Matrix by resulting `x` and `y`.
Equivalent of `matrix.x += matrix.a * x`.

### prependTranslateY

```haxe
inline function prependTranslateY(y:Float):Void
```

Transforms given `y` with current Matrix values (excluding translation) and
applies translation transform on Y-axis to Matrix by resulting `y`.
Equivalent of `matrix.y += matrix.d * y`.

### multiply

```haxe
function multiply(a:Matrix, b:Matrix):Void
```

Concatenates Matrix `a` and `b` and stores the result in this Matrix.
Matrix can be the target of of it's own `multiply`.
Keep in mind that order of matrixes matter in concatenation.

### getScale

```haxe
inline function getScale(?p:Point):Null<Point>
```

Returns a Point with a total scaling applied by the Matrix.
- **param** `p` Optional Point instance. If provided, sets values of given Point and returns it. Otherwise returns new Point instance.

### scale

```haxe
inline function scale(sx:Float, sy:Float):Void
```

Multiplies the `a`, `c` and `x` by given `sx` and `b`, `d` and `y` by `sy`.

### scaleX

```haxe
inline function scaleX(sx:Float):Void
```

Multiplies the `a`, `c` and `x` by given `sx`.

### scaleY

```haxe
inline function scaleY(sy:Float):Void
```

Multiplies the `b`, `d` and `y` by `sy`.

### rotate

```haxe
function rotate(angle:Float):Void
```

Applies rotation transform to the Matrix by given `angle`.

### skew

```haxe
function skew(sx:Float, sy:Float):Void
```

Applies skewing transform to the Matrix by given `sx` and `sy`.

### skewX

```haxe
function skewX(sx:Float):Void
```

Applies skewing transform on X-axis to the Matrix by given `sx`.

### skewY

```haxe
function skewY(sy:Float):Void
```

Applies skewing transform on Y-axis to the Matrix by given `sy`.

### clone

```haxe
function clone():Matrix
```

Returns a copy of this Matrix.

### getPosition

```haxe
inline function getPosition(?p:Point):Null<Point>
```

Returns a Point with `x` and `y` of the Matrix.
- **param** `p` Optional Point instance to use. Otherwise returns new instance.

### setPosition

```haxe
inline function setPosition(p:Point):Void
```

Sets the matrix position by given a point `p`.
