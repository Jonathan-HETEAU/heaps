# h2d.col.Collider

**class** · package [`h2d.col`](README.md) · source [`h2d/col/Collider.hx`](../../../../../h2d/col/Collider.hx)

Subclasses: [`h2d.col.Bounds`](Bounds.md), [`h2d.col.Circle`](Circle.md), [`h2d.col.PixelsCollider`](PixelsCollider.md), [`h2d.col.PolygonCollider`](PolygonCollider.md), [`h2d.col.RoundRect`](RoundRect.md), [`h2d.col.Triangle`](Triangle.md)

A common interface for 2D Shapes to hit-test again the mouse or a specific point in space.

## Methods

### contains

```haxe
function contains(p:Point):Bool
```

Tests if Point `p` is inside the Collider.

### collideCircle

```haxe
function collideCircle(c:Circle):Bool
```

Tells if the collider intersects the circle.

### collideBounds

```haxe
function collideBounds(b:Bounds):Bool
```

Tells if the collider intersects the bounds.
