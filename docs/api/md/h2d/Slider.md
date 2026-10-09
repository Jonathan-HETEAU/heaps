# h2d.Slider

**class** · package [`h2d`](README.md) · source [`h2d/Slider.hx`](../../../../h2d/Slider.hx)

Extends: [`h2d.Interactive`](Interactive.md) → [`h2d.Object`](Object.md)

A simple interactive horizontal numerical slider.

## Constructor

### new

```haxe
function new(?width:Int = 50, ?height:Int = 10, ?parent:Object):Void
```

Create a new Slider width specified dimensions and parent.
- **param** `width` The width of the Slider interactive area.
- **param** `height` The height of the Slider interactive area.
- **param** `parent` An optional parent `h2d.Object` instance to which Sliders adds itself if set.

## Variables

### tile

```haxe
var tile:Tile
```

The slider background tile.

If Tile width does not match with Slider width, it will be resized through `Tile.setSize` to match the Slider width.

Defaults to the monocolor 0x808080 Tile with the size of `Slider.width x 4` and centered vertically within `Slider.height`.

### cursorTile

```haxe
var cursorTile:Tile
```

Tile of the slider current position caret.

Defaults to the monocolor #CCCCCC Tile with the size of `5 x Slider.height`.

### minValue

```haxe
var minValue(default, set):Float
```

The minimum value the Slider can allow.

### maxValue

```haxe
var maxValue(default, set):Float
```

The maximum value the Slider can allow.

### value

```haxe
var value(default, set):Float
```

Current value of the Slider.
When set, will be clamped to `minValue <= value <= maxValue`.

## Methods

### handleEvent

```haxe
override function handleEvent(e:hxd.Event):Void
```

### onChange

```haxe
dynamic function onChange():Void
```

Sent when slider value is changed by user.

Not sent if value is set manually from software side.

## Inherited members

- from [`h2d.Interactive`](Interactive.md): `width`, `height`, `cursor`, `isEllipse`, `cancelEvents`, `propagateEvents`, `enableRightButton`, `allowMultiClick`, `backgroundColor`, `shape`, `shapeX`, `shapeY`, `preventClick`, `startCapture`, `stopCapture`, `focus`, `blur`, `isOver`, `hasFocus`, `onOver`, `onOut`, `onPush`, `onRelease`, `onReleaseOutside`, `onClick`, `onMove`, `onWheel`, `onFocus`, `onFocusLost`, `onKeyUp`, `onKeyDown`, `onCheck`, `onTextInput`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
