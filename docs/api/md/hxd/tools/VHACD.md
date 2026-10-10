# hxd.tools.VHACD

**class** · package [`hxd.tools`](README.md) · source [`hxd/tools/VHACD.hx`](../../../../../hxd/tools/VHACD.hx) · available on hl/sdl, hl/directx

Approximate convex decomposition of a mesh with the V-HACD library (HashLink 1.15+), to build collision shapes.

## Constructor

### new

```haxe
function new():Void
```

Creates a V-HACD instance.

## Methods

### compute

```haxe
function compute(points:hl.Bytes, countPoints:Int, triangles:hl.Bytes, countTriangle:Int, params:Parameters):Bool
```

Computes the convex hulls of the mesh. `points` contains 3 floats (32 bits) per point, `triangles` 3 ints per triangle.

### getConvexHullCount

```haxe
function getConvexHullCount():Int
```

Returns the number of convex hulls computed.

### getConvexHull

```haxe
function getConvexHull(index:Int, convexHull:ConvexHull):Bool
```

Fills `convexHull` with the hull of the given index.

### clean

```haxe
function clean():Void
```

Releases the results.

### release

```haxe
function release():Void
```

Releases the instance.
