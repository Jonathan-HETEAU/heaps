# h3d.col.FPoint

**class** · package [`h3d.col`](README.md) · source [`h3d/col/FPoint.hx`](../../../../../h3d/col/FPoint.hx)

A 3D point stored with 32-bit floats (smaller in memory than `Point`).

## Constructor

### new

```haxe
inline function new(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Void
```

Creates a point.

## Variables

### x

```haxe
var x:hxd.impl.Float32
```

The X coordinate.

### y

```haxe
var y:hxd.impl.Float32
```

The Y coordinate.

### z

```haxe
var z:hxd.impl.Float32
```

The Z coordinate.

## Methods

### set

```haxe
inline function set(?x:Float = 0., ?y:Float = 0., ?z:Float = 0.):Void
```

Sets the coordinates.

### sub

```haxe
inline function sub(p:FPoint):FPoint
```

Returns `this - p` as a new point.

### add

```haxe
inline function add(p:FPoint):FPoint
```

Returns `this + p` as a new point.

### cross

```haxe
inline function cross(p:FPoint):FPoint
```

Returns the cross product with `p`.

### dot

```haxe
inline function dot(p:FPoint):Float
```

Returns the dot product with `p`.

### distanceSq

```haxe
inline function distanceSq(v:FPoint):Float
```

Returns the squared distance to the other point.

### lengthSq

```haxe
inline function lengthSq():Float
```

Returns the squared length.

### normalized

```haxe
inline function normalized():FPoint
```

Returns a copy scaled to a length of 1.

### scaled

```haxe
inline function scaled(v:Float):FPoint
```

Returns a copy multiplied by `v`.

### toString

```haxe
function toString():String
```

Returns a string representation.
