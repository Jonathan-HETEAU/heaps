# h3d.col.ObjectCollider

**class** · package [`h3d.col`](README.md) · source [`h3d/col/ObjectCollider.hx`](../../../../../h3d/col/ObjectCollider.hx)

Extends: [`h3d.col.Collider`](Collider.md)

## Constructor

### new

```haxe
function new(obj:h3d.scene.Object, collider:Collider):Void
```

## Variables

### obj

```haxe
var obj:h3d.scene.Object
```

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
override inline function dimension():Float
```

### closestPoint

```haxe
override function closestPoint(p:Point):h3d.Vector
```

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
