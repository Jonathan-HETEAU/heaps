# h3d.impl.Benchmark

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/Benchmark.hx`](../../../../../h3d/impl/Benchmark.hx)

Extends: [`h2d.Graphics`](../../h2d/Graphics.md) → [`h2d.Drawable`](../../h2d/Drawable.md) → [`h2d.Object`](../../h2d/Object.md)

A 2D bar displaying the GPU time of each section of the frame (with GPU timestamp queries), with the draw calls. Call `begin` at the start of the frame, `measure` at the start of each section, and `end` at the end of the frame.

## Constructor

### new

```haxe
function new(?parent:h2d.Object):Void
```

Creates the bar.

## Static methods

### takeControl

```haxe
static function takeControl(app:hxd.App, ?s3d:h3d.scene.Scene):Void
```

Freezes the application to inspect the scene: replaces the main loop by rendering only, with an orbit camera controller, and disables the culling to show the culled objects.

## Variables

### estimateWait

```haxe
var estimateWait:Bool
```

If set, the time waiting for the next frame (vsync) is estimated and displayed.

### enable

```haxe
var enable(default, set):Bool
```

Enables the measures and the display.

### width

```haxe
var width:Null<Int>
```

The width of the bar, or `null` for the width of the scene.

### height

```haxe
var height:Int
```

The height of the bar, in pixels.

### textColor

```haxe
var textColor:Int
```

The color of the labels.

### colors

```haxe
var colors:Array<Int>
```

The colors of the sections.

### font

```haxe
var font:h2d.Font
```

The font of the labels.

### recalTime

```haxe
var recalTime:Float
```

The frame time change (in nanoseconds) above which the smoothed frame time is reset.

### smoothTime

```haxe
var smoothTime:Float
```

The smoothing factor of the frame time, from `0` (none) to `1`.

### measureCpu

```haxe
var measureCpu:Bool
```

If set, the CPU time is measured instead of the GPU time.

### displayTriangleCount

```haxe
var displayTriangleCount:Bool
```

Displays the number of triangles drawn.

### measureCpuThread _(hl/sdl, hl/directx only)_

```haxe
var measureCpuThread:sys.thread.Thread
```

## Methods

### clear

```haxe
override function clear():Void
```

### begin

```haxe
function begin(?withVisual:Bool = true):Void
```

Starts measuring a frame. The display is updated if `withVisual` is set.

### syncVisual

```haxe
function syncVisual():Void
```

Updates the display with the last measures.

### end

```haxe
function end():Void
```

Ends the measure of the frame.

### measure

```haxe
function measure(name:String):Void
```

Starts the section of the given name.

### getCurrentId

```haxe
function getCurrentId():String
```

Returns the name of the current section, or `null`.

## Inherited members

- from [`h2d.Graphics`](../../h2d/Graphics.md): `tile`, `bevel`, `clear`, `beginFill`, `beginTileFill`, `drawTile`, `lineStyle`, `moveTo`, `endFill`, `setColor`, `drawRect`, `drawRoundedRect`, `drawCircle`, `drawEllipse`, `drawPie`, `drawPieInner`, `drawRectanglePie`, `curveTo`, `cubicCurveTo`, `lineTo`, `addVertex`
- from [`h2d.Drawable`](../../h2d/Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](../../h2d/Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
