# h2d.col.PointImpl

**class** · package [`h2d.col`](README.md) · module `h2d.col.Point` · source [`h2d/col/Point.hx`](../../../../../h2d/col/Point.hx)

A simple 2D position/vector container.
- **see** `h2d.col.IPoint`

## Constructor

### new

```haxe
inline function new(?x:Float = 0., ?y:Float = 0.):Void
```

Create a new Point instance.
- **param** `x` The horizontal position of the point.
- **param** `y` The vertical position of the point.

## Variables

### x

```haxe
var x:Float
```

The horizontal position of the point.

### y

```haxe
var y:Float
```

The vertical position of the point.

## Methods

### distanceSq

```haxe
inline function distanceSq(p:Point):Float
```

Returns squared distance between this Point and given Point `p`.

### distance

```haxe
inline function distance(p:Point):Float
```

Returns a distance between this Point and given Point `p`.

### sub

```haxe
inline function sub(p:Point):Point
```

Substracts Point `p` from this Point and returns new Point with the result.

### add

```haxe
inline function add(p:Point):Point
```

Adds Point `p` to this Point and returns new Point with the result.

### scaled

```haxe
inline function scaled(v:Float):Point
```

Returns a new Point with the position of this Point multiplied by a given scalar `v`.

### equals

```haxe
inline function equals(other:Point):Bool
```

Tests if this Point position equals to `other` Point position.

### dot

```haxe
inline function dot(p:Point):Float
```

Returns a dot product between this Point and given Point `p`.

### lengthSq

```haxe
inline function lengthSq():Float
```

Returns squared length of this Point.

### length

```haxe
inline function length():Float
```

Returns length (distance to `0,0`) of this Point.

### normalize

```haxe
inline function normalize():Void
```

Normalizes the Point.

### normalized

```haxe
inline function normalized():Point
```

Returns a new Point with the normalized values of this Point.

### set

```haxe
inline function set(?x:Float = 0., ?y:Float = 0.):Void
```

Sets the Point `x,y` with given values.

### load

```haxe
inline function load(p:Point):Void
```

Copies `x,y` from given Point `p` to this Point.

### scale

```haxe
inline function scale(f:Float):Void
```

Multiplies `x,y` by scalar `f`.

### clone

```haxe
inline function clone():Point
```

Returns a copy of this Point.

### cross

```haxe
inline function cross(p:Point):Float
```

Returns a cross product between this Point and a given Point `p`.

### lerp

```haxe
inline function lerp(a:Point, b:Point, k:Float):Void
```

Sets this Point position to a result of linear interpolation between Points `p1` and `p2` at the interpolant position `k`.

### transform

```haxe
inline function transform(m:Matrix):Void
```

Applies a given Matrix `m` transformation to this Point position.

### transformed

```haxe
inline function transformed(m:Matrix):Point
```

Returns a new Point with a result of applying a Matrix `m` to this Point position.

### transform2x2

```haxe
inline function transform2x2(m:Matrix):Void
```

Applies a given 2x2 Matrix `m` transformation to this Point position.

### transformed2x2

```haxe
inline function transformed2x2(m:Matrix):Point
```

Returns a new Point with a result of applying a 2x2 Matrix `m` to this Point position.

### toIPoint

```haxe
inline function toIPoint(?scale:Float = 1.):IPoint
```

Converts this point to integer point scaled by provided scalar `scale` (rounded).

### rotate

```haxe
inline function rotate(angle:Float):Void
```

Rotates this Point around `0,0` by a given `angle`.

### getRotation

```haxe
inline function getRotation():Float
```

Get the angle in radians between the vector (1, 0) and this Point.
The angle returned is [-π, π]
