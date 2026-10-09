# h3d.col.OptimizedCollider

**class** · package [`h3d.col`](README.md) · module `h3d.col.Collider` · source [`h3d/col/Collider.hx`](../../../../../h3d/col/Collider.hx)

Extends: [`h3d.col.Collider`](Collider.md)

## Constructor

### new

```haxe
function new(a:Collider, b:Collider):Void
```

## Variables

### a

```haxe
var a:Collider
```

### b

```haxe
var b:Collider
```

### checkInside

```haxe
var checkInside:Bool
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
