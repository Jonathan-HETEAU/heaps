# h2d.impl.GenPointApi

**interface** · package [`h2d.impl`](README.md) · module `h2d.impl.PointApi` · source [`h2d/impl/PointApi.hx`](../../../../../h2d/impl/PointApi.hx)

Type parameters: `<Point, Unit>`

Subclasses: [`h2d.impl.IPointApi`](IPointApi.md), [`h2d.impl.PointApi`](PointApi.md)

A base common API interface for the points to validate API parity between 3D and 2D classes.

Intended for internal usage. Use `-D apicheck` compilation flag to enable parity validation.

## Methods

### clone

```haxe
function clone():h2d.impl.GenPointApi.Point
```

Returns a copy of the Point/

### load

```haxe
function load(p:h2d.impl.GenPointApi.Point):Void
```

Copy the position data from a given Point `p` to this Point.

### add

```haxe
function add(p:h2d.impl.GenPointApi.Point):h2d.impl.GenPointApi.Point
```

Returns a new Point with the sum of this Point and a given Point `p`.

### sub

```haxe
function sub(p:h2d.impl.GenPointApi.Point):h2d.impl.GenPointApi.Point
```

Returns a new Point with the results of a subtraction of a given Point `p` from this Point.

### scaled

```haxe
function scaled(v:h2d.impl.GenPointApi.Unit):h2d.impl.GenPointApi.Point
```

Returns a new Point with the position of this Point multiplied by scalar `v`.

### scale

```haxe
function scale(v:h2d.impl.GenPointApi.Unit):Void
```

Multiplies position of this Point by scalar `v`.

### lengthSq

```haxe
function lengthSq():h2d.impl.GenPointApi.Unit
```

Returns a squared length of the Point.

### length

```haxe
function length():Float
```

Return the length of the Point.

### distance

```haxe
function distance(p:h2d.impl.GenPointApi.Point):Float
```

Returns the distance between this Point and given Point `p`.

### distanceSq

```haxe
function distanceSq(p:h2d.impl.GenPointApi.Point):h2d.impl.GenPointApi.Unit
```

Returns a squared distance between this Point and given Point `p`.

### equals

```haxe
function equals(other:h2d.impl.GenPointApi.Point):Bool
```

Tests if this Point position equals to the position of an `other` Point.

### dot

```haxe
function dot(p:h2d.impl.GenPointApi.Point):h2d.impl.GenPointApi.Unit
```

Returns a dot product between this Point and given Point `p`.

### toString

```haxe
function toString():String
```

Returns a human-readable string representation of the Point.
