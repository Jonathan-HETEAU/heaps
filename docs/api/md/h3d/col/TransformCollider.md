# h3d.col.TransformCollider

**class** · package [`h3d.col`](README.md) · source [`h3d/col/TransformCollider.hx`](../../../../../h3d/col/TransformCollider.hx)

Extends: [`h3d.col.Collider`](Collider.md)

## Constructor

### new

```haxe
function new(mat:h3d.Matrix, collider:Collider):Void
```

## Static methods

### make

```haxe
static function make(mat:h3d.Matrix, col:Collider):Collider
```

## Variables

### collider

```haxe
var collider:Collider
```

### mat

```haxe
var mat(default, set):h3d.Matrix
```

## Methods

### transform

```haxe
function transform(m:h3d.Matrix):TransformCollider
```

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
