# h3d.Quat

**class** · package [`h3d`](README.md) · source [`h3d/Quat.hx`](../../../../h3d/Quat.hx)

## Constructor

### new

```haxe
inline function new(?x:Float = 0., ?y:Float = 0., ?z:Float = 0., ?w:Float = 1.):Void
```

## Variables

### x

```haxe
var x:Float
```

### y

```haxe
var y:Float
```

### z

```haxe
var z:Float
```

### w

```haxe
var w:Float
```

## Methods

### set

```haxe
inline function set(x:Float, y:Float, z:Float, w:Float):Void
```

### identity

```haxe
inline function identity():Void
```

### lengthSq

```haxe
inline function lengthSq():Float
```

### length

```haxe
inline function length():Float
```

### load

```haxe
inline function load(q:Quat):Void
```

### clone

```haxe
inline function clone():Quat
```

### initMoveTo

```haxe
function initMoveTo(from:Vector, to:Vector):Void
```

### initNormal

```haxe
function initNormal(dir:h3d.col.Point, ?rotate:Float = 0.0):Void
```

### initDirection

```haxe
function initDirection(dir:Vector, ?up:Vector):Void
```

### initRotateAxis

```haxe
function initRotateAxis(x:Float, y:Float, z:Float, a:Float):Void
```

### initRotateMatrix

```haxe
function initRotateMatrix(m:Matrix):Void
```

### normalize

```haxe
function normalize():Void
```

### initRotation

```haxe
function initRotation(ax:Float, ay:Float, az:Float):Void
```

### multiply

```haxe
function multiply(q1:Quat, q2:Quat):Void
```

### toEuler

```haxe
function toEuler():Vector
```

### lerp

```haxe
inline function lerp(q1:Quat, q2:Quat, v:Float, ?nearest:Bool = false):Void
```

### slerp

```haxe
function slerp(q1:Quat, q2:Quat, v:Float):Void
```

### conjugate

```haxe
inline function conjugate():Void
```

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

### getDirection

```haxe
inline function getDirection():Vector
```

### getUpAxis

```haxe
inline function getUpAxis():Vector
```

### getRightAxis

```haxe
inline function getRightAxis():Vector
```

### toMatrix

```haxe
function toMatrix(?m:Matrix):Null<Matrix>
```

Save to a Left-Handed matrix

### toString

```haxe
function toString():String
```

### weightedBlend

```haxe
function weightedBlend(sourceQuats:Array<Quat>, weights:Array<Float>, referenceQuat:Quat):Void
```

Blends the sourceQuats together with the given weights and store the result in `this`.
ReferenceQuat is the default rotation to use as the base for the blend
(for example the default rotation of a bone in a skeletal mesh)
