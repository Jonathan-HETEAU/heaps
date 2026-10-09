# h3d.col.TriPlane

**class** · package [`h3d.col`](README.md) · module `h3d.col.Polygon` · source [`h3d/col/Polygon.hx`](../../../../../h3d/col/Polygon.hx)

Extends: [`h3d.col.Collider`](Collider.md)

A triangle collider, part of a `Polygon` (linked list of triangles).

## Constructor

### new

```haxe
function new(?o:Bool = false):Void
```

Creates an empty collider.
- **param** `o` If `true`, only the front faces of the triangles can be hit.

## Variables

### next

```haxe
var next:TriPlane
```

The next triangle of the polygon.

## Methods

### init

```haxe
inline function init(p0:Point, p1:Point, p2:Point):Void
```

Sets the triangle points.

### clone

```haxe
inline function clone():TriPlane
```

Returns a copy.

### load

```haxe
inline function load(tp:TriPlane):Void
```

Copies the values of another instance.

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

Transforms the triangles by `m`.

### contains

```haxe
override inline function contains(p:Point):Bool
```

Tells if the point `p` is inside the shape.

### side

```haxe
inline function side(p:Point):Bool
```

Tells if `p` is on the front side of the triangle plane.

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
override function closestPoint(p:Point):h3d.Vector
```

Returns the point of the shape closest to `p`.

### rayIntersection

```haxe
override inline function rayIntersection(r:Ray, bestMatch:Bool):Float
```

Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
If `bestMatch` is `false`, any intersection can be returned (faster).

### getPoints

```haxe
function getPoints():Array<Point>
```

Returns the points of all the triangles.

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

Creates an object displaying the shape (debug), or `null` if not supported.

### dimension

```haxe
override function dimension():Float
```

Returns the largest size of the shape, used to compare collider sizes.

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
