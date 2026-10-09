# h3d.col.PolygonBuffer

**class** · package [`h3d.col`](README.md) · source [`h3d/col/PolygonBuffer.hx`](../../../../../h3d/col/PolygonBuffer.hx)

Extends: [`h3d.col.Collider`](Collider.md)

A triangle mesh collider reading its triangles directly from vertex and index buffers (no preprocessing).

## Constructor

### new

```haxe
function new():Void
```

Creates an empty collider. Call `setData`.

## Variables

### isConvex

```haxe
var isConvex:Bool
```

Tells that the mesh is convex, which allows faster `contains` tests.

### source

```haxe
var source:{ geometryName:String, entry:hxd.fs.FileEntry }
```

The model file and geometry the data comes from, if known.

## Methods

### setData

```haxe
function setData(buffer:Vector<hxd.impl.Float32>, indexes:Vector<Int>, ?startIndex:Int = 0, ?triCount:Int = -1, ?isConvex:Bool = false):Void
```

Sets the triangles: 3 floats per vertex in `buffer`, 3 indexes per triangle in `indexes`.
- **param** `startIndex` The first index used.
- **param** `triCount` The number of triangles, or `-1` for all.

### getBounds

```haxe
function getBounds():Bounds
```

Returns the bounds of the triangles.

### getPoints

```haxe
function getPoints():Array<FPoint>
```

Returns the vertexes used by the triangles.

### contains

```haxe
override function contains(p:Point):Bool
```

Tells if the point `p` is inside the shape.

### inFrustum

```haxe
override function inFrustum(f:Frustum, ?m:h3d.Matrix):Bool
```

Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.

### inSphere

```haxe
override function inSphere(s:Sphere):Bool
```

Tells if the shape intersects the sphere `s`.

### dimension

```haxe
override function dimension():Float
```

Returns the largest size of the shape, used to compare collider sizes.

### closestPoint

```haxe
override function closestPoint(p:Point):h3d.Vector
```

Returns the point of the shape closest to `p`.

### rayIntersection

```haxe
override function rayIntersection(r:Ray, bestMatch:Bool):Float
```

Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
If `bestMatch` is `false`, any intersection can be returned (faster).

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

Creates an object displaying the shape (debug), or `null` if not supported.

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
