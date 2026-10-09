# h3d.MatrixImpl

**class** · package [`h3d`](README.md) · module `h3d.Matrix` · source [`h3d/Matrix.hx`](../../../../h3d/Matrix.hx)

## Constructor

### new

```haxe
inline function new():Void
```

## Variables

### _11

```haxe
var _11:Float
```

### _12

```haxe
var _12:Float
```

### _13

```haxe
var _13:Float
```

### _14

```haxe
var _14:Float
```

### _21

```haxe
var _21:Float
```

### _22

```haxe
var _22:Float
```

### _23

```haxe
var _23:Float
```

### _24

```haxe
var _24:Float
```

### _31

```haxe
var _31:Float
```

### _32

```haxe
var _32:Float
```

### _33

```haxe
var _33:Float
```

### _34

```haxe
var _34:Float
```

### _41

```haxe
var _41:Float
```

### _42

```haxe
var _42:Float
```

### _43

```haxe
var _43:Float
```

### _44

```haxe
var _44:Float
```

### tx

```haxe
var tx(get, set):Float
```

### ty

```haxe
var ty(get, set):Float
```

### tz

```haxe
var tz(get, set):Float
```

## Methods

### equal

```haxe
function equal(other:Matrix):Bool
```

### zero

```haxe
function zero():Void
```

### identity

```haxe
function identity():Void
```

### isIdentity

```haxe
function isIdentity():Bool
```

### isIdentityEpsilon

```haxe
function isIdentityEpsilon(e:Float):Bool
```

### initRotationX

```haxe
function initRotationX(a:Float):Void
```

### initRotationY

```haxe
function initRotationY(a:Float):Void
```

### initRotationZ

```haxe
function initRotationZ(a:Float):Void
```

### initTranslation

```haxe
function initTranslation(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Void
```

### initScale

```haxe
function initScale(?x:Float = 1., ?y:Float = 1., ?z:Float = 1.):Void
```

### initRotationAxis

```haxe
inline function initRotationAxis(axis:Vector, angle:Float):Void
```

### initRotation

```haxe
function initRotation(x:Float, y:Float, z:Float):Void
```

### translate

```haxe
function translate(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Void
```

### scale

```haxe
function scale(?x:Float = 1., ?y:Float = 1., ?z:Float = 1.):Void
```

### rotate

```haxe
function rotate(x:Float, y:Float, z:Float):Void
```

### rotateAxis

```haxe
function rotateAxis(axis:Vector, angle:Float):Void
```

### getPosition

```haxe
inline function getPosition():Vector
```

### setPosition

```haxe
inline function setPosition(v:Vector):Void
```

### prependTranslation

```haxe
function prependTranslation(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Void
```

### getScale

```haxe
inline function getScale():Vector
```

### prependRotation

```haxe
function prependRotation(x:Float, y:Float, z:Float):Void
```

### prependRotationAxis

```haxe
function prependRotationAxis(axis:Vector, angle:Float):Void
```

### prependScale

```haxe
function prependScale(?sx:Float = 1., ?sy:Float = 1., ?sz:Float = 1.):Void
```

### multiply3x3

```haxe
function multiply3x3(a:Matrix, b:Matrix):Void
```

### multiply3x3inline

```haxe
inline function multiply3x3inline(a:Matrix, b:Matrix):Void
```

### multiply3x4

```haxe
function multiply3x4(a:Matrix, b:Matrix):Void
```

### multiply3x4inline

```haxe
inline function multiply3x4inline(a:Matrix, b:Matrix):Void
```

### multiply

```haxe
function multiply(a:Matrix, b:Matrix):Void
```

### multiplyValue

```haxe
function multiplyValue(v:Float):Void
```

### invert

```haxe
inline function invert():Void
```

### getInverse

```haxe
function getInverse(?m:Matrix):Null<Matrix>
```

### getDeterminant

```haxe
inline function getDeterminant():Float
```

### inverse3x4

```haxe
function inverse3x4(m:Matrix):Void
```

### initInverse

```haxe
function initInverse(m:Matrix):Void
```

### initInverse3x3

```haxe
function initInverse3x3(m:Matrix):Void
```

### front

```haxe
inline function front():Vector
```

### right

```haxe
inline function right():Vector
```

### up

```haxe
inline function up():Vector
```

### transpose

```haxe
function transpose():Void
```

### clone

```haxe
function clone():Matrix
```

### load

```haxe
function load(m:Matrix):Void
```

### loadValues

```haxe
function loadValues(a:Array<Float>):Void
```

### getFloats

```haxe
function getFloats():Array<Float>
```

### getDirection

```haxe
function getDirection():Vector
```

### getEulerAngles

```haxe
function getEulerAngles():Vector
```

Extracts Euler rotation angles from rotation matrix

### toString

```haxe
function toString():String
```

### colorHue

```haxe
function colorHue(hue:Float):Void
```

### colorSaturate

```haxe
function colorSaturate(sat:Float):Void
```

### colorContrast

```haxe
function colorContrast(contrast:Float):Void
```

### colorLightness

```haxe
function colorLightness(lightness:Float):Void
```

### colorGain

```haxe
function colorGain(color:Int, alpha:Float):Void
```

### colorBits

```haxe
function colorBits(bits:Int, blend:Float):Void
```

### colorAdd

```haxe
inline function colorAdd(c:Int):Void
```

### colorSet

```haxe
inline function colorSet(c:Int, ?alpha:Float = 1.):Void
```

### adjustColor

```haxe
function adjustColor(col:ColorAdjust):Void
```

### toMatrix2D

```haxe
inline function toMatrix2D(?m:h2d.col.Matrix):Null<h2d.col.Matrix>
```

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
