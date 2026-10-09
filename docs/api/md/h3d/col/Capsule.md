# h3d.col.Capsule

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Capsule.hx`](../../../../../h3d/col/Capsule.hx)

Extends: [`h3d.col.Collider`](Collider.md)

## Constructor

### new

```haxe
inline function new(a:Point, b:Point, r:Float):Void
```

## Variables

### a

```haxe
var a:Point
```

### b

```haxe
var b:Point
```

### r

```haxe
var r:Float
```

## Methods

### contains

```haxe
override inline function contains(p:Point):Bool
```

### rayIntersection

```haxe
override function rayIntersection(r:Ray, bestMatch:Bool):Float
```

### inFrustum

```haxe
override function inFrustum(f:Frustum, ?m:h3d.Matrix):Bool
```

### inSphere

```haxe
override function inSphere(s:Sphere):Bool
```

### toString

```haxe
function toString():String
```

### dimension

```haxe
override function dimension():Float
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
