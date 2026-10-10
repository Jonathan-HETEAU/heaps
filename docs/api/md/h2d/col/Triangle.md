# h2d.col.Triangle

**class** · package [`h2d.col`](README.md) · source [`h2d/col/Triangle.hx`](../../../../../h2d/col/Triangle.hx)

Extends: [`h2d.col.Collider`](Collider.md)

A simple triangle collider.

## Constructor

### new

```haxe
inline function new(a:Point, b:Point, c:Point):Void
```

Create a new Triangle collider.
- **param** `a` The first triangle corner.
- **param** `b` The second triangle corner.
- **param** `c` The third triangle corner.

## Variables

### a

```haxe
var a:Point
```

The triangle first corner.

### b

```haxe
var b:Point
```

The triangle second corner.

### c

```haxe
var c:Point
```

The triangle third corner.

## Methods

### getCenter

```haxe
inline function getCenter():Point
```

Returns a centroid of the Triangle.

### getArea

```haxe
inline function getArea():Float
```

Calculates and returns the triangle area.

Result is cached between `getArea` and `getInvArea` on first call and altering `a`, `b`, or `c` afterwards will lead to incorrect value.

### getInvArea

```haxe
inline function getInvArea():Float
```

Calculates and returns the triangle area inverse.

Result is cached between `getArea` and `getInvArea` on first call and altering `a`, `b`, or `c` afterwards will lead to incorrect value.

### barycentric

```haxe
inline function barycentric(p:Point):h3d.Vector
```

Calculate barycentric coordinates for the point `p`

### contains

```haxe
override function contains(p:Point):Bool
```

Tests if Point `p` is inside this Triangle.

### collideCircle

```haxe
override function collideCircle(c:Circle):Bool
```

Not implemented: throws an error.

### collideBounds

```haxe
override function collideBounds(b:Bounds):Bool
```

Not implemented: throws an error.

## Inherited members

- from [`h2d.col.Collider`](Collider.md): `contains`, `collideCircle`, `collideBounds`
