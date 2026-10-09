# h3d.col.IPoint

**class** · package [`h3d.col`](README.md) · source [`h3d/col/IPoint.hx`](../../../../../h3d/col/IPoint.hx)

A 3D point with integer coordinates.

## Constructor

### new

```haxe
inline function new(?x:Int = 0, ?y:Int = 0, ?z:Int = 0):Void
```

Creates a point.

## Variables

### x

```haxe
var x:Int
```

The X coordinate.

### y

```haxe
var y:Int
```

The Y coordinate.

### z

```haxe
var z:Int
```

The Z coordinate.

## Methods

### toString

```haxe
function toString():String
```

Returns a string representation.

### scaled

```haxe
inline function scaled(v:Int):IPoint
```

Returns a copy multiplied by `v`.

### set

```haxe
inline function set(?x:Int = 0, ?y:Int = 0, ?z:Int = 0):Void
```

Sets the coordinates.

### equals

```haxe
inline function equals(other:IPoint):Bool
```

Tells if the coordinates are equal to those of `other`.

### load

```haxe
inline function load(p:IPoint):Void
```

Copies the values of another instance.

### distanceSq

```haxe
inline function distanceSq(p:IPoint):Int
```

Returns the squared distance to the other point.

### distance

```haxe
inline function distance(p:IPoint):Float
```

Returns the distance to the other point.

### lengthSq

```haxe
inline function lengthSq():Int
```

Returns the squared length.

### length

```haxe
inline function length():Float
```

Returns the length.

### clone

```haxe
inline function clone():IPoint
```

Returns a copy.

### scale

```haxe
inline function scale(v:Int):Void
```

Multiplies the coordinates by `v`.

### add

```haxe
inline function add(p:IPoint):IPoint
```

Returns `this + p` as a new point.

### sub

```haxe
inline function sub(p:IPoint):IPoint
```

Returns `this - p` as a new point.

### dot

```haxe
inline function dot(p:IPoint):Int
```

Returns the dot product with `p`.

### cross

```haxe
inline function cross(p:IPoint):IPoint
```

Returns the cross product with `p`.
