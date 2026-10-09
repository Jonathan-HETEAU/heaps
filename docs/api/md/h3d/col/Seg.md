# h3d.col.Seg

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Seg.hx`](../../../../../h3d/col/Seg.hx)

A segment between two points.

## Constructor

### new

```haxe
inline function new(p1:Point, p2:Point):Void
```

Creates a segment.

## Variables

### p1

```haxe
var p1:Point
```

The first point.

### p2

```haxe
var p2:Point
```

The second point.

### lenSq

```haxe
var lenSq:Float
```

The squared length.

## Methods

### distanceSq

```haxe
inline function distanceSq(p:Point):Float
```

Returns the squared distance from `p` to the segment.

### distance

```haxe
inline function distance(p:Point):Float
```

Returns the distance from `p` to the segment.

### toString

```haxe
function toString():String
```

Returns a string representation.
