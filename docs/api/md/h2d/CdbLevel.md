# h2d.CdbLevel

**class** · package [`h2d`](README.md) · source [`h2d/CdbLevel.hx`](../../../../h2d/CdbLevel.hx)

Extends: [`h2d.Layers`](Layers.md) → [`h2d.Object`](Object.md)

A decoder and renderer for levels created with the CastleDB 2D level editor.
See http://castledb.org for more details.

## Constructor

### new

```haxe
function new(allLevels:cdb.Index<Dynamic>, index:Int, ?parent:Object):Void
```

Creates the level of the given index in the CastleDB levels sheet.

## Variables

### width

```haxe
var width(default, null):Int
```

The width of the level, in tiles.

### height

```haxe
var height(default, null):Int
```

The height of the level, in tiles.

### level

```haxe
var level(default, null):LevelSpec
```

The level data.

### layers

```haxe
var layers:Array<LevelLayer>
```

The layers of the level.

## Methods

### getLevelLayer

```haxe
function getLevelLayer(name:String):LevelLayer
```

Returns the layer of the given name.

### buildIntProperty

```haxe
function buildIntProperty(name:String):Null<Array<Int>>
```

Returns the value of the given per-tile property for each cell of the level, merged over all the layers (the greatest value wins).

### buildStringProperty

```haxe
function buildStringProperty(name:String):Null<Array<String>>
```

Returns the value of the given per-tile string property for each cell of the level, merged over all the layers (the top layer wins).

### getTileset

```haxe
function getTileset(file:String):LevelTileset
```

Returns the tileset of the given image file, if used by the level.

### redraw

```haxe
function redraw():Void
```

Redraws the layers that changed.

## Inherited members

- from [`h2d.Layers`](Layers.md): `addChild`, `add`, `addChildAt`, `removeChild`, `under`, `over`, `getLayer`, `getChildAtLayer`, `getChildLayer`, `getChildIndexInLayer`, `ysort`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
