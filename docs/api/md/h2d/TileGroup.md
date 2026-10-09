# h2d.TileGroup

**class** · package [`h2d`](README.md) · source [`h2d/TileGroup.hx`](../../../../h2d/TileGroup.hx)

Extends: [`h2d.Drawable`](Drawable.md) → [`h2d.Object`](Object.md)

Subclasses: [`h2d.ScaleGrid`](ScaleGrid.md)

A static Tile batch renderer.

TileGroup follows an upload-once policy and does not allow modification of the already added geometry.
To add new geometry it's mandatory to call `TileGroup.invalidate`. In case existing geometry has to be modified -
entire group have to be cleared with `TileGroup.clear` and repopulated from ground up.

Usage note: While TileGroup allows for multiple unique textures, each texture swap causes a new drawcall,
and due to that it's recommended to minimize the amount of used textures per TileGroup instance,
ideally limiting to only one texture.

## Constructor

### new

```haxe
function new(?t:Tile, ?parent:Object):Void
```

Create new TileGroup instance using Texture based on provided Tile.
- **param** `t` The Tile which is used as a source for a Texture to be rendered.
- **param** `parent` An optional parent `h2d.Object` instance to which TileGroup adds itself if set.

## Variables

### tile

```haxe
var tile:Tile
```

The reference tile used as a Texture source to draw.

### rangeMin

```haxe
var rangeMin:Int
```

If set, only tiles indexed above or equal to `rangeMin` will be drawn.

### rangeMax

```haxe
var rangeMax:Int
```

If set, only tiles indexed below `rangeMax` will be drawn.

## Methods

### clear

```haxe
function clear():Void
```

Clears all TileGroup contents and disposes allocated GPU memory.

### invalidate

```haxe
function invalidate():Void
```

When new data is added, it's not automatically flushed to the GPU memory if it was already allocated
(when TileGroup is either rendered or received `Object.sync` call),
in which case call `invalidate()` to force a refresh of the GPU data.

### count

```haxe
function count():Int
```

Returns the number of tiles added to the group.

### setDefaultColor

```haxe
function setDefaultColor(rgb:Int, ?alpha:Float = 1.0):Void
```

Sets the default tinting color when adding new Tiles.

### add

```haxe
inline function add(x:Float, y:Float, t:Tile):Void
```

Adds a Tile at specified position. Tile is tinted by the current default color.
- **param** `x` X position of the tile relative to the TileGroup.
- **param** `y` Y position of the tile relative to the TileGroup.
- **param** `t` The Tile to draw.

### addColor

```haxe
inline function addColor(x:Float, y:Float, r:Float, g:Float, b:Float, a:Float, t:Tile):Void
```

Adds a tinted Tile at specified position.
- **param** `x` X position of the tile relative to the TileGroup.
- **param** `y` Y position of the tile relative to the TileGroup.
- **param** `r` Red tint value (0...1 range).
- **param** `g` Green tint value (0...1 range).
- **param** `b` Blue tint value (0...1 range).
- **param** `a` Alpha of the drawn Tile.
- **param** `t` The Tile to draw.

### addAlpha

```haxe
inline function addAlpha(x:Float, y:Float, a:Float, t:Tile):Void
```

Adds a Tile at specified position. Tile is tinted by the current default color RGB value and provided alpha.
- **param** `x` X position of the tile relative to the TileGroup.
- **param** `y` Y position of the tile relative to the TileGroup.
- **param** `a` Alpha of the drawn Tile.
- **param** `t` The Tile to draw.

### addTransform

```haxe
inline function addTransform(x:Float, y:Float, sx:Float, sy:Float, r:Float, t:Tile):Void
```

Adds a Tile at specified position with provided transform. Tile is tinted by the current default color.
- **param** `x` X position of the tile relative to the TileGroup.
- **param** `y` Y position of the tile relative to the TileGroup.
- **param** `sx` X-axis scaling factor of the Tile.
- **param** `sy` Y-axis scaling factor of the Tile.
- **param** `r` Rotation (in radians) of the Tile.
- **param** `t` The Tile to draw.

## Inherited members

- from [`h2d.Drawable`](Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
