# hxd.Math

**class** · package [`hxd`](README.md) · source [`hxd/Math.hx`](../../../../hxd/Math.hx)

## Static variables

### PI

```haxe
static inline var PI:Float = 3.14159265358979323
```

### EPSILON

```haxe
static inline var EPSILON:Float = 1e-10
```

### EPSILON2

```haxe
static inline var EPSILON2:Float = 1e-20
```

### POSITIVE_INFINITY

```haxe
static var POSITIVE_INFINITY(get, null):Float
```

### NEGATIVE_INFINITY

```haxe
static var NEGATIVE_INFINITY(get, null):Float
```

### NaN

```haxe
static var NaN(get, null):Float
```

## Static methods

### isNaN

```haxe
static inline function isNaN(v:Float):Bool
```

### isFinite

```haxe
static inline function isFinite(v:Float):Bool
```

### fmt

```haxe
static function fmt(v:Float):Float
```

### exp

```haxe
static inline function exp(f:Float):Float
```

### log

```haxe
static inline function log(f:Float):Float
```

### log2

```haxe
static inline function log2(f:Float):Float
```

### log10

```haxe
static inline function log10(f:Float):Float
```

### logBase

```haxe
static inline function logBase(f:Float, base:Float):Float
```

### floor

```haxe
static inline function floor(f:Float):Int
```

### ffloor

```haxe
static inline function ffloor(f:Float):Float
```

### ceil

```haxe
static inline function ceil(f:Float):Int
```

### round

```haxe
static inline function round(f:Float):Int
```

### fround

```haxe
static inline function fround(f:Float):Float
```

### clamp

```haxe
static inline function clamp(f:Float, ?min:Float = 0., ?max:Float = 1.):Float
```

### pow

```haxe
static inline function pow(v:Float, p:Float):Float
```

### cos

```haxe
static inline function cos(f:Float):Float
```

### sin

```haxe
static inline function sin(f:Float):Float
```

### tan

```haxe
static inline function tan(f:Float):Float
```

### acos

```haxe
static inline function acos(f:Float):Float
```

### asin

```haxe
static inline function asin(f:Float):Float
```

### atan

```haxe
static inline function atan(f:Float):Float
```

### sqrt

```haxe
static inline function sqrt(f:Float):Float
```

### invSqrt

```haxe
static inline function invSqrt(f:Float):Float
```

### atan2

```haxe
static inline function atan2(dy:Float, dx:Float):Float
```

### abs

```haxe
static inline function abs(f:Float):Float
```

### max

```haxe
static inline function max(a:Float, b:Float):Float
```

### min

```haxe
static inline function min(a:Float, b:Float):Float
```

### iabs

```haxe
static inline function iabs(i:Int):Int
```

### imax

```haxe
static inline function imax(a:Int, b:Int):Int
```

### imin

```haxe
static inline function imin(a:Int, b:Int):Int
```

### iclamp

```haxe
static inline function iclamp(v:Int, min:Int, max:Int):Int
```

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

### isPOT

```haxe
static inline function isPOT(v:Int):Bool
```

### nextPOT

```haxe
static inline function nextPOT(v:Int):Int
```

### distanceSq

```haxe
static inline function distanceSq(dx:Float, dy:Float, ?dz:Float = 0.):Float
```

### distance

```haxe
static inline function distance(dx:Float, dy:Float, ?dz:Float = 0.):Float
```

### colorLerp

```haxe
static function colorLerp(c1:Int, c2:Int, k:Float):Int
```

Linear interpolation between two colors (ARGB).

### angle

```haxe
static inline function angle(da:Float):Float
```

### angleLerp

```haxe
static inline function angleLerp(a:Float, b:Float, k:Float):Float
```

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

### random

```haxe
static inline function random(?max:Float = 1.0):Float
```

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
