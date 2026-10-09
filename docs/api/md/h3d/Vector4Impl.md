# h3d.Vector4Impl

**class** · package [`h3d`](README.md) · module `h3d.Vector4` · source [`h3d/Vector4.hx`](../../../../h3d/Vector4.hx)

A 4 floats vector. Everytime a Vector is returned, it means a copy is created.

## Constructor

### new

```haxe
inline function new(?x:Float = 0., ?y:Float = 0., ?z:Float = 0., ?w:Float = 1.):Void
```

Creates a vector with the given components (W is 1 by default).

## Variables

### x

```haxe
var x:Float
```

The X component.

### y

```haxe
var y:Float
```

The Y component.

### z

```haxe
var z:Float
```

The Z component.

### w

```haxe
var w:Float
```

The W component.

### r

```haxe
var r(get, set):Float
```

The red component, alias for `x`.

### g

```haxe
var g(get, set):Float
```

The green component, alias for `y`.

### b

```haxe
var b(get, set):Float
```

The blue component, alias for `z`.

### a

```haxe
var a(get, set):Float
```

The alpha component, alias for `w`.

## Methods

### dot4

```haxe
inline function dot4(v:Vector4):Float
```

Returns the dot product of the 4 components with `v`.

### dot3

```haxe
inline function dot3(v:Vector4):Float
```

Returns the dot product of the X, Y and Z components with `v`.

### scale3

```haxe
inline function scale3(f:Float):Void
```

Multiplies the X, Y and Z components by `f`.

### scale4

```haxe
inline function scale4(f:Float):Void
```

Multiplies the 4 components by `f`.

### sub

```haxe
inline function sub(v:Vector4):Vector4
```

Returns `this - v` (4 components) as a new vector.

### add

```haxe
inline function add(v:Vector4):Vector4
```

Returns `this + v` (4 components) as a new vector.

### equals

```haxe
inline function equals(v:Vector4):Bool
```

Tells if all the components are equal to those of `v`.

### cross

```haxe
inline function cross(v:Vector4):Vector4
```

Returns the cross product of the X, Y and Z components (left-handed), with W set to 1.

### set

```haxe
inline function set(?x:Float = 0., ?y:Float = 0., ?z:Float = 0., ?w:Float = 1.):Void
```

Sets the components (W is 1 by default).

### load

```haxe
inline function load(v:Vector4):Void
```

Copies the components of `v`.

### lerp

```haxe
inline function lerp(v1:Vector4, v2:Vector4, k:Float):Void
```

Sets the 4 components to the linear interpolation between `v1` and `v2` (`k` from `0` to `1`).

### transform

```haxe
inline function transform(m:Matrix):Void
```

Transforms the 4 components by the matrix `m`.

### transformed

```haxe
inline function transformed(m:Matrix):Vector4
```

Returns a copy of the vector with its 4 components transformed by `m`.

### transform3x4

```haxe
inline function transform3x4(m:Matrix):Void
```

Transforms the vector by `m`, ignoring the last column of the matrix (W is unchanged).

### transformed3x4

```haxe
inline function transformed3x4(m:Matrix):Vector4
```

Returns a copy transformed by `m`, ignoring the last column of the matrix (W is set to 1).

### transform3x3

```haxe
inline function transform3x3(m:Matrix):Void
```

Transforms the X, Y and Z components by the rotation and scale of `m`.

### transformed3x3

```haxe
inline function transformed3x3(m:Matrix):Vector4
```

Returns a copy with its X, Y and Z components transformed by the rotation and scale of `m`.

### clone

```haxe
inline function clone():Vector4
```

Returns a copy of the vector.

### toVector

```haxe
inline function toVector():Vector
```

Returns a `Vector` with the X, Y and Z components.

### toString

```haxe
function toString():String
```

Returns a string representation of the components.

### project

```haxe
inline function project(m:Matrix):Void
```

Transforms the vector by the projection matrix `m` and divides by the resulting W (perspective division).

### setColor

```haxe
inline function setColor(c:Int):Void
```

Sets the color from an integer in `0xAARRGGBB` format (components from `0` to `1`).

### makeColor

```haxe
function makeColor(hue:Float, ?saturation:Float = 1., ?brightness:Float = 0.5):Void
```

Sets the color from a hue (in radians), a saturation and a brightness (HSL), from `0` to `1`.

### toColor

```haxe
inline function toColor():Int
```

Returns the color as an integer in `0xAARRGGBB` format (alpha is `0xFF` for a `Vector`).

### toColorHSL

```haxe
function toColorHSL():Vector4
```

Returns the hue (`0` to `1`), saturation and lightness of the color.

### toColorHSV

```haxe
function toColorHSV():Vector4
```

Returns the hue (`0` to `1`), saturation and value of the color.
