# h3d.col.Sphere

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Sphere.hx`](../../../../../h3d/col/Sphere.hx)

Extends: [`h3d.col.Collider`](Collider.md)

## Constructor

### new

```haxe
inline function new(?x:Float = 0., ?y:Float = 0., ?z:Float = 0., ?r:Float = 1.):Void
```

## Variables

### x

```haxe
var x:Float
```

### y

```haxe
var y:Float
```

### z

```haxe
var z:Float
```

### r

```haxe
var r:Float
```

## Methods

### load

```haxe
inline function load(?sx:Float = 0., ?sy:Float = 0., ?sz:Float = 0., ?sr:Float = 0.):Void
```

### getCenter

```haxe
inline function getCenter():h3d.Vector
```

### distance

```haxe
inline function distance(p:Point):Float
```

### distanceSq

```haxe
inline function distanceSq(p:Point):Float
```

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
override inline function inFrustum(f:Frustum, ?m:h3d.Matrix):Bool
```

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

### inSphere

```haxe
override inline function inSphere(s:Sphere):Bool
```

### toString

```haxe
function toString():String
```

### dimension

```haxe
override inline function dimension():Float
```

### closestPoint

```haxe
override inline function closestPoint(p:Point):h3d.Vector
```

### clone

```haxe
inline function clone():Sphere
```

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
