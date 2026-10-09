# h3d.col.HeightMap

**class** · package [`h3d.col`](README.md) · source [`h3d/col/HeightMap.hx`](../../../../../h3d/col/HeightMap.hx)

Extends: [`h3d.col.Collider`](Collider.md)

This is an helper class to define a heightmap-based collider.
In order to use, you need to extends this class and override the getZ method
in order to return appropriate Z value based on X and Y coordinates.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### step

```haxe
var step:Float
```

When performing raycast check, tells by how much step we advance.
If this is too small, raycast check will be too expensive.
If this is too big, we might step through a hip without noticing.
Default : 1.0

### precision

```haxe
var precision:Float
```

Tells which precision is required for the result.
We will iterate until we have reach the given precision.

## Methods

### contains

```haxe
override inline function contains(pt:Point):Bool
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
override function closestPoint(sp:Point):Point
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
