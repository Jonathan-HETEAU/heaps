# hxd.earcut.Earcut

**class** · package [`hxd.earcut`](README.md) · source [`hxd/earcut/Earcut.hx`](../../../../../hxd/earcut/Earcut.hx)

Ported from https://github.com/mapbox/earcut by @ncannasse

## Constructor

### new

```haxe
function new():Void
```

Creates a triangulator.

## Methods

### triangulate

```haxe
function triangulate(points:Array<triangulate.T>, ?holes:Array<Int>):Array<Int>
```

Triangulates the polygon and returns the indexes of the triangles. `holes` gives the index of the first point of each hole in `points` (the outline is before the first hole).

### triangulateNode

```haxe
function triangulateNode(root:EarNode, useZOrder:Bool):Array<Int>
```

Triangulates the linked list of vertices, using a Z-order curve index if `useZOrder` is set (for big polygons).
