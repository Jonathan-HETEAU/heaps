# h2d.col.PolygonCollider

**class** · package [`h2d.col`](README.md) · source [`h2d/col/PolygonCollider.hx`](../../../../../h2d/col/PolygonCollider.hx)

Extends: [`h2d.col.Collider`](Collider.md)

A `Collider` wrapper around `Polygons` to enable using those for hit-testing testing.

## Constructor

### new

```haxe
function new(polygons:Polygons, ?isConvex:Bool = false):Void
```

Create new PolygonCollider with specified Polygons and flag to check as convex or concave.

## Variables

### polygons

```haxe
var polygons:Polygons
```

The Polygons instance used for collision checks.

### isConvex

```haxe
var isConvex:Bool
```

Whether Polygons is convex or concave.
Convex polygons are cheaper to test against.

## Methods

### contains

```haxe
override function contains(p:Point):Bool
```

Test is Point `p` is inside `polygons`.

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
