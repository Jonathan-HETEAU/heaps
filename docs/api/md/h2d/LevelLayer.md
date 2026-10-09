# h2d.LevelLayer

**class** · package [`h2d`](README.md) · module `h2d.CdbLevel` · source [`h2d/CdbLevel.hx`](../../../../h2d/CdbLevel.hx)

[CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder.

## Constructor

### new

```haxe
function new(level:CdbLevel):Void
```

## Variables

### level

```haxe
var level:CdbLevel
```

Which level this layer belongs to

### name

```haxe
var name:String
```

The name of the layer, as it was created in CDB

### layerIndex

```haxe
var layerIndex(default, null):Int
```

CdbLevel extends Layers: this index will tell in which object layer this LevelLayer content is added to.

### data

```haxe
var data:LevelLayerData
```

The raw data of the layer. You can read it or modify it then set needRedraw=true to update it on screen.

### tileset

```haxe
var tileset:LevelTileset
```

The tileset this layer is using to display its graphics

### needRedraw

```haxe
var needRedraw:Bool
```

If the layer needs to be redrawn, it's set to true.

### objectsBehind

```haxe
var objectsBehind(default, set):Bool
```

Allows to add objects on the same layerIndex that can behind or in front of the

### contents

```haxe
var contents:Array<TileGroup>
```

One or several tile groups that will be used to display the layer

### content

```haxe
var content(get, null):TileGroup
```

Alias to the first element of contents

## Methods

### remove

```haxe
function remove():Void
```

Entirely removes this layer from the level.

### buildIntProperty

```haxe
function buildIntProperty(name:String):Array<Int>
```

Returns the data for the given CDB per-tile property based on the data of the current layer.
For instance if you have a "collide" per-tile property set for several of your objects or tiles,
then calling buildIntProperty("collide") will return you with the collide data for the given layer.
In case of objects, if several objects overlaps, the greatest property value overwrites the lowest.

### buildStringProperty

```haxe
function buildStringProperty(name:String):Array<String>
```
