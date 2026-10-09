# h3d.col.OrientedBounds

**class** · package [`h3d.col`](README.md) · source [`h3d/col/OrientedBounds.hx`](../../../../../h3d/col/OrientedBounds.hx)

Extends: [`h3d.col.Collider`](Collider.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### centerX

```haxe
var centerX:Float
```

### centerY

```haxe
var centerY:Float
```

### centerZ

```haxe
var centerZ:Float
```

### xx

```haxe
var xx:Float
```

### xy

```haxe
var xy:Float
```

### xz

```haxe
var xz:Float
```

### yx

```haxe
var yx:Float
```

### yy

```haxe
var yy:Float
```

### yz

```haxe
var yz:Float
```

### zx

```haxe
var zx:Float
```

### zy

```haxe
var zy:Float
```

### zz

```haxe
var zz:Float
```

### hx

```haxe
var hx:Float
```

### hy

```haxe
var hy:Float
```

### hz

```haxe
var hz:Float
```

## Methods

### setMatrix

```haxe
function setMatrix(m:h3d.Matrix):Void
```

### getMatrix

```haxe
function getMatrix():h3d.Matrix
```

### setEulerAngles

```haxe
function setEulerAngles(x:Float, y:Float, z:Float):Void
```

### collideOrientedBounds

```haxe
function collideOrientedBounds(other:OrientedBounds):Bool
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

### hasSphere

```haxe
function hasSphere(s:Sphere):Bool
```

### inSphere

```haxe
override function inSphere(s:Sphere):Bool
```

### dimension

```haxe
override function dimension():Float
```

### getVertice

```haxe
inline function getVertice(i:Int):h3d.Vector
```

### getVertices

```haxe
function getVertices(?out:Array<h3d.Vector>):Array<h3d.Vector>
```

### closestPoint

```haxe
override function closestPoint(p:Point):h3d.Vector
```

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Graphics
```

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
