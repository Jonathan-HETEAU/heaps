# h2d.ScaleGrid

**class** · package [`h2d`](README.md) · source [`h2d/ScaleGrid.hx`](../../../../h2d/ScaleGrid.hx)

Extends: [`h2d.TileGroup`](TileGroup.md) → [`h2d.Drawable`](Drawable.md) → [`h2d.Object`](Object.md)

A simple 9-slice bitmap renderer.

Enables rendering of the Tile as a stretchable surface with unscaled corners, stretched center and either stretched or tiled borders.
Set `ScaleGrid.width` and `ScaleGrid.height` to resize the ScaleGrid.

## Constructor

### new

```haxe
function new(tile:Null<Tile>, borderL:Int, borderT:Int, ?borderR:Int, ?borderB:Int, ?parent:Object):Void
```

Create a new ScaleGrid with specified parameters.
- **param** `tile` The source tile which will be sliced.
- **param** `borderW` The width of the left and right borders in pixels.
- **param** `borderH` The height of the top and bottom borders in pixels.
- **param** `parent` An optional parent `h2d.Object` instance to which ScaleGrid adds itself if set.

## Variables

### borderLeft

```haxe
var borderLeft(default, set):Int
```

The width of the left border in pixels.

### borderRight

```haxe
var borderRight(default, set):Int
```

The width of the right border in pixels.

### borderTop

```haxe
var borderTop(default, set):Int
```

The height of the top border in pixels.

### borderBottom

```haxe
var borderBottom(default, set):Int
```

The height of the bottom border in pixels.

### borderWidth

```haxe
var borderWidth(null, set):Int
```

Set the width of left and right borders altogether.

### borderHeight

```haxe
var borderHeight(null, set):Int
```

Set the height of top and bottom borders altogether.

### width

```haxe
var width(default, set):Float
```

The width of the bitmap. Setting to values less than `borderLeft + borderRight` leads to undefined results.

### height

```haxe
var height(default, set):Float
```

The height of the bitmap. Setting to values less than `borderTop + borderBottom` leads to undefined results.

### tileBorders

```haxe
var tileBorders(default, set):Bool
```

When enabled, borders will be repeated along the edges instead of stretching to match the desired dimensions.

### tileCenter

```haxe
var tileCenter(default, set):Bool
```

When enabled, center will be repeated along the edges instead of stretching to match the desired dimensions.

### ignoreScale

```haxe
var ignoreScale(default, set):Bool
```

When enabled, the borders will ignore the final scale of the `h2d.ScaleGrid` to be rendered pixel perfect.
This does not change the values of `borderLeft`, `borderRight`, `borderTop` or `borderBottom`.

Center tile is always stretched.

### borderScale

```haxe
var borderScale(default, set):Float
```

Scale factor applied to borders only. If combined with `ignoreScale`, becomes an absolute scale independent from the scene scale.

## Inherited members

- from [`h2d.TileGroup`](TileGroup.md): `tile`, `rangeMin`, `rangeMax`, `clear`, `invalidate`, `count`, `setDefaultColor`, `add`, `addColor`, `addAlpha`, `addTransform`
- from [`h2d.Drawable`](Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
