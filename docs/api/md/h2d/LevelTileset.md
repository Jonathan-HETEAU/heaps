# h2d.LevelTileset

**class** · package [`h2d`](README.md) · module `h2d.CdbLevel` · source [`h2d/CdbLevel.hx`](../../../../h2d/CdbLevel.hx)

[CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### stride

```haxe
var stride:Int
```

### size

```haxe
var size:Int
```

### res

```haxe
var res:hxd.res.Image
```

### tile

```haxe
var tile:Tile
```

### tiles

```haxe
var tiles:Array<Tile>
```

### objects

```haxe
var objects:Array<LevelObject>
```

### groups

```haxe
var groups:Map<String, LevelGroup>
```

### groupsById

```haxe
var groupsById:Array<LevelGroup>
```

### tilesProps

```haxe
var tilesProps(get, null):Array<Dynamic>
```

## Methods

### getTileBuilder

```haxe
function getTileBuilder():cdb.TileBuilder
```
