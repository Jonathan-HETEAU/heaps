# h3d.impl.Benchmark

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/Benchmark.hx`](../../../../../h3d/impl/Benchmark.hx)

Extends: [`h2d.Graphics`](../../h2d/Graphics.md) → [`h2d.Drawable`](../../h2d/Drawable.md) → [`h2d.Object`](../../h2d/Object.md)

## Constructor

### new

```haxe
function new(?parent:h2d.Object):Void
```

## Static methods

### takeControl

```haxe
static function takeControl(app:hxd.App, ?s3d:h3d.scene.Scene):Void
```

## Variables

### estimateWait

```haxe
var estimateWait:Bool
```

### enable

```haxe
var enable(default, set):Bool
```

### width

```haxe
var width:Null<Int>
```

### height

```haxe
var height:Int
```

### textColor

```haxe
var textColor:Int
```

### colors

```haxe
var colors:Array<Int>
```

### font

```haxe
var font:h2d.Font
```

### recalTime

```haxe
var recalTime:Float
```

### smoothTime

```haxe
var smoothTime:Float
```

### measureCpu

```haxe
var measureCpu:Bool
```

### displayTriangleCount

```haxe
var displayTriangleCount:Bool
```

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

### syncVisual

```haxe
function syncVisual():Void
```

### end

```haxe
function end():Void
```

### measure

```haxe
function measure(name:String):Void
```

### getCurrentId

```haxe
function getCurrentId():String
```

## Inherited members

- from [`h2d.Graphics`](../../h2d/Graphics.md): `tile`, `bevel`, `clear`, `beginFill`, `beginTileFill`, `drawTile`, `lineStyle`, `moveTo`, `endFill`, `setColor`, `drawRect`, `drawRoundedRect`, `drawCircle`, `drawEllipse`, `drawPie`, `drawPieInner`, `drawRectanglePie`, `curveTo`, `cubicCurveTo`, `lineTo`, `addVertex`
- from [`h2d.Drawable`](../../h2d/Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](../../h2d/Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
