# h2d.col.Delaunay

**class** · package [`h2d.col`](README.md) · source [`h2d/col/Delaunay.hx`](../../../../../h2d/col/Delaunay.hx)

A Delaunay triangulation utility. See `Delaunay.triangulate`.

## Static methods

### triangulate

```haxe
static function triangulate(points:Array<Point>):Array<DelaunayTriangle>
```

Performs a Delaunay triangulation on a given set of Points and returns a list of calculated triangles.
See here for more information: https://en.wikipedia.org/wiki/Delaunay_triangulation
