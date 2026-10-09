# h3d.parts.Particle

**class** · package [`h3d.parts`](README.md) · source [`h3d/parts/Particle.hx`](../../../../../h3d/parts/Particle.hx)

Implements: [`h3d.parts.Randomized`](Randomized.md)

A particle of a `Particles` set or an `Emitter`.

## Constructor

### new

```haxe
function new():Void
```

Creates a particle.

## Variables

### x

```haxe
var x:Float
```

The X position.

### y

```haxe
var y:Float
```

The Y position.

### z

```haxe
var z:Float
```

The Z position.

### r

```haxe
var r:Float
```

The red component of the color.

### g

```haxe
var g:Float
```

The green component of the color.

### b

```haxe
var b:Float
```

The blue component of the color.

### a

```haxe
var a:Float
```

The alpha component of the color.

### alpha

```haxe
var alpha(get, set):Float
```

Alias for `a`.

### frame

```haxe
var frame:Int
```

The index of the tile in `Particles.frames`.

### size

```haxe
var size:Float
```

The size.

### ratio

```haxe
var ratio:Float
```

The height to width ratio.

### rotation

```haxe
var rotation:Float
```

The rotation, in radians.

### prev

```haxe
var prev:Particle
```

The previous particle of the set.

### next

```haxe
var next:Particle
```

The next particle of the set.

### time

```haxe
var time:Float
```

The time in the particle life, from `0` to `1` (used by emitters).

### lifeTimeFactor

```haxe
var lifeTimeFactor:Float
```

The inverse of the particle life duration (used by emitters).

### dx

```haxe
var dx:Float
```

The X component of the velocity.

### dy

```haxe
var dy:Float
```

The Y component of the velocity.

### dz

```haxe
var dz:Float
```

The Z component of the velocity.

### fx

```haxe
var fx:Float
```

The X component of the force.

### fy

```haxe
var fy:Float
```

The Y component of the force.

### fz

```haxe
var fz:Float
```

The Z component of the force.

### randIndex

```haxe
var randIndex:Int
```

The index of the next random value of `randValues`.

### randValues

```haxe
var randValues:Array<Float>
```

The random values of the particle, so that `VRandom` values are stable over its life.

## Methods

### setColor

```haxe
function setColor(color:Int, ?alpha:Float = 1.):Void
```

Sets the color, from `0xRRGGBB`, and the alpha.

### remove

```haxe
function remove():Void
```

Removes the particle from its set.

### eval

```haxe
inline function eval(v:Value, time:Float):Float
```

Evaluates the value `v` at `time` for this particle.

### rand

```haxe
function rand():Float
```

Returns the next random value of the particle (generated once and kept).
