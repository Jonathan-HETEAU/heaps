# h3d.MatrixImpl

**class** · package [`h3d`](README.md) · module `h3d.Matrix` · source [`h3d/Matrix.hx`](../../../../h3d/Matrix.hx)

The implementation of `Matrix`: use `h3d.Matrix` instead.

## Constructor

### new

```haxe
inline function new():Void
```

Creates a matrix. Its values are not initialized: call `identity()` or use `Matrix.I()`.

## Variables

### _11

```haxe
var _11:Float
```

The value at row 1, column 1. Matrixes use row vectors: the 4th row holds the translation.

### _12

```haxe
var _12:Float
```

The value at row 1, column 2. Matrixes use row vectors: the 4th row holds the translation.

### _13

```haxe
var _13:Float
```

The value at row 1, column 3. Matrixes use row vectors: the 4th row holds the translation.

### _14

```haxe
var _14:Float
```

The value at row 1, column 4. Matrixes use row vectors: the 4th row holds the translation.

### _21

```haxe
var _21:Float
```

The value at row 2, column 1. Matrixes use row vectors: the 4th row holds the translation.

### _22

```haxe
var _22:Float
```

The value at row 2, column 2. Matrixes use row vectors: the 4th row holds the translation.

### _23

```haxe
var _23:Float
```

The value at row 2, column 3. Matrixes use row vectors: the 4th row holds the translation.

### _24

```haxe
var _24:Float
```

The value at row 2, column 4. Matrixes use row vectors: the 4th row holds the translation.

### _31

```haxe
var _31:Float
```

The value at row 3, column 1. Matrixes use row vectors: the 4th row holds the translation.

### _32

```haxe
var _32:Float
```

The value at row 3, column 2. Matrixes use row vectors: the 4th row holds the translation.

### _33

```haxe
var _33:Float
```

The value at row 3, column 3. Matrixes use row vectors: the 4th row holds the translation.

### _34

```haxe
var _34:Float
```

The value at row 3, column 4. Matrixes use row vectors: the 4th row holds the translation.

### _41

```haxe
var _41:Float
```

The value at row 4, column 1. Matrixes use row vectors: the 4th row holds the translation.

### _42

```haxe
var _42:Float
```

The value at row 4, column 2. Matrixes use row vectors: the 4th row holds the translation.

### _43

```haxe
var _43:Float
```

The value at row 4, column 3. Matrixes use row vectors: the 4th row holds the translation.

### _44

```haxe
var _44:Float
```

The value at row 4, column 4. Matrixes use row vectors: the 4th row holds the translation.

### tx

```haxe
var tx(get, set):Float
```

The X translation, alias for `_41`.

### ty

```haxe
var ty(get, set):Float
```

The Y translation, alias for `_42`.

### tz

```haxe
var tz(get, set):Float
```

The Z translation, alias for `_43`.

## Methods

### equal

```haxe
function equal(other:Matrix):Bool
```

Tells if all the values are equal to those of `other`.

### zero

```haxe
function zero():Void
```

Sets all the values to 0.

### identity

```haxe
function identity():Void
```

Sets the matrix to the identity (no transformation).

### isIdentity

```haxe
function isIdentity():Bool
```

Tells if the matrix is exactly the identity.

### isIdentityEpsilon

```haxe
function isIdentityEpsilon(e:Float):Bool
```

Tells if the matrix is the identity, within the tolerance `e`.

### initRotationX

```haxe
function initRotationX(a:Float):Void
```

Sets the matrix to a rotation of `a` radians around the X axis.

### initRotationY

```haxe
function initRotationY(a:Float):Void
```

Sets the matrix to a rotation of `a` radians around the Y axis.

### initRotationZ

```haxe
function initRotationZ(a:Float):Void
```

Sets the matrix to a rotation of `a` radians around the Z axis.

### initTranslation

```haxe
function initTranslation(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Void
```

Sets the matrix to a translation.

### initScale

```haxe
function initScale(?x:Float = 1., ?y:Float = 1., ?z:Float = 1.):Void
```

Sets the matrix to a scale.

### initRotationAxis

```haxe
inline function initRotationAxis(axis:Vector, angle:Float):Void
```

Sets the matrix to a rotation of `angle` radians around the normalized `axis`.

### initRotation

```haxe
function initRotation(x:Float, y:Float, z:Float):Void
```

Sets the matrix to a rotation from Euler angles, in radians.

### translate

```haxe
function translate(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Void
```

Appends a translation: it is applied after the current transformation.

### scale

```haxe
function scale(?x:Float = 1., ?y:Float = 1., ?z:Float = 1.):Void
```

Appends a scale: it is applied after the current transformation.

### rotate

```haxe
function rotate(x:Float, y:Float, z:Float):Void
```

Appends a rotation from Euler angles, in radians.

### rotateAxis

```haxe
function rotateAxis(axis:Vector, angle:Float):Void
```

Appends a rotation of `angle` radians around `axis`.

### getPosition

```haxe
inline function getPosition():Vector
```

Returns the translation part.

### setPosition

```haxe
inline function setPosition(v:Vector):Void
```

Sets the translation part.

### prependTranslation

```haxe
function prependTranslation(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Void
```

Prepends a translation: it is applied before the current transformation.

### getScale

```haxe
inline function getScale():Vector
```

Returns the scale of each axis (the length of the first three rows), all negated if the matrix is mirrored.

### prependRotation

```haxe
function prependRotation(x:Float, y:Float, z:Float):Void
```

Prepends a rotation from Euler angles, in radians.

### prependRotationAxis

```haxe
function prependRotationAxis(axis:Vector, angle:Float):Void
```

Prepends a rotation of `angle` radians around `axis`.

### prependScale

```haxe
function prependScale(?sx:Float = 1., ?sy:Float = 1., ?sz:Float = 1.):Void
```

Prepends a scale: it is applied before the current transformation.

### multiply3x3

```haxe
function multiply3x3(a:Matrix, b:Matrix):Void
```

Sets `this` to `a * b`, using only the 3x3 rotation and scale part.

### multiply3x3inline

```haxe
inline function multiply3x3inline(a:Matrix, b:Matrix):Void
```

Inline version of `multiply3x3`.

### multiply3x4

```haxe
function multiply3x4(a:Matrix, b:Matrix):Void
```

Sets `this` to `a * b` for affine matrixes (the last column is assumed to be `0, 0, 0, 1`). Faster than `multiply`.

### multiply3x4inline

```haxe
inline function multiply3x4inline(a:Matrix, b:Matrix):Void
```

Inline version of `multiply3x4`.

### multiply

```haxe
function multiply(a:Matrix, b:Matrix):Void
```

Sets `this` to `a * b`: the transformation `a` followed by `b`. `this` can be `a` or `b`.

### multiplyValue

```haxe
function multiplyValue(v:Float):Void
```

Multiplies all the values by `v`.

### invert

```haxe
inline function invert():Void
```

Inverts the matrix.

### getInverse

```haxe
function getInverse(?m:Matrix):Null<Matrix>
```

Returns the inverse of the matrix.
- **param** `m` An optional matrix to store the result in.

### getDeterminant

```haxe
inline function getDeterminant():Float
```

Returns the determinant.

### inverse3x4

```haxe
function inverse3x4(m:Matrix):Void
```

Sets `this` to the inverse of the affine matrix `m` (faster than `initInverse`).

### initInverse

```haxe
function initInverse(m:Matrix):Void
```

Sets `this` to the inverse of `m`.

### initInverse3x3

```haxe
function initInverse3x3(m:Matrix):Void
```

Sets `this` to the inverse of the 3x3 part of `m`.

### front

```haxe
inline function front():Vector
```

Returns the normalized X axis (first row): the direction the transformation points to.

### right

```haxe
inline function right():Vector
```

Returns the normalized Y axis (second row).

### up

```haxe
inline function up():Vector
```

Returns the normalized Z axis (third row).

### transpose

```haxe
function transpose():Void
```

Transposes the matrix.

### clone

```haxe
function clone():Matrix
```

Returns a copy.

### load

```haxe
function load(m:Matrix):Void
```

Copies the values of `m`.

### loadValues

```haxe
function loadValues(a:Array<Float>):Void
```

Sets the 16 values from an array, row by row.

### getFloats

```haxe
function getFloats():Array<Float>
```

Returns the 16 values, row by row.

### getDirection

```haxe
function getDirection():Vector
```

Returns the direction of the X axis of the rotation, without the scale.

### getEulerAngles

```haxe
function getEulerAngles():Vector
```

Extracts Euler rotation angles from rotation matrix

### toString

```haxe
function toString():String
```

Returns a string representation of the values.

### colorHue

```haxe
function colorHue(hue:Float):Void
```

For color matrixes: rotates the hue by `hue` radians.

### colorSaturate

```haxe
function colorSaturate(sat:Float):Void
```

For color matrixes: changes the saturation (`0` keeps it, `-1` makes it grey).

### colorContrast

```haxe
function colorContrast(contrast:Float):Void
```

For color matrixes: changes the contrast (`0` keeps it).

### colorLightness

```haxe
function colorLightness(lightness:Float):Void
```

For color matrixes: adds `lightness` to the color components.

### colorGain

```haxe
function colorGain(color:Int, alpha:Float):Void
```

For color matrixes: blends the color towards `color` (`0xRRGGBB`) by `alpha`.

### colorBits

```haxe
function colorBits(bits:Int, blend:Float):Void
```

For color matrixes: mixes the channels according to `bits` (bit `i * 3 + j` copies the input channel `i` to the output channel `j`), blended by `blend`.

### colorAdd

```haxe
inline function colorAdd(c:Int):Void
```

For color matrixes: adds the color `c` (`0xRRGGBB`).

### colorSet

```haxe
inline function colorSet(c:Int, ?alpha:Float = 1.):Void
```

For color matrixes: outputs the constant color `c` (`0xRRGGBB`) with the alpha multiplied by `alpha`.

### adjustColor

```haxe
function adjustColor(col:ColorAdjust):Void
```

For color matrixes: applies the hue, saturation, contrast, lightness and gain adjustments of `col`.

### toMatrix2D

```haxe
inline function toMatrix2D(?m:h2d.col.Matrix):Null<h2d.col.Matrix>
```

Returns the 2D affine part of the matrix as a `h2d.col.Matrix`.

### decomposeMatrix

```haxe
function decomposeMatrix(inMatrix:Matrix):Void
```

Extract the rotation from `inMatrix` and stores it as a quaternion inside the [m12,m13,m21,m23] component
instead of the rotation being mixed with the scale.

### recomposeMatrix

```haxe
function recomposeMatrix(inMatrix:Matrix):Void
```

Inverts the operation of `decomposeMatrix`, giving back a normal transformation matrix from a decomposed one
