# h3d.Vector4Impl

**class** · package [`h3d`](README.md) · module `h3d.Vector4` · source [`h3d/Vector4.hx`](../../../../h3d/Vector4.hx)

A 4 floats vector. Everytime a Vector is returned, it means a copy is created.

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

### a

```haxe
var a(get, set):Float
```

## Methods

### dot4

```haxe
inline function dot4(v:Vector4):Float
```

### dot3

```haxe
inline function dot3(v:Vector4):Float
```

### scale3

```haxe
inline function scale3(f:Float):Void
```

### scale4

```haxe
inline function scale4(f:Float):Void
```

### sub

```haxe
inline function sub(v:Vector4):Vector4
```

### add

```haxe
inline function add(v:Vector4):Vector4
```

### equals

```haxe
inline function equals(v:Vector4):Bool
```

### cross

```haxe
inline function cross(v:Vector4):Vector4
```

### set

```haxe
inline function set(?x:Float = 0., ?y:Float = 0., ?z:Float = 0., ?w:Float = 1.):Void
```

### load

```haxe
inline function load(v:Vector4):Void
```

### lerp

```haxe
inline function lerp(v1:Vector4, v2:Vector4, k:Float):Void
```

### transform

```haxe
inline function transform(m:Matrix):Void
```

### transformed

```haxe
inline function transformed(m:Matrix):Vector4
```

### transform3x4

```haxe
inline function transform3x4(m:Matrix):Void
```

### transformed3x4

```haxe
inline function transformed3x4(m:Matrix):Vector4
```

### transform3x3

```haxe
inline function transform3x3(m:Matrix):Void
```

### transformed3x3

```haxe
inline function transformed3x3(m:Matrix):Vector4
```

### clone

```haxe
inline function clone():Vector4
```

### toVector

```haxe
inline function toVector():Vector
```

### toString

```haxe
function toString():String
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
function toColorHSL():Vector4
```

### toColorHSV

```haxe
function toColorHSV():Vector4
```
