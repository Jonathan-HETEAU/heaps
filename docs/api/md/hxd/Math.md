# hxd.Math

**class** · package [`hxd`](README.md) · source [`hxd/Math.hx`](../../../../hxd/Math.hx)

Math helpers, inlined where possible: most functions call `std.Math`, with `Int` and `Float` variants and game-oriented additions (angles, interpolation, random).

## Static variables

### PI

```haxe
static inline var PI:Float = 3.14159265358979323
```

The ratio of a circle's circumference to its diameter.

### EPSILON

```haxe
static inline var EPSILON:Float = 1e-10
```

A very small value (`1e-10`), used to compare floats.

### EPSILON2

```haxe
static inline var EPSILON2:Float = 1e-20
```

The square of `EPSILON`, used to compare squared distances.

### POSITIVE_INFINITY

```haxe
static var POSITIVE_INFINITY(get, null):Float
```

The positive infinity value.

### NEGATIVE_INFINITY

```haxe
static var NEGATIVE_INFINITY(get, null):Float
```

The negative infinity value.

### NaN

```haxe
static var NaN(get, null):Float
```

The "not a number" value.

## Static methods

### isNaN

```haxe
static inline function isNaN(v:Float):Bool
```

Tells if `v` is `NaN`.

### isFinite

```haxe
static inline function isFinite(v:Float):Bool
```

Tells if `v` is neither infinite nor `NaN`.

### fmt

```haxe
static function fmt(v:Float):Float
```

Rounds `v` to 4 significant digits, and returns `0` for values under `1e-6`. Useful to print values.

### exp

```haxe
static inline function exp(f:Float):Float
```

Returns e raised to the power `f`.

### log

```haxe
static inline function log(f:Float):Float
```

Returns the natural logarithm of `f`.

### log2

```haxe
static inline function log2(f:Float):Float
```

Returns the base 2 logarithm of `f`.

### log10

```haxe
static inline function log10(f:Float):Float
```

Returns the base 10 logarithm of `f`.

### logBase

```haxe
static inline function logBase(f:Float, base:Float):Float
```

Returns the logarithm of `f` in the given base.

### floor

```haxe
static inline function floor(f:Float):Int
```

Returns the largest integer less than or equal to `f`.

### ffloor

```haxe
static inline function ffloor(f:Float):Float
```

Returns the largest integer less than or equal to `f`, as a `Float`.

### ceil

```haxe
static inline function ceil(f:Float):Int
```

Returns the smallest integer greater than or equal to `f`.

### round

```haxe
static inline function round(f:Float):Int
```

Returns `f` rounded to the nearest integer.

### fround

```haxe
static inline function fround(f:Float):Float
```

Returns `f` rounded to the nearest integer, as a `Float`.

### clamp

```haxe
static inline function clamp(f:Float, ?min:Float = 0., ?max:Float = 1.):Float
```

Returns `f` limited to the `[min, max]` range (`[0, 1]` by default).

### pow

```haxe
static inline function pow(v:Float, p:Float):Float
```

Returns `v` raised to the power `p`.

### cos

```haxe
static inline function cos(f:Float):Float
```

Returns the cosine of the angle `f`, in radians.

### sin

```haxe
static inline function sin(f:Float):Float
```

Returns the sine of the angle `f`, in radians.

### tan

```haxe
static inline function tan(f:Float):Float
```

Returns the tangent of the angle `f`, in radians.

### acos

```haxe
static inline function acos(f:Float):Float
```

Returns the arc cosine of `f`, in radians.

### asin

```haxe
static inline function asin(f:Float):Float
```

Returns the arc sine of `f`, in radians.

### atan

```haxe
static inline function atan(f:Float):Float
```

Returns the arc tangent of `f`, in radians.

### sqrt

```haxe
static inline function sqrt(f:Float):Float
```

Returns the square root of `f`.

### invSqrt

```haxe
static inline function invSqrt(f:Float):Float
```

Returns `1 / sqrt(f)`.

### atan2

```haxe
static inline function atan2(dy:Float, dx:Float):Float
```

Returns the angle of the vector `(dx, dy)`, in radians in the `[-PI, PI]` range.

### abs

```haxe
static inline function abs(f:Float):Float
```

Returns the absolute value of `f`.

### max

```haxe
static inline function max(a:Float, b:Float):Float
```

Returns the greatest of `a` and `b`.

### min

```haxe
static inline function min(a:Float, b:Float):Float
```

Returns the smallest of `a` and `b`.

### iabs

```haxe
static inline function iabs(i:Int):Int
```

Returns the absolute value of the integer `i`.

### imax

```haxe
static inline function imax(a:Int, b:Int):Int
```

Returns the greatest of the integers `a` and `b`.

### imin

```haxe
static inline function imin(a:Int, b:Int):Int
```

Returns the smallest of the integers `a` and `b`.

### iclamp

```haxe
static inline function iclamp(v:Int, min:Int, max:Int):Int
```

Returns the integer `v` limited to the `[min, max]` range.

### lerp

```haxe
static inline function lerp(a:Float, b:Float, k:Float):Float
```

Linear interpolation between two values. When k is 0 a is returned, when it's 1, b is returned.

### inverseLerp

```haxe
static inline function inverseLerp(a:Float, b:Float, val:Float):Float
```

Returns a value between 0 and 1, that determines where val lies between a and b.

### ease

```haxe
static inline function ease(a:Float, b:Float, k:Float, easing:Float):Float
```

Similar to linear interpolation (k is between [0,1]), but can be controled with easing parameter. When easing is 0 it's linear.

### easeFactor

```haxe
static inline function easeFactor(k:Float, easing:Float):Float
```

ease = lerp(a,b,easeFactor(k,easing))

### lerpTime

```haxe
static inline function lerpTime(a:Float, b:Float, k:Float, dt:Float):Float
```

Same as lerp but is scaled based on current FPS, using current elapsed time in seconds.

### bitCount

```haxe
static inline function bitCount(v:Int):Int
```

Returns the number of bits set to 1 in `v`.

### isPOT

```haxe
static inline function isPOT(v:Int):Bool
```

Tells if `v` is a power of two (also true for `0`).

### nextPOT

```haxe
static inline function nextPOT(v:Int):Int
```

Returns the smallest power of two greater than or equal to `v`.

### distanceSq

```haxe
static inline function distanceSq(dx:Float, dy:Float, ?dz:Float = 0.):Float
```

Returns the squared length of the vector `(dx, dy, dz)`.

### distance

```haxe
static inline function distance(dx:Float, dy:Float, ?dz:Float = 0.):Float
```

Returns the length of the vector `(dx, dy, dz)`.

### colorLerp

```haxe
static function colorLerp(c1:Int, c2:Int, k:Float):Int
```

Linear interpolation between two colors (ARGB).

### angle

```haxe
static inline function angle(da:Float):Float
```

Wraps an angle into the `]-PI, PI]` range. Can be used to measure the direction between two angles : if Math.angle(A-B) < 0 go left else go right.

### angleLerp

```haxe
static inline function angleLerp(a:Float, b:Float, k:Float):Float
```

Interpolates from angle `a` to angle `b` by `k`, using the shortest way around the circle.

### angleMove

```haxe
static inline function angleMove(a:Float, b:Float, max:Float):Float
```

Move angle a towards angle b with a max increment. Return the new angle.

### valueMove

```haxe
static inline function valueMove(v:Float, target:Float, max:Float):Float
```

Move a value towards the given target using the max increment. Return the new value.

### shuffle

```haxe
static inline function shuffle(a:Array<shuffle.T>):Void
```

Shuffles the array in place, using `Std.random`.

### random

```haxe
static inline function random(?max:Float = 1.0):Float
```

Returns a random float between `0` (included) and `max` (excluded).

### srand

```haxe
static function srand(?max:Float = 1.0):Float
```

Returns a signed random between -max and max (both included).

### b2f

```haxe
static inline function b2f(v:Int):Float
```

* takes an int , masks it and devide so that it safely maps 0...255 to 0...1.0
* @paramv an int between 0 and 255 will be masked
* @return a float between( 0 and 1)

### f2b

```haxe
static inline function f2b(v:Float):Int
```

* takes a float , clamps it and multipy so that it safely maps 0...1 to 0...255.0
* @param   f a float
* @return an int [0...255]

### umod

```haxe
static inline function umod(value:Int, modulo:Int):Int
```

* returns the modulo but always positive

### ufmod

```haxe
static inline function ufmod(value:Float, modulo:Float):Float
```

* returns the modulo but always positive

### degToRad

```haxe
static inline function degToRad(deg:Float):Float
```

* Convert degrees to radians

### radToDeg

```haxe
static inline function radToDeg(rad:Float):Float
```

* Convert radians to degrees
