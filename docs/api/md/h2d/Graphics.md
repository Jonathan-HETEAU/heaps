# h2d.Graphics

**class** · package [`h2d`](README.md) · source [`h2d/Graphics.hx`](../../../../h2d/Graphics.hx)

Extends: [`h2d.Drawable`](Drawable.md) → [`h2d.Object`](Object.md)

Subclasses: [`h3d.impl.Benchmark`](../h3d/impl/Benchmark.md)

A simple interface to draw arbitrary 2D geometry.

Usage notes:
* While Graphics allows for multiple unique textures, each texture swap causes a new drawcall,
and due to that it's recommended to minimize the amount of used textures per Graphics instance,
ideally limiting to only one texture.
* Due to how Graphics operate, removing them from the active `h2d.Scene` will cause a loss of all data.

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

Create a new Graphics instance.
- **param** `parent` An optional parent `h2d.Object` instance to which Graphics adds itself if set.

## Variables

### tile

```haxe
var tile:Tile
```

The Tile used as source of Texture to render.

### bevel

```haxe
var bevel:Float
```

Adds bevel cut-off at line corners.

The value is a percentile in range of 0...1, dictating at which point edges get beveled based on their angle.
Value of 0 being not beveled and 1 being always beveled.

## Methods

### clear

```haxe
function clear():Void
```

Clears the Graphics contents.

### beginFill

```haxe
function beginFill(?color:Int = 0, ?alpha:Float = 1.):Void
```

Begins a solid color fill.

Beginning new fill will finish previous fill operation without need to call `Graphics.endFill`.

- **param** `color` An RGB color with which to fill the drawn shapes.
- **param** `alpha` A transparency of the fill color.

### beginTileFill

```haxe
function beginTileFill(?dx:Float, ?dy:Float, ?scaleX:Float, ?scaleY:Float, ?tile:Tile):Void
```

Position a virtual tile at the given position and scale. Every draw will display a part of this tile relative
to these coordinates.

Note that in by default, Tile is not wrapped, and in order to render a tiling texture, `Drawable.tileWrap` has to be set.
Additionally, both `Tile.dx` and `Tile.dy` are ignored (use `dx`/`dy` arguments instead)
as well as tile defined size of the tile through `Tile.width` and `Tile.height` (use `scaleX`/`scaleY` relative to texture size).

Beginning new fill will finish previous fill operation without need to call `Graphics.endFill`.

- **param** `dx` An X offset of the Tile relative to Graphics.
- **param** `dy` An Y offset of the Tile relative to Graphics.
- **param** `scaleX` A horizontal scale factor applied to the Tile texture.
- **param** `scaleY` A vertical scale factor applied to the Tile texture.
- **param** `tile` The tile to fill with. If null, uses previously used Tile with `beginTileFill` or throws an error.
Previous tile is remembered across `Graphics.clear` calls.

### drawTile

```haxe
function drawTile(x:Float, y:Float, tile:Tile):Void
```

Draws a Tile at given position.
See `Graphics.beginTileFill` for limitations.

This methods ends current fill operation.
- **param** `x` The X position of the tile.
- **param** `y` The Y position of the tile.
- **param** `tile` The tile to draw.

### lineStyle

```haxe
function lineStyle(?size:Float = 0, ?color:Int = 0, ?alpha:Float = 1.):Void
```

Sets an outline style. Changing the line style ends the currently drawn line.

- **param** `size` Width of the outline. Setting size to 0 will remove the outline.
- **param** `color` An outline RGB color.
- **param** `alpha` An outline transparency.

### moveTo

```haxe
inline function moveTo(x:Float, y:Float):Void
```

Ends the current line and starts new one at given position.

### endFill

```haxe
function endFill():Void
```

Ends the current fill operation.

### setColor

```haxe
inline function setColor(color:Int, ?alpha:Float = 1.):Void
```

Changes current fill color.
Does not interrupt current fill operation and can be utilized to customize color per vertex.
During tile fill operation, color serves as a tile color multiplier.
- **param** `color` The new fill color.
- **param** `alpha` The new fill transparency.

### drawRect

```haxe
function drawRect(x:Float, y:Float, w:Float, h:Float):Void
```

Draws a rectangle with given parameters.
- **param** `x` The rectangle top-left corner X position.
- **param** `y` The rectangle top-left corner Y position.
- **param** `w` The rectangle width.
- **param** `h` The rectangle height.

### drawRoundedRect

```haxe
function drawRoundedRect(x:Float, y:Float, w:Float, h:Float, radius:Float, ?nsegments:Int = 0):Void
```

Draws a rounded rectangle with given parameters.
- **param** `x` The rectangle top-left corner X position.
- **param** `y` The rectangle top-left corner Y position.
- **param** `w` The rectangle width.
- **param** `h` The rectangle height.
- **param** `radius` Radius of the rectangle corners.
- **param** `nsegments` Amount of segments used for corners. When `0` segment count calculated automatically.

### drawCircle

```haxe
function drawCircle(cx:Float, cy:Float, radius:Float, ?nsegments:Int = 0):Void
```

Draws a circle centered at given position.
- **param** `cx` X center position of the circle.
- **param** `cy` Y center position of the circle.
- **param** `radius` Radius of the circle.
- **param** `nsegments` Amount of segments used to draw the circle. When `0`, amount of segments calculated automatically.

### drawEllipse

```haxe
function drawEllipse(cx:Float, cy:Float, radiusX:Float, radiusY:Float, ?rotationAngle:Float = 0, ?nsegments:Int = 0):Void
```

Draws an ellipse centered at given position.
- **param** `cx` X center position of the ellipse.
- **param** `cy` Y center position of the ellipse.
- **param** `radiusX` Horizontal radius of an ellipse.
- **param** `radiusY` Vertical radius of an ellipse.
- **param** `rotationAngle` Ellipse rotation in radians.
- **param** `nsegments` Amount of segments used to draw an ellipse. When `0`, amount of segments calculated automatically.

### drawPie

```haxe
function drawPie(cx:Float, cy:Float, radius:Float, angleStart:Float, angleLength:Float, ?nsegments:Int = 0):Void
```

Draws a pie centered at given position.
- **param** `cx` X center position of the pie.
- **param** `cy` Y center position of the pie.
- **param** `radius` Radius of the pie.
- **param** `angleStart` Starting angle of the pie in radians.
- **param** `angleLength` The pie size in clockwise direction with `2*PI` being full circle.
- **param** `nsegments` Amount of segments used to draw the pie. When `0`, amount of segments calculated automatically.

### drawPieInner

```haxe
function drawPieInner(cx:Float, cy:Float, radius:Float, innerRadius:Float, angleStart:Float, angleLength:Float, ?nsegments:Int = 0):Void
```

Draws a double-edged pie centered at given position.
- **param** `cx` X center position of the pie.
- **param** `cy` Y center position of the pie.
- **param** `radius` The outer radius of the pie.
- **param** `innerRadius` The inner radius of the pie.
- **param** `angleStart` Starting angle of the pie in radians.
- **param** `angleLength` The pie size in clockwise direction with `2*PI` being full circle.
- **param** `nsegments` Amount of segments used to draw the pie. When `0`, amount of segments calculated automatically.

### drawRectanglePie

```haxe
function drawRectanglePie(cx:Float, cy:Float, width:Float, height:Float, angleStart:Float, angleLength:Float, ?nsegments:Int = 0):Void
```

Draws a rectangular pie centered at given position.
- **param** `cx` X center position of the pie.
- **param** `cy` Y center position of the pie.
- **param** `width` Width of the pie.
- **param** `height` Height of the pie.
- **param** `angleStart` Starting angle of the pie in radians.
- **param** `angleLength` The pie size in clockwise direction with `2*PI` being solid rectangle.
- **param** `nsegments` Amount of segments used to draw the pie. When `0`, amount of segments calculated automatically.

### curveTo

```haxe
function curveTo(bx:Float, by:Float, cx:Float, cy:Float):Void
```

* Draws a quadratic Bezier curve using the current line style from the current drawing position to (cx, cy) and using the control point that (bx, by) specifies.
* IvanK Lib port ( http://lib.ivank.net )

### cubicCurveTo

```haxe
function cubicCurveTo(bx:Float, by:Float, cx:Float, cy:Float, dx:Float, dy:Float, ?nsegments:Int = 40):Void
```

* Draws a cubic Bezier curve from the current drawing position to the specified anchor point.
* IvanK Lib port ( http://lib.ivank.net )
* @param bx control X for start point
* @param by control Y for start point
* @param cx control X for end point
* @param cy control Y for end point
* @param dx end X
* @param dy end Y
* @param nsegments = 40

### lineTo

```haxe
inline function lineTo(x:Float, y:Float):Void
```

Draws a straight line from the current drawing position to the given position.

### addVertex

```haxe
function addVertex(x:Float, y:Float, r:Float, g:Float, b:Float, a:Float, ?u:Float = 0., ?v:Float = 0.):Void
```

Advanced usage. Adds new vertex to the current polygon with given parameters and current line style.
- **param** `x` Vertex X position
- **param** `y` Vertex Y position
- **param** `r` Red tint value of the vertex when performing fill operation.
- **param** `g` Green tint value of the vertex when performing fill operation.
- **param** `b` Blue tint value of the vertex when performing fill operation.
- **param** `a` Alpha of the vertex when performing fill operation.
- **param** `u` Normalized horizontal Texture position from the current Tile fill operation.
- **param** `v` Normalized vertical Texture position from the current Tile fill operation.

## Inherited members

- from [`h2d.Drawable`](Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
