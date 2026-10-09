# hxd.clipper.Clipper

**class** · package [`hxd.clipper`](README.md) · source [`hxd/clipper/Clipper.hx`](../../../../../hxd/clipper/Clipper.hx)

Extends: `hxd.clipper._Clipper.ClipperBase`

## Constructor

### new

```haxe
function new():Void
```

## Static methods

### Orientation

```haxe
static inline function Orientation(poly:h2d.col.IPolygon):Bool
```

### polArea

```haxe
static function polArea(poly:h2d.col.IPolygon):Float
```

### SimplifyPolygon

```haxe
static function SimplifyPolygon(poly:h2d.col.IPolygon, ?fillType:PolyFillType):Array<h2d.col.IPolygon>
```

### SimplifyPolygons

```haxe
static function SimplifyPolygons(polys:h2d.col.IPolygons, ?fillType:PolyFillType):Array<h2d.col.IPolygon>
```

### MinkowskiSums

```haxe
static function MinkowskiSums(pattern:h2d.col.IPolygon, pols:h2d.col.IPolygons, ?kind:ResultKind):Array<h2d.col.IPolygon>
```

### MinkowskiDiff

```haxe
static function MinkowskiDiff(pattern:h2d.col.IPolygon, pol:h2d.col.IPolygon, ?kind:ResultKind):Array<h2d.col.IPolygon>
```

## Variables

### strictlySimple

```haxe
var strictlySimple:Bool
```

### reverseSolution

```haxe
var reverseSolution:Bool
```

### resultKind

```haxe
var resultKind:ResultKind
```

## Methods

### execute

```haxe
function execute(clipType:ClipType, ?subjFillType:PolyFillType, ?clipFillType:PolyFillType):Array<h2d.col.IPolygon>
```

### ExecuteTree

```haxe
function ExecuteTree(clipType:ClipType, polytree:hxd.clipper._Clipper.PolyTree, ?subjFillType:PolyFillType, ?clipFillType:PolyFillType):Bool
```

### PointInPolygon

```haxe
function PointInPolygon(pt:h2d.col.IPoint, pol:h2d.col.IPolygon):Int
```

### CleanPolygon

```haxe
function CleanPolygon(path:h2d.col.IPolygon, ?distance:Float = 1.415):h2d.col.IPolygon
```

### CleanPolygons

```haxe
function CleanPolygons(polys:h2d.col.IPolygons, ?distance:Float = 1.415):h2d.col.IPolygons
```

### MinkowskiSum

```haxe
function MinkowskiSum(pattern:h2d.col.IPolygon, pol:h2d.col.IPolygon, ?kind:ResultKind):Array<h2d.col.IPolygon>
```

### PolyTreeToPaths

```haxe
function PolyTreeToPaths(polytree:hxd.clipper._Clipper.PolyTree):h2d.col.IPolygons
```
