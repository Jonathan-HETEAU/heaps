# h2d.col.Voronoi

**class** · package [`h2d.col`](README.md) · source [`h2d/col/Voronoi.hx`](../../../../../h2d/col/Voronoi.hx)

A Steven Fortune's algorithm to compute Voronoi diagram from given set of Points and a bounding box.

The implementation is a port from JS library: https://github.com/gorhill/Javascript-Voronoi

## Constructor

### new

```haxe
function new(?epsilon:Float = 1e-9):Void
```

Create a new Voronoi algorithm calculator.

## Methods

### reset

```haxe
function reset():Void
```

Clean up the calculator from previous operation, and prepare for a new one.

Not required to be called manually, as it's invoked by `Voronoi.compute`.

### compute

```haxe
function compute(points:Array<Point>, bbox:Bounds):Diagram
```

Compute the Voronoi diagram based on given list of points and bounding box.
