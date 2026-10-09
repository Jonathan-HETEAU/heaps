# h3d.col.PolygonBuffer

**class** · package [`h3d.col`](README.md) · source [`h3d/col/PolygonBuffer.hx`](../../../../../h3d/col/PolygonBuffer.hx)

Extends: [`h3d.col.Collider`](Collider.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### isConvex

```haxe
var isConvex:Bool
```

### source

```haxe
var source:{ geometryName:String, entry:hxd.fs.FileEntry }
```

## Methods

### setData

```haxe
function setData(buffer:Vector<hxd.impl.Float32>, indexes:Vector<Int>, ?startIndex:Int = 0, ?triCount:Int = -1, ?isConvex:Bool = false):Void
```

### getBounds

```haxe
function getBounds():Bounds
```

### getPoints

```haxe
function getPoints():Array<FPoint>
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
override function closestPoint(p:Point):h3d.Vector
```

### rayIntersection

```haxe
override function rayIntersection(r:Ray, bestMatch:Bool):Float
```

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
