# hxd.tools.Parameters

**class** · package [`hxd.tools`](README.md) · module `hxd.tools.VHACD` · source [`hxd/tools/VHACD.hx`](../../../../../hxd/tools/VHACD.hx) · available on hl/sdl, hl/directx

The parameters of the V-HACD decomposition.

## Constructor

### new

```haxe
function new():Void
```

Creates the default parameters.

## Variables

### maxConvexHulls

```haxe
var maxConvexHulls:Int
```

The maximum number of convex hulls to produce.

### maxResolution

```haxe
var maxResolution:Int
```

The voxel resolution to use.

### minimumVolumePercentErrorAllowed

```haxe
var minimumVolumePercentErrorAllowed:Float
```

If the voxels are within 1% of the volume of the hull, we consider this a close enough approximation.

### maxRecursionDepth

```haxe
var maxRecursionDepth:Int
```

The maximum recursion depth.

### shrinkWrap

```haxe
var shrinkWrap:Bool
```

Whether or not to shrinkwrap the voxel positions to the source mesh on output.

### fillMode

```haxe
var fillMode:FillMode
```

How to fill the interior of the voxelized mesh.

### maxNumVerticesPerCH

```haxe
var maxNumVerticesPerCH:Int
```

The maximum number of vertices allowed in any output convex hull.

### asyncACD

```haxe
var asyncACD:Bool
```

Whether or not to run asynchronously, taking advantage of additional cores.

### minEdgeLength

```haxe
var minEdgeLength:Int
```

Once a voxel patch has an edge length of less than 4 on all 3 sides, we don't keep recursing.

### findBestPlane

```haxe
var findBestPlane:Bool
```

Whether or not to attempt to split planes along the best location. Experimental feature. False by default.
