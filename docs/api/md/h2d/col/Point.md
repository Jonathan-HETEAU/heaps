# h2d.col.Point

**abstract** · package [`h2d.col`](README.md) · source [`h2d/col/Point.hx`](../../../../../h2d/col/Point.hx)

A 2D point or vector, with operators: `+`, `-`, `*` (by a `Matrix` or a scale) and `*=`.

Underlying type: [`h2d.col.PointImpl`](PointImpl.md)

Members of [`h2d.col.PointImpl`](PointImpl.md) are forwarded (`@:forward`): they are usable directly on this type.

Implicit casts from: `PointImpl`

Implicit casts to: `PointImpl`

## Methods

### sub

```haxe
inline function sub(p:Point):Point
```

Returns `this - p` as a new point.

### add

```haxe
inline function add(p:Point):Point
```

Returns `this + p` as a new point.

### transform

```haxe
inline function transform(m:Matrix):Void
```

Transforms the point by the matrix.

### transformed

```haxe
inline function transformed(m:Matrix):Point
```

Returns a copy of the point transformed by the matrix.

### scale

```haxe
inline function scale(v:Float):Void
```

Multiplies the coordinates by `v`.

### scaled

```haxe
inline function scaled(v:Float):Point
```

Returns a copy of the point multiplied by `v`.
