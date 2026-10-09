# h3d.col.Ray

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Ray.hx`](../../../../../h3d/col/Ray.hx)

A ray: an origin and a direction (normalized when created with `fromPoints` or `fromValues`).
Used for picking, see `h3d.Camera.rayFromScreen`.

## Constructor

### new

```haxe
inline function new():Void
```

Creates an empty ray.

## Static methods

### fromPoints

```haxe
static inline function fromPoints(p1:Point, p2:Point):Ray
```

Creates a ray starting at `p1` and going towards `p2`.

### fromValues

```haxe
static inline function fromValues(x:Float, y:Float, z:Float, dx:Float, dy:Float, dz:Float):Ray
```

Creates a ray from an origin and a direction (normalized).

## Variables

### px

```haxe
var px:Float
```

The X position of the origin.

### py

```haxe
var py:Float
```

The Y position of the origin.

### pz

```haxe
var pz:Float
```

The Z position of the origin.

### lx

```haxe
var lx:Float
```

The X component of the direction.

### ly

```haxe
var ly:Float
```

The Y component of the direction.

### lz

```haxe
var lz:Float
```

The Z component of the direction.

## Methods

### clone

```haxe
inline function clone():Ray
```

Returns a copy.

### load

```haxe
inline function load(r:Ray):Void
```

Copies the origin and direction of `r`.

### transform

```haxe
inline function transform(m:h3d.Matrix):Void
```

Transforms the origin and direction by `m`. The direction is not normalized.

### getPos

```haxe
inline function getPos():h3d.Vector
```

Returns the origin.

### getDir

```haxe
inline function getDir():h3d.Vector
```

Returns the direction.

### getPoint

```haxe
inline function getPoint(distance:Float):h3d.Vector
```

Returns the point at `distance` along the ray.

### toString

```haxe
function toString():String
```

Returns a string representation.

### distance

```haxe
inline function distance(p:Plane):Float
```

Returns the distance along the ray to the plane `p` (negative if behind or parallel).

### intersect

```haxe
inline function intersect(p:Plane):Null<Point>
```

Returns the intersection with the plane `p`, or `null` if the ray is parallel to it.

### collideFrustum

```haxe
inline function collideFrustum(mvp:h3d.Matrix):Bool
```

Tells if the ray crosses the frustum of the view-projection matrix `mvp`.

### collide

```haxe
inline function collide(b:Bounds):Bool
```

Tells if the ray crosses the bounds `b`.
