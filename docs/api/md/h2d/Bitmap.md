# h2d.Bitmap

**class** · package [`h2d`](README.md) · source [`h2d/Bitmap.hx`](../../../../h2d/Bitmap.hx)

Extends: [`h2d.Drawable`](Drawable.md) → [`h2d.Object`](Object.md)

Displays a single bitmap Tile on the screen.

It is a most primitive Drawable and easiest to use, but vastly inferior to others in terms of performance when used for rendering of many tiles.
When dealing with many images at once, it is recommended to use batched renderers, like `h2d.SpriteBatch` or `h2d.TileGroup`.

## Constructor

### new

```haxe
function new(?tile:Tile, ?parent:Object):Void
```

Create a Bitmap with specified tile and parent object.
- **param** `tile` A Tile that should be rendered by this Bitmap.
- **param** `parent` An optional parent `h2d.Object` instance to which Bitmap adds itself if set.

## Variables

### tile

```haxe
var tile(default, set):Tile
```

The tile to display. See `h2d.Tile` documentation for details.
If the tile is null, a pink 5x5 bitmap will be displayed instead.

### width

```haxe
var width(default, set):Null<Float>
```

If set, rescale the tile to match the given width, keeping the aspect ratio unless `height` is also set.

Note that both `width` and `height` are `null` by default and in order to retrieve bitmap dimensions with
scaling accurately, call `getSize` method or address `tile.width/height` to get unscaled dimensions.

### height

```haxe
var height(default, set):Null<Float>
```

If set, rescale the tile to match the given height, keeping the aspect ratio unless `width` is also set.

Note that both `width` and `height` are `null` by default and in order to retrieve bitmap dimensions with
scaling accurately, call `getSize` method or address `tile.width/height` to get unscaled dimensions.

## Inherited members

- from [`h2d.Drawable`](Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
