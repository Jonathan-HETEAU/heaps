# h2d.col.Circle

**class** · package [`h2d.col`](README.md) · source [`h2d/col/Circle.hx`](../../../../../h2d/col/Circle.hx)

Extends: [`h2d.col.Collider`](Collider.md)

The circular hitbox implementation of a 2D Collider.

## Constructor

### new

```haxe
inline function new(x:Float, y:Float, ray:Float):Void
```

Create new Circle collider.
- **param** `x` X position of the Circle center.
- **param** `y` Y position of the Circle center.
- **param** `ray` Radius of the circle.

## Variables

### x

```haxe
var x:Float
```

Horizontal position of the Circle center.

### y

```haxe
var y:Float
```

Vertical position of the Circle center.

### ray

```haxe
var ray:Float
```

Radius of the circle.

## Methods

### distanceSq

```haxe
inline function distanceSq(p:Point):Float
```

Returns a squared distance between the Circle center and the given Point `p`.

### side

```haxe
inline function side(p:Point):Float
```

Returns a squared distance between the Circle border and the given Point `p`.

### collideCircle

```haxe
override inline function collideCircle(c:Circle):Bool
```

Tests if this Circle collides with the given Circle `c`.

### collideBounds

```haxe
override inline function collideBounds(b:Bounds):Bool
```

Test if this Circle collides with the given Bounds `b`.

### lineIntersect

```haxe
inline function lineIntersect(p1:Point, p2:Point):Array<Point>
```

Tests if this Circle intersects with a line segment from Point `p1` to Point `p2`.
- **returns** s An array of Points with intersection coordinates.
Contains 1 Point if line intersects only once or 2 points if line enters and exits the circle.
If no intersection is found, returns `null`.

### contains

```haxe
override function contains(p:Point):Bool
```

Tests if Point `p` is inside this Circle.

## Inherited members

- from [`h2d.col.Collider`](Collider.md): `contains`, `collideCircle`, `collideBounds`
