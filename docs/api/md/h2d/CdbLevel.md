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

## Variables

### width

```haxe
var width(default, null):Int
```

### height

```haxe
var height(default, null):Int
```

### level

```haxe
var level(default, null):LevelSpec
```

### layers

```haxe
var layers:Array<LevelLayer>
```

## Methods

### getLevelLayer

```haxe
function getLevelLayer(name:String):LevelLayer
```

### buildIntProperty

```haxe
function buildIntProperty(name:String):Null<Array<Int>>
```

### buildStringProperty

```haxe
function buildStringProperty(name:String):Null<Array<String>>
```

### getTileset

```haxe
function getTileset(file:String):LevelTileset
```

### redraw

```haxe
function redraw():Void
```

## Inherited members

- from [`h2d.Layers`](Layers.md): `addChild`, `add`, `addChildAt`, `removeChild`, `under`, `over`, `getLayer`, `getChildAtLayer`, `getChildLayer`, `getChildIndexInLayer`, `ysort`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
