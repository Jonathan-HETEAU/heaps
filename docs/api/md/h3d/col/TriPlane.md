# h3d.col.TriPlane

**class** · package [`h3d.col`](README.md) · module `h3d.col.Polygon` · source [`h3d/col/Polygon.hx`](../../../../../h3d/col/Polygon.hx)

Extends: [`h3d.col.Collider`](Collider.md)

## Constructor

### new

```haxe
function new(?o:Bool = false):Void
```

## Variables

### next

```haxe
var next:TriPlane
```

## Methods

### init

```haxe
inline function init(p0:Point, p1:Point, p2:Point):Void
```

### clone

```haxe
inline function clone():TriPlane
```

### load

```haxe
inline function load(tp:TriPlane):Void
```

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

### contains

```haxe
override inline function contains(p:Point):Bool
```

### side

```haxe
inline function side(p:Point):Bool
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
override function closestPoint(p:Point):h3d.Vector
```

### rayIntersection

```haxe
override inline function rayIntersection(r:Ray, bestMatch:Bool):Float
```

### getPoints

```haxe
function getPoints():Array<Point>
```

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

### dimension

```haxe
override function dimension():Float
```

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
