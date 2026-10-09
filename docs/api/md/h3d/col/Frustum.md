# h3d.col.Frustum

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Frustum.hx`](../../../../../h3d/col/Frustum.hx)

A view frustum (the volume seen by a camera), made of 6 planes, used for culling.
See `h3d.Camera.frustum`.

## Constructor

### new

```haxe
function new(?mvp:h3d.Matrix):Void
```

Creates a frustum, from the view-projection matrix `mvp` if given.

## Variables

### pleft

```haxe
var pleft:Plane
```

The left plane.

### pright

```haxe
var pright:Plane
```

The right plane.

### ptop

```haxe
var ptop:Plane
```

The top plane.

### pbottom

```haxe
var pbottom:Plane
```

The bottom plane.

### pnear

```haxe
var pnear:Plane
```

The near plane.

### pfar

```haxe
var pfar:Plane
```

The far plane.

### checkNearFar

```haxe
var checkNearFar:Bool
```

If `false`, the near and far planes are ignored by the tests.

## Methods

### clone

```haxe
function clone():Frustum
```

Returns a copy.

### loadMatrix

```haxe
function loadMatrix(mvp:h3d.Matrix):Void
```

Sets the planes from the view-projection matrix `mvp`.

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

Transforms the planes by `m`.

### transform3x3

```haxe
function transform3x3(m:h3d.Matrix):Void
```

Transforms the planes by the rotation and scale of `m`.

### hasPoint

```haxe
function hasPoint(p:Point):Bool
```

Tells if the point `p` is inside the frustum.

### hasSphere

```haxe
function hasSphere(s:Sphere):Bool
```

Tells if the sphere `s` intersects the frustum.

### hasBounds

```haxe
function hasBounds(b:Bounds):Bool
```

Tells if the bounds `b` intersect the frustum.

### hasOrientedBounds

```haxe
function hasOrientedBounds(b:OrientedBounds):Bool
```

Tells if the oriented bounds `b` intersect the frustum.

### getBounds

```haxe
function getBounds(m:h3d.Matrix, ?out:Bounds):Bounds
```

Returns the bounds of the 8 corners of the frustum transformed by `m`.
