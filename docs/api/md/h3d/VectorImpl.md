# h3d.VectorImpl

**class** · package [`h3d`](README.md) · module `h3d.Vector` · source [`h3d/Vector.hx`](../../../../h3d/Vector.hx)

A 3 floats vector. Everytime a Vector is returned, it means a copy is created.

## Constructor

### new

```haxe
inline function new(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Void
```

Creates a vector with the given components.

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

## Methods

### distance

```haxe
inline function distance(v:Vector):Float
```

Returns the distance to `v`.

### distanceSq

```haxe
inline function distanceSq(v:Vector):Float
```

Returns the squared distance to `v` (faster than `distance`).

### sub

```haxe
inline function sub(v:Vector):Vector
```

Returns `this - v` as a new vector.

### add

```haxe
inline function add(v:Vector):Vector
```

Returns `this + v` as a new vector.

### scaled

```haxe
inline function scaled(v:Float):Vector
```

Returns a copy of the vector multiplied by `v`.

### equals

```haxe
inline function equals(v:Vector):Bool
```

Tells if all the components are equal to those of `v`.

### cross

```haxe
inline function cross(v:Vector):Vector
```

Returns the cross product `this x v`: a vector perpendicular to both.

### dot

```haxe
inline function dot(v:Vector):Float
```

Returns the dot product with `v`.

### lengthSq

```haxe
inline function lengthSq():Float
```

Returns the squared length (faster than `length`).

### length

```haxe
inline function length():Float
```

Returns the length.

### normalize

```haxe
inline function normalize():Void
```

Scales the vector to a length of 1 (unchanged if its length is 0).

### normalized

```haxe
inline function normalized():Vector
```

Returns a copy of the vector scaled to a length of 1.

### packNormal

```haxe
inline function packNormal():Void
```

Converts a normal from the `[-1, 1]` range to the `[0, 1]` range, to store it in a texture.

### unpackNormal

```haxe
inline function unpackNormal():Void
```

Converts a normal stored in a texture from the `[0, 1]` range back to `[-1, 1]`.

### normalStrength

```haxe
inline function normalStrength(strength:Float):Void
```

Scales the X and Y components of a tangent space normal by `1 / strength` and normalizes it.

### set

```haxe
inline function set(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Void
```

Sets the components.

### load

```haxe
inline function load(v:Vector):Void
```

Copies the components of `v`.

### scale

```haxe
inline function scale(f:Float):Void
```

Multiplies the components by `f`.

### lerp

```haxe
inline function lerp(v1:Vector, v2:Vector, k:Float):Void
```

Sets the vector to the linear interpolation between `v1` and `v2` (`k` from `0` to `1`).

### min

```haxe
inline function min(v:Vector):Void
```

Sets each component to the minimum of itself and the component of `v`.

### max

```haxe
inline function max(v:Vector):Void
```

Sets each component to the maximum of itself and the component of `v`.

### transform

```haxe
inline function transform(m:Matrix):Void
```

Transforms the vector by the matrix `m` (as a point: the translation is applied).

### transformed

```haxe
inline function transformed(m:Matrix):Vector
```

Returns a copy of the vector transformed by `m` (as a point).

### transform3x3

```haxe
inline function transform3x3(m:Matrix):Void
```

Transforms the vector by the rotation and scale of `m` (as a direction: the translation is ignored).

### transformed3x3

```haxe
inline function transformed3x3(m:Matrix):Vector
```

Returns a copy of the vector transformed by the rotation and scale of `m`.

### clone

```haxe
inline function clone():Vector
```

Returns a copy of the vector.

### toVector4

```haxe
inline function toVector4():Vector4
```

Returns a `Vector4` with the same components.

### to2D

```haxe
inline function to2D():h2d.col.Point
```

Returns a 2D point with the X and Y components.

### toString

```haxe
function toString():String
```

Returns a string representation of the components.

### reflect

```haxe
inline function reflect(n:Vector):Vector
```

Returns the reflection of the vector on a surface of normal `n` (normalized).

### project

```haxe
inline function project(m:Matrix):Void
```

Transforms the vector by the projection matrix `m` and divides by the resulting W (perspective division).

### setColor

```haxe
inline function setColor(c:Int):Void
```

Sets the color from an integer in `0xRRGGBB` format (components from `0` to `1`).

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
function toColorHSL():Vector
```

Returns the hue (`0` to `1`), saturation and lightness of the color.

### toColorHSV

```haxe
function toColorHSV():Vector
```

Returns the hue (`0` to `1`), saturation and value of the color.
