# h2d.LevelGroup

**class** · package [`h2d`](README.md) · module `h2d.CdbLevel` · source [`h2d/CdbLevel.hx`](../../../../h2d/CdbLevel.hx)

[CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder.

## Constructor

### new

```haxe
function new(name:String, tset:LevelTileset, x:Int, y:Int, w:Int, h:Int, val:Null<Dynamic>):Void
```

Creates a group of the tileset at the given position and size, in tiles.

## Variables

### tileset

```haxe
var tileset:LevelTileset
```

The tileset of the group.

### name

```haxe
var name:String
```

The name of the group.

### id

```haxe
var id:Int
```

The id of the top left tile of the group.

### x

```haxe
var x:Int
```

The X position of the group in the tileset, in tiles.

### y

```haxe
var y:Int
```

The Y position of the group in the tileset, in tiles.

### width

```haxe
var width:Int
```

The width of the group, in tiles.

### height

```haxe
var height:Int
```

The height of the group, in tiles.

### tile

```haxe
var tile:Tile
```

The tile of the whole group.

### value

```haxe
var value:Dynamic
```

The value set on the group in the editor.
