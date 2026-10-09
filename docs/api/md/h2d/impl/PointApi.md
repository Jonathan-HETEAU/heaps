# h2d.impl.PointApi

**interface** · package [`h2d.impl`](README.md) · source [`h2d/impl/PointApi.hx`](../../../../../h2d/impl/PointApi.hx)

Type parameters: `<Point, M>`

Extends: [`h2d.impl.GenPointApi`](GenPointApi.md)

A common API interface for the floating-point Points to validate API parity between 3D and 2D classes.

Intended for internal usage. Use `-D apicheck` compilation flag to enable parity validation.

## Methods

### lerp

```haxe
function lerp(p1:h2d.impl.PointApi.Point, p2:h2d.impl.PointApi.Point, k:Float):Void
```

Sets this Point position to a result of linear interpolation between Points `p1` and `p2` at the interpolant position `k`.

### normalize

```haxe
function normalize():Void
```

Normalizes the Point.

### normalized

```haxe
function normalized():h2d.impl.PointApi.Point
```

Returns a new Point with the normalized values of this Point.

### transform

```haxe
function transform(m:h2d.impl.PointApi.M):Void
```

Applies a given Matrix `m` transformation to this Point position.

### transformed

```haxe
function transformed(m:h2d.impl.PointApi.M):h2d.impl.PointApi.Point
```

Returns a new Point with a result of applying a Matrix `m` to this Point position.

## Inherited members

- from [`h2d.impl.GenPointApi`](GenPointApi.md): `clone`, `load`, `add`, `sub`, `scaled`, `scale`, `lengthSq`, `length`, `distance`, `distanceSq`, `equals`, `dot`, `toString`
