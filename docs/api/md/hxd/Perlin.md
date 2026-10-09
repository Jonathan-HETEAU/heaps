# hxd.Perlin

**class** · package [`hxd`](README.md) · source [`hxd/Perlin.hx`](../../../../hxd/Perlin.hx)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### repeat

```haxe
var repeat:Int
```

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

### gradient3D

```haxe
function gradient3D(seed:Int, x:Float, y:Float, z:Float):Float
```

### gradient1D

```haxe
function gradient1D(seed:Int, x:Float):Float
```

### gradient

```haxe
function gradient(seed:Int, x:Float, y:Float):Float
```

### inlineGradient

```haxe
inline function inlineGradient(seed:Int, x:Float, y:Float):Float
```

### perlin

```haxe
function perlin(seed:Int, x:Float, y:Float, octaves:Int, ?persist:Float = 0.5, ?lacunarity:Float = 2.0):Float
```

### perlin1D

```haxe
function perlin1D(seed:Int, x:Float, octaves:Int, ?persist:Float = 0.5, ?lacunarity:Float = 2.0):Float
```

### ridged

```haxe
function ridged(seed:Int, x:Float, y:Float, octaves:Int, ?offset:Float = 0.5, ?gain:Float = 2.0, ?persist:Float = 0.5, ?lacunarity:Float = 2.0):Float
```

### thresholdValue

```haxe
function thresholdValue(p:Float):Float
```

Converts a desired probability in the [0,1] range into the corresponding perlin value that we must test against for threshold.

### maxValue

```haxe
function maxValue(octaves:Int, persist:Float):Float
```
