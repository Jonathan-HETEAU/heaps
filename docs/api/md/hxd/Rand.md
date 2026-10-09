# hxd.Rand

**class** · package [`hxd`](README.md) · source [`hxd/Rand.hx`](../../../../hxd/Rand.hx)

`hxd.Rand` is a seeded random number generator, that allows to get always the same results starting from a given seed.

## Constructor

### new

```haxe
function new(seed:Int):Void
```

Create a random generator with a seed.

## Static methods

### hash

```haxe
static function hash(n:Int, ?seed:Int = 5381):Int
```

### inlineHash

```haxe
static inline function inlineHash(n:Int, seed:Int):Int
```

### create

```haxe
static function create():Rand
```

Create a randomized hxd.Rand (using a Std.random number as seed)

## Methods

### init

```haxe
function init(seed:Int):Void
```

Initialize the random generator with a seed.

### random

```haxe
inline function random(n:Int):Int
```

Return a random integer between 0 and n (excluded).

### shuffle

```haxe
inline function shuffle(a:Array<shuffle.T>):Void
```

Shuffle values of an array.

### rand

```haxe
inline function rand():Float
```

Return a random float between 0.0 and 1.0 (excluded)

### srand

```haxe
inline function srand(?scale:Float = 1.0):Float
```

Return a random float between -scale and +scale (excluded)
