# h3d.col.Plane

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Plane.hx`](../../../../../h3d/col/Plane.hx)

A plane of equation `nx * x + ny * y + nz * z = d`, where `(nx, ny, nz)` is its normal.

## Constructor

### new

```haxe
inline function new(nx:Float, ny:Float, nz:Float, d:Float):Void
```

Creates a plane from its normal and its distance to the origin.

## Static methods

### fromPoints

```haxe
static inline function fromPoints(p0:Point, p1:Point, p2:Point):Plane
```

Creates the plane containing the three points (the normal follows their winding).

### fromNormalPoint

```haxe
static inline function fromNormalPoint(n:Point, p:Point):Plane
```

Creates the plane of normal `n` containing the point `p`.

### X

```haxe
static inline function X(?v:Float = 0.0):Plane
```

Creates the plane `x = v`.

### Y

```haxe
static inline function Y(?v:Float = 0.0):Plane
```

Creates the plane `y = v`.

### Z

```haxe
static inline function Z(?v:Float = 0.0):Plane
```

Creates the plane `z = v`.

### frustumLeft

```haxe
static inline function frustumLeft(mvp:h3d.Matrix):Plane
```

Returns the left plane of the frustum of the view-projection matrix `mvp`.

### frustumRight

```haxe
static inline function frustumRight(mvp:h3d.Matrix):Plane
```

Returns the right plane of the frustum of the view-projection matrix `mvp`.

### frustumBottom

```haxe
static inline function frustumBottom(mvp:h3d.Matrix):Plane
```

Returns the bottom plane of the frustum of the view-projection matrix `mvp`.

### frustumTop

```haxe
static inline function frustumTop(mvp:h3d.Matrix):Plane
```

Returns the top plane of the frustum of the view-projection matrix `mvp`.

### frustumNear

```haxe
static inline function frustumNear(mvp:h3d.Matrix):Plane
```

Returns the near plane of the frustum of the view-projection matrix `mvp`.

### frustumFar

```haxe
static inline function frustumFar(mvp:h3d.Matrix):Plane
```

Returns the far plane of the frustum of the view-projection matrix `mvp`.

## Methods

### getNormal

```haxe
inline function getNormal():h3d.Vector
```

Returns the plan normal

### getNormalDistance

```haxe
inline function getNormalDistance():Float
```

Returns `d`, the distance of the plane to the origin along its normal (for a normalized normal).

### load

```haxe
inline function load(p:Plane):Void
```

Copies the plane `p`.

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

Transforms the plane by `m`.

### transform3x3

```haxe
function transform3x3(m:h3d.Matrix):Void
```

Transforms the plane by the rotation and scale of `m`.

### normalize

```haxe
inline function normalize():Void
```

Normalize the plan, so we can use distance().

### toString

```haxe
function toString():String
```

Returns a string representation.

### distance

```haxe
inline function distance(p:Point):Float
```

Returns the signed distance between a point an the plane. This requires the plan to be normalized. If the distance is negative it means that we are "under" the plan.

### side

```haxe
inline function side(p:Point):Bool
```

Tells if `p` is on the side of the plane the normal points to (or on the plane).

### project

```haxe
inline function project(p:Point):Point
```

Returns the projection of `p` on the plane.

### projectTo

```haxe
inline function projectTo(p:Point, out:Point):Void
```

Stores the projection of `p` on the plane into `out`.
