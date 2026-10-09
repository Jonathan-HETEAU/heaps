# h2d.col.IPoint

**class** · package [`h2d.col`](README.md) · source [`h2d/col/IPoint.hx`](../../../../../h2d/col/IPoint.hx)

An integer-based point.
- **see** `h2d.col.Point`

## Constructor

### new

```haxe
inline function new(?x:Int = 0, ?y:Int = 0):Void
```

Create a new integer Point instance.
- **param** `x` Horizontal position of the point.
- **param** `y` Vertical position of the point.

## Variables

### x

```haxe
var x:Int
```

Horizontal position of the point.

### y

```haxe
var y:Int
```

Vertical position of the point.

## Methods

### load

```haxe
inline function load(p:IPoint):Void
```

Copy the position from the give point `p` into this IPoint.

### scale

```haxe
inline function scale(v:Int):Void
```

Multiplies the position of this IPoint by a given scalar `v`. Modifies this instance.

### scaled

```haxe
inline function scaled(v:Int):IPoint
```

Returns a new IPoint with the position of this IPoint multiplied by a given scalar `v`.

### distanceSq

```haxe
inline function distanceSq(p:IPoint):Int
```

Returns squared distance between this IPoint and given IPoint `p`.

### distance

```haxe
inline function distance(p:IPoint):Float
```

Returns a distance between this IPoint and given IPoint `p`.

### sub

```haxe
inline function sub(p:IPoint):IPoint
```

Subtracts IPoint `p` from this IPoint and returns new Point with the result.

### add

```haxe
inline function add(p:IPoint):IPoint
```

Adds IPoint `p` to this IPoint and returns new Point with the result.

### equals

```haxe
inline function equals(other:IPoint):Bool
```

Tests if this IPoint position equals to `other` IPoint position.

### dot

```haxe
inline function dot(p:IPoint):Int
```

Returns a dot product between this IPoint and given IPoint `p`.

### lengthSq

```haxe
inline function lengthSq():Int
```

Returns squared length of this IPoint.

### length

```haxe
inline function length():Float
```

Returns length (distance to `0,0`) of this IPoint.

### set

```haxe
inline function set(?x:Int = 0, ?y:Int = 0):Void
```

Sets the IPoint `x, y` with given values.

### clone

```haxe
inline function clone():IPoint
```

Returns a copy of this IPoint.

### cross

```haxe
inline function cross(p:IPoint):Int
```

Returns a cross product between this IPoint and a given IPoint `p`.

### toPoint

```haxe
inline function toPoint(?scale:Float = 1.):Point
```

Converts this IPoint to floating point-based `Point` scaled by provided scalar `scale`.
