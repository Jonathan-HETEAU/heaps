# hxd.Perlin

**class** · package [`hxd`](README.md) · source [`hxd/Perlin.hx`](../../../../hxd/Perlin.hx)

Gradient (Perlin) noise generator in 1D, 2D and 3D, with fractal (multi-octave) and ridged variants.
Each `seed` gives a different noise. Single octave values are roughly in the `[-1, 1]` range.

## Constructor

### new

```haxe
function new():Void
```

Creates a generator.

## Variables

### repeat

```haxe
var repeat:Int
```

The period of the noise in grid cells along X and Y, to make it tile. No tiling by default.

### normalize

```haxe
var normalize:Bool
```

Keep result in the [-1, 1] range

## Methods

### adjustScale

```haxe
function adjustScale(size:Int, scale:Float):Float
```

Sets `repeat` so that a noise sampled at `x * scale` tiles over `size` units, and returns the corrected scale to use.

### gradient3D

```haxe
function gradient3D(seed:Int, x:Float, y:Float, z:Float):Float
```

Returns a single octave of 3D noise at the given position.

### gradient1D

```haxe
function gradient1D(seed:Int, x:Float):Float
```

Returns a single octave of 1D noise at the given position.

### gradient

```haxe
function gradient(seed:Int, x:Float, y:Float):Float
```

Returns a single octave of 2D noise at the given position.

### inlineGradient

```haxe
inline function inlineGradient(seed:Int, x:Float, y:Float):Float
```

Inlined version of `gradient`.

### perlin

```haxe
function perlin(seed:Int, x:Float, y:Float, octaves:Int, ?persist:Float = 0.5, ?lacunarity:Float = 2.0):Float
```

Returns fractal 2D noise: the sum of `octaves` layers of `gradient`, each one with its amplitude multiplied by `persist` and its frequency by `lacunarity`.
The result is divided by the total amplitude if `normalize` is set.

### perlin1D

```haxe
function perlin1D(seed:Int, x:Float, octaves:Int, ?persist:Float = 0.5, ?lacunarity:Float = 2.0):Float
```

Returns fractal 1D noise, like `perlin`.

### ridged

```haxe
function ridged(seed:Int, x:Float, y:Float, octaves:Int, ?offset:Float = 0.5, ?gain:Float = 2.0, ?persist:Float = 0.5, ?lacunarity:Float = 2.0):Float
```

Returns ridged multifractal 2D noise, which produces sharp crests (useful for mountains).

### thresholdValue

```haxe
function thresholdValue(p:Float):Float
```

Converts a desired probability in the [0,1] range into the corresponding perlin value that we must test against for threshold.

### maxValue

```haxe
function maxValue(octaves:Int, persist:Float):Float
```

Returns the total amplitude of `octaves` layers with the given `persist`: the maximum absolute value of a non normalized `perlin`.
