# h3d.col.Polygon

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Polygon.hx`](../../../../../h3d/col/Polygon.hx)

Extends: [`h3d.col.Collider`](Collider.md)

A triangle mesh collider (a list of `TriPlane`), precise but slower than simple shapes.

## Constructor

### new

```haxe
function new(?o:Bool = false):Void
```

Creates an empty collider.
- **param** `o` If `true`, only the front faces of the triangles can be hit.

## Static methods

### fromPolygon2D

```haxe
static function fromPolygon2D(p:h2d.col.Polygon, ?z:Float = 0., ?oriented:Bool = true):Polygon
```

Creates a flat collider from a 2D polygon placed at height `z`.
- **param** `oriented` If `true`, only the front side can be hit.

## Methods

### addBuffers

```haxe
function addBuffers(vertexes:Vector<hxd.impl.Float32>, indexes:Vector<Int>, ?stride:Int = 3):Void
```

Adds the triangles of the given vertex and index buffers.
- **param** `stride` The number of floats per vertex (the position being the first 3).

### isConvex

```haxe
function isConvex():Null<Bool>
```

Tells if the mesh is convex (computed once).

### clone

```haxe
function clone():Polygon
```

Returns a copy.

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

Transforms the triangles by `m`.

### getPoints

```haxe
function getPoints():Array<Point>
```

Returns the points of all the triangles.

### getBounds

```haxe
function getBounds(?bnds:Bounds):Bounds
```

Returns the bounds of the triangles.
- **param** `bnds` An optional bounds to add the result to.

### contains

```haxe
override function contains(p:Point):Bool
```

Tells if the point `p` is inside the shape.

### rayIntersection

```haxe
override function rayIntersection(r:Ray, bestMatch:Bool):Float
```

Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
If `bestMatch` is `false`, any intersection can be returned (faster).

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

### closestPoint

```haxe
override function closestPoint(p:Point):Null<h3d.Vector>
```

Returns the point of the shape closest to `p`.

### dimension

```haxe
override inline function dimension():Float
```

Returns the largest size of the shape, used to compare collider sizes.

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

Creates an object displaying the shape (debug), or `null` if not supported.

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
