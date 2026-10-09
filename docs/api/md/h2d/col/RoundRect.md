# h2d.col.RoundRect

**class** · package [`h2d.col`](README.md) · source [`h2d/col/RoundRect.hx`](../../../../../h2d/col/RoundRect.hx)

Extends: [`h2d.col.Collider`](Collider.md)

A Collider representing the rectangle with the rounded edges, forming a 2D capsule.

## Constructor

### new

```haxe
inline function new(x:Float, y:Float, w:Float, h:Float, rotation:Float):Void
```

Create a new RoundRect instance.
- **param** `x` The horizontal position of the rectangle center.
- **param** `y` The vertical position of the rectangle center.
- **param** `w` The width of the rectangle.
- **param** `h` The height of the rectangle.
- **param** `rotation` The rotation of the rectangle.

## Variables

### x

```haxe
var x:Float
```

The horizontal position of the rectangle center.

### y

```haxe
var y:Float
```

The vertical position of the rectangle center.

## Methods

### distanceCenterSq

```haxe
inline function distanceCenterSq(p:Point):Float
```

Returns the squared distance of the Point `p` to the central segment of the capsule

### inside

```haxe
inline function inside(p:Point):Bool
```

Tests is given Point `p` is inside the capsule area.

### distance

```haxe
inline function distance(p:Point):Float
```

Returns the distance of the Point `p` to the edge of the capsule.

### getNormalAt

```haxe
inline function getNormalAt(p:Point):Point
```

Returns an outwards normal of of the capsule edge in the direction of the Point `p`.

Normal points outwards regardless of the Point being inside or outside of the capsule.

### contains

```haxe
override function contains(p:Point):Bool
```

Tests is given Point `p` is inside the capsule area.

### collideCircle

```haxe
override function collideCircle(c:Circle):Bool
```

### collideBounds

```haxe
override function collideBounds(b:Bounds):Bool
```

## Inherited members

- from [`h2d.col.Collider`](Collider.md): `contains`, `collideCircle`, `collideBounds`
