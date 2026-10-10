# h2d.LevelTileset

**class** · package [`h2d`](README.md) · module `h2d.CdbLevel` · source [`h2d/CdbLevel.hx`](../../../../h2d/CdbLevel.hx)

[CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty tileset.

## Variables

### stride

```haxe
var stride:Int
```

The number of tiles per row in the tileset.

### size

```haxe
var size:Int
```

The size of a tile in pixels.

### res

```haxe
var res:hxd.res.Image
```

The tileset image.

### tile

```haxe
var tile:Tile
```

The tile of the whole tileset image.

### tiles

```haxe
var tiles:Array<Tile>
```

The tiles of the tileset, row by row.

### objects

```haxe
var objects:Array<LevelObject>
```

The objects defined in the tileset, indexed by the id of their top left tile.

### groups

```haxe
var groups:Map<String, LevelGroup>
```

The named groups defined in the tileset.

### groupsById

```haxe
var groupsById:Array<LevelGroup>
```

The groups defined in the tileset, indexed by the id of their top left tile.

### tilesProps

```haxe
var tilesProps(get, null):Array<Dynamic>
```

The per-tile properties of the tileset.

## Methods

### getTileBuilder

```haxe
function getTileBuilder():cdb.TileBuilder
```

Returns the CastleDB tile builder of the tileset, used to draw ground borders.
