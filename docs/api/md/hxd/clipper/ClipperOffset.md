# hxd.clipper.ClipperOffset

**class** · package [`hxd.clipper`](README.md) · module `hxd.clipper.Clipper` · source [`hxd/clipper/Clipper.hx`](../../../../../hxd/clipper/Clipper.hx)

## Constructor

### new

```haxe
function new(?miterLimit:Float = 2.0, ?arcTolerance:Float = 0.25):Void
```

## Variables

### ArcTolerance

```haxe
var ArcTolerance:Float
```

### MiterLimit

```haxe
var MiterLimit:Float
```

### resultKind

```haxe
var resultKind:ResultKind
```

## Methods

### clear

```haxe
function clear():Void
```

### addPolygon

```haxe
function addPolygon(pol:h2d.col.IPolygon, joinType:JoinType, endType:EndType):Void
```

### addPolygons

```haxe
function addPolygons(pols:h2d.col.IPolygons, joinType:JoinType, endType:EndType):Void
```

### execute

```haxe
function execute(delta:Float):Array<h2d.col.IPolygon>
```
