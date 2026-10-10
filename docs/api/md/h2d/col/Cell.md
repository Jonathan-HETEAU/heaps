# h2d.col.Cell

**class** · package [`h2d.col`](README.md) · module `h2d.col.Voronoi` · source [`h2d/col/Voronoi.hx`](../../../../../h2d/col/Voronoi.hx)

The resulting cell inside the Voronoi diagram.

## Variables

### id

```haxe
var id:Int
```

The unique ID/Index of the cell.

### point

```haxe
var point:Point
```

The source seed point of the cell.

### halfedges

```haxe
var halfedges:Array<Halfedge>
```

The list of the edges of the cell.

### closeMe

```haxe
var closeMe:Bool
```

Set when the cell touches the bounding box and must be closed.

## Methods

### getCircle

```haxe
function getCircle():Circle
```

Returns an enclosing circle collider of the Cell.

_Implementation note_: Not the best possible solution and may produce artifacts.

### getNeighbors

```haxe
function getNeighbors():Array<Point>
```

Returns a list of the neighboring cells.

### getNeighborIndexes

```haxe
function getNeighborIndexes():Array<Int>
```

Returns a list of the neighbor Cell indexes.

### getBbox

```haxe
function getBbox():{ y:Float, x:Float, width:Float, height:Float }
```

Returns a bounding box of the Cell.

### pointIntersection

```haxe
function pointIntersection(x:Float, y:Float):Int
```

Tests if given position is inside, on, or outside of the cell.
- **returns** s
* -1: point is outside the perimeter of the cell
* 0: point is on the perimeter of the cell
* 1: point is inside the perimeter of the cell
