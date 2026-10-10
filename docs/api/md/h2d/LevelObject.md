# h2d.LevelObject

**class** · package [`h2d`](README.md) · module `h2d.CdbLevel` · source [`h2d/CdbLevel.hx`](../../../../h2d/CdbLevel.hx)

[CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder.

## Constructor

### new

```haxe
function new(tset:LevelTileset, x:Int, y:Int, w:Int, h:Int):Void
```

Creates an object of the tileset at the given position and size, in tiles.

## Variables

### tileset

```haxe
var tileset:LevelTileset
```

The tileset of the object.

### id

```haxe
var id:Int
```

The id of the top left tile of the object.

### x

```haxe
var x:Int
```

The X position of the object in the tileset, in tiles.

### y

```haxe
var y:Int
```

The Y position of the object in the tileset, in tiles.

### width

```haxe
var width:Int
```

The width of the object, in tiles.

### height

```haxe
var height:Int
```

The height of the object, in tiles.

### props

```haxe
var props:Dynamic
```

The properties of the object.

### tile

```haxe
var tile:Tile
```

The tile of the whole object.
