# h3d.col.Polygon

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Polygon.hx`](../../../../../h3d/col/Polygon.hx)

Extends: [`h3d.col.Collider`](Collider.md)

## Constructor

### new

```haxe
function new(?o:Bool = false):Void
```

## Static methods

### fromPolygon2D

```haxe
static function fromPolygon2D(p:h2d.col.Polygon, ?z:Float = 0., ?oriented:Bool = true):Polygon
```

## Methods

### addBuffers

```haxe
function addBuffers(vertexes:Vector<hxd.impl.Float32>, indexes:Vector<Int>, ?stride:Int = 3):Void
```

### isConvex

```haxe
function isConvex():Null<Bool>
```

### clone

```haxe
function clone():Polygon
```

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

### getPoints

```haxe
function getPoints():Array<Point>
```

### getBounds

```haxe
function getBounds(?bnds:Bounds):Bounds
```

### contains

```haxe
override function contains(p:Point):Bool
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

### closestPoint

```haxe
override function closestPoint(p:Point):Null<h3d.Vector>
```

### dimension

```haxe
override inline function dimension():Float
```

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
