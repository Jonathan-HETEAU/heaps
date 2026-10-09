# h3d.VectorImpl

**class** · package [`h3d`](README.md) · module `h3d.Vector` · source [`h3d/Vector.hx`](../../../../h3d/Vector.hx)

A 3 floats vector. Everytime a Vector is returned, it means a copy is created.

## Constructor

### new

```haxe
inline function new(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Void
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

### r

```haxe
var r(get, set):Float
```

### g

```haxe
var g(get, set):Float
```

### b

```haxe
var b(get, set):Float
```

## Methods

### distance

```haxe
inline function distance(v:Vector):Float
```

### distanceSq

```haxe
inline function distanceSq(v:Vector):Float
```

### sub

```haxe
inline function sub(v:Vector):Vector
```

### add

```haxe
inline function add(v:Vector):Vector
```

### scaled

```haxe
inline function scaled(v:Float):Vector
```

### equals

```haxe
inline function equals(v:Vector):Bool
```

### cross

```haxe
inline function cross(v:Vector):Vector
```

### dot

```haxe
inline function dot(v:Vector):Float
```

### lengthSq

```haxe
inline function lengthSq():Float
```

### length

```haxe
inline function length():Float
```

### normalize

```haxe
inline function normalize():Void
```

### normalized

```haxe
inline function normalized():Vector
```

### packNormal

```haxe
inline function packNormal():Void
```

### unpackNormal

```haxe
inline function unpackNormal():Void
```

### normalStrength

```haxe
inline function normalStrength(strength:Float):Void
```

### set

```haxe
inline function set(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Void
```

### load

```haxe
inline function load(v:Vector):Void
```

### scale

```haxe
inline function scale(f:Float):Void
```

### lerp

```haxe
inline function lerp(v1:Vector, v2:Vector, k:Float):Void
```

### min

```haxe
inline function min(v:Vector):Void
```

### max

```haxe
inline function max(v:Vector):Void
```

### transform

```haxe
inline function transform(m:Matrix):Void
```

### transformed

```haxe
inline function transformed(m:Matrix):Vector
```

### transform3x3

```haxe
inline function transform3x3(m:Matrix):Void
```

### transformed3x3

```haxe
inline function transformed3x3(m:Matrix):Vector
```

### clone

```haxe
inline function clone():Vector
```

### toVector4

```haxe
inline function toVector4():Vector4
```

### to2D

```haxe
inline function to2D():h2d.col.Point
```

### toString

```haxe
function toString():String
```

### reflect

```haxe
inline function reflect(n:Vector):Vector
```

### project

```haxe
inline function project(m:Matrix):Void
```

### setColor

```haxe
inline function setColor(c:Int):Void
```

### makeColor

```haxe
function makeColor(hue:Float, ?saturation:Float = 1., ?brightness:Float = 0.5):Void
```

### toColor

```haxe
inline function toColor():Int
```

### toColorHSL

```haxe
function toColorHSL():Vector
```

### toColorHSV

```haxe
function toColorHSV():Vector
```
