# hxd.poly2tri.Point

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/Point.hx`](../../../../../hxd/poly2tri/Point.hx)

A point of the polygon to triangulate.

## Constructor

### new

```haxe
function new(x:Float, y:Float):Void
```

Creates a point.

## Static variables

### C_ID

```haxe
static var C_ID:Int
```

The identifier of the next point.

## Static methods

### sortPoints

```haxe
static function sortPoints(points:Array<Point>):Void
```

Sorts the points by Y, then X.

### cmpPoints

```haxe
static function cmpPoints(l:Point, r:Point):Int
```

Compares two points by Y, then X.

## Variables

### id

```haxe
var id:Int
```

The unique identifier of the point.

### x

```haxe
var x:Float
```

The X coordinate.

### y

```haxe
var y:Float
```

The Y coordinate.

### edge_list

```haxe
var edge_list(get, null):Array<Edge>
```

The constrained edges whose upper point is this one.

## Methods

### equals

```haxe
inline function equals(that:Point):Bool
```

Tells if the points have the same coordinates.

### toString

```haxe
function toString():String
```

Returns a description of the point.
