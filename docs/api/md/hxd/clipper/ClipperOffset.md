# hxd.clipper.ClipperOffset

**class** · package [`hxd.clipper`](README.md) · module `hxd.clipper.Clipper` · source [`hxd/clipper/Clipper.hx`](../../../../../hxd/clipper/Clipper.hx)

Offsets (grows or shrinks) polygons and paths. Add them with `addPolygon`, then call `execute`.

## Constructor

### new

```haxe
function new(?miterLimit:Float = 2.0, ?arcTolerance:Float = 0.25):Void
```

Creates an offsetter.

## Variables

### ArcTolerance

```haxe
var ArcTolerance:Float
```

The maximum distance between a round join and its approximation.

### MiterLimit

```haxe
var MiterLimit:Float
```

The maximum distance of a mitered corner, as a multiple of the offset, before it is squared.

### resultKind

```haxe
var resultKind:ResultKind
```

The polygons kept in the result.

## Methods

### clear

```haxe
function clear():Void
```

Removes the polygons.

### addPolygon

```haxe
function addPolygon(pol:h2d.col.IPolygon, joinType:JoinType, endType:EndType):Void
```

Adds a polygon with the join and end types.

### addPolygons

```haxe
function addPolygons(pols:h2d.col.IPolygons, joinType:JoinType, endType:EndType):Void
```

Adds polygons with the join and end types.

### execute

```haxe
function execute(delta:Float):Array<h2d.col.IPolygon>
```

Returns the polygons offset by `delta` (negative to shrink).
