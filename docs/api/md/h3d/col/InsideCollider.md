# h3d.col.InsideCollider

**class** · package [`h3d.col`](README.md) · source [`h3d/col/InsideCollider.hx`](../../../../../h3d/col/InsideCollider.hx)

Extends: [`h3d.col.Collider`](Collider.md)

Wraps a collider so that a ray starting inside it hits it at distance 0, instead of missing it.

## Constructor

### new

```haxe
function new(collider:Collider):Void
```

## Variables

### collider

```haxe
var collider:Collider
```

## Methods

### rayIntersection

```haxe
override function rayIntersection(r:Ray, bestMatch:Bool):Float
```

### contains

```haxe
override function contains(p:Point):Bool
```

### inFrustum

```haxe
override function inFrustum(f:Frustum, ?m:h3d.Matrix):Bool
```

### inSphere

```haxe
override function inSphere(s:Sphere):Bool
```

### dimension

```haxe
override function dimension():Float
```

### closestPoint

```haxe
override function closestPoint(p:Point):Point
```

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
