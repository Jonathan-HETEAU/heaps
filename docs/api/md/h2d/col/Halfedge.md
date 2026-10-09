# h2d.col.Halfedge

**class** · package [`h2d.col`](README.md) · module `h2d.col.Voronoi` · source [`h2d/col/Voronoi.hx`](../../../../../h2d/col/Voronoi.hx)

The edge attached to a Voronoi `Cell`.

## Variables

### point

```haxe
var point:Point
```

The seed Point of the Cell this edge is attached to.

### edge

```haxe
var edge:Edge
```

The Edge this half-edge is attached to.

### angle

```haxe
var angle:Float
```

The perpendicular angle to the edge segment pointing in the direction of either neighboring Cell of the border.

## Methods

### getStartpoint

```haxe
inline function getStartpoint():Null<Point>
```

Returns the starting point of the edge segment.

### getEndpoint

```haxe
inline function getEndpoint():Null<Point>
```

Returns the end point of the edge segment.

### getTarget

```haxe
inline function getTarget():Null<Cell>
```

Returns the neighboring Cell of this half-edge or null if it's a border edge.
