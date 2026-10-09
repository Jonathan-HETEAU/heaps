# h2d.Tile

**class** · package [`h2d`](README.md) · source [`h2d/Tile.hx`](../../../../h2d/Tile.hx)

A core 2D rendering component representing a region of an underlying `h3d.mat.Texture`.

Tiles cannot be created directly, and instances are created with the following methods:
* Via the Resource Management system: `hxd.res.Image.toTile`.
* From pre-existing Texture: `Tile.fromTexture`.
* From pre-existing `BitmapData` or `Pixels`: `Tile.fromBitmap` and `Tile.fromPixels` (as well as `Tile.autoCut`).
* From solid color: `Tile.fromColor`.
* From previously existing Tile instance via various methods, such as `Tile.sub`.

## Static methods

### fromColor

```haxe
static function fromColor(color:Int, ?width:Int = 1, ?height:Int = 1, ?alpha:Float = 1.):Tile
```

Create a solid color Tile with specified width, height, color and alpha.
- **param** `color` The RGB color of the Tile.
- **param** `width` The width of the Tile in pixels.
- **param** `height` The height of the Tile in pixels.
- **param** `alpha` The transparency of the Tile.

### fromBitmap

```haxe
static function fromBitmap(bmp:hxd.BitmapData):Tile
```

Creates a new Texture from provided BitmapData and returns a Tile representing it.

### autoCut

```haxe
static function autoCut(bmp:hxd.BitmapData, width:Int, ?height:Int):{ tiles:Array<Array<Tile>>, main:Tile }
```

Creates a new POT Texture from bmp and cuts it in a grid of tiles with maximum size of `[width, height]`.

Algorithm will use bottom-right pixels as background color and cut out empty space from each Tile and
will modify the origin point to retain the Tile position.
Each row scan continues as long as there are no empty tiles.

- **param** `bmp` The BitmapData which will be split into tiles.
- **param** `width` The width of a single grid entry.
- **param** `height` An optional height of a single grid entry. Width will be used if not provided.

### fromTexture

```haxe
static function fromTexture(t:h3d.mat.Texture):Tile
```

Create new Tile from provided Texture instance.

### fromPixels

```haxe
static function fromPixels(pixels:hxd.Pixels):Tile
```

Creates new POT Texture from Pixels and returns a Tile representing it.

## Variables

### dx

```haxe
var dx:Float
```

Visual offset of the Tile along the X axis during rendering.

### dy

```haxe
var dy:Float
```

Visual offset of the Tile along the Y axis during rendering.

### x

```haxe
var x(default, null):Float
```

Horizontal position of the Tile on the Texture.

Cannot be modified directly, use `Tile.setPosition` instead.

### y

```haxe
var y(default, null):Float
```

Vertical position of the Tile on the Texture.

Cannot be modified directly, use `Tile.setPosition` instead.

### width

```haxe
var width(default, null):Float
```

Width of the Tile.
Not guaranteed to represent real width of the Tile on texture. (see `Tile.scaleToSize`)

Cannot be modified directly, use `Tile.setSize` instead.

### height

```haxe
var height(default, null):Float
```

Height of the Tile.
Not guaranteed to represent real height of the Tile on texture. (see `Tile.scaleToSize`)

Cannot be modified directly, use `Tile.setSize` instead.

### xFlip

```haxe
var xFlip(get, set):Bool
```

The flip state of the Tile.
- **see** `Tile.flipX`

### yFlip

```haxe
var yFlip(get, set):Bool
```

The flip state of the Tile.
- **see** `Tile.flipY`

### ix

```haxe
var ix(get, null):Int
```

An integer horizontal position of the Tile on the Texture.
Alias to `Math.floor(tile.x)`.

### iy

```haxe
var iy(get, null):Int
```

An integer vertical position of the Tile on the Texture.
Alias to `Math.floor(tile.y)`.

### iwidth

```haxe
var iwidth(get, null):Int
```

An integer width of the Tile.
Alias to `Math.ceil(tile.width + tile.x) - tile.ix`.

### iheight

```haxe
var iheight(get, null):Int
```

An integer height of the Tile.
Alias to `Math.ceil(tile.height + tile.y) - tile.iy`.

## Methods

### getTexture

```haxe
inline function getTexture():h3d.mat.Texture
```

Returns an underlying Texture instance.

### isDisposed

```haxe
function isDisposed():Bool
```

Checks if Tile or underlying Texture were disposed.

### switchTexture

```haxe
inline function switchTexture(t:Tile):Void
```

Changes this Tile underlying texture to one used in the specified Tile.

If Tile was scaled, new uv will cover new width and height instead of the original unscaled one.

- **param** `t` The Tile used as a source of the Texture instance.

It's possible to switch texture by referring the Texture instance directly, by using access hacks:
```haxe
@:privateAccess tile.setTexture(myTextureInstance);
```

### sub

```haxe
function sub(x:Float, y:Float, w:Float, h:Float, ?dx:Float = 0., ?dy:Float = 0.):Tile
```

Create a sub-region of this Tile with specified size and offset.
- **param** `x` The offset on top of the current Tile offset along the X axis.
- **param** `y` The offset on top of the current Tile offset along the Y axis.
- **param** `w` The width of the new Tile region. Can exceed current tile size.
- **param** `h` The height of the new Tile region. Can exceed the current tile size.
- **param** `dx` An optional visual offset of the new Tile along the X axis.
- **param** `dy` An optional visual offset of the new Tile along the Y axis.

### center

```haxe
function center():Tile
```

Returns a new Tile with shifting origin point (`dx` and `dy`) to the tile center.

To modify this Tile origin point, use `Tile.setCenterRatio`.

### setCenterRatio

```haxe
inline function setCenterRatio(?px:Float = 0.5, ?py:Float = 0.5):Void
```

Sets `dx` / `dy` as origin point dictated by `px` / `py` with a default being center.

### flipX

```haxe
function flipX():Void
```

Flips the Tile horizontally. Note that `dx` is flipped as well.

### flipY

```haxe
function flipY():Void
```

Flips the Tile vertically. Note that `dy` is flipped as well.

### setPosition

```haxe
function setPosition(x:Float, y:Float):Void
```

Set the Tile position in the texture to the specified coordinate.

### setSize

```haxe
function setSize(w:Float, h:Float):Void
```

Set the Tile size in the texture to the specified dimensions.

### scaleToSize

```haxe
function scaleToSize(w:Float, h:Float):Void
```

Rescales the Tile to be of the set width and height, but without affecting the uv coordinates.

Using this method allows to upscale/downscale Tiles, but creates a mismatch between the tile uv and width/height values.
Due to that, using any methods that modify the uv value will cause the new uv to treat scaled width and height as true dimensions
and can lead to unexpected results if not accounted for.

### scrollDiscrete

```haxe
function scrollDiscrete(dx:Float, dy:Float):Void
```

Scrolls the texture position by specified amount.

### dispose

```haxe
function dispose():Void
```

Disposes of the Tile and its underlying Texture.
Note that if Texture is used by other Tile instances, it will cause them to point at a disposed texture and can lead to errors.

### clone

```haxe
function clone():Tile
```

Create a copy of this Tile instance.

### split

```haxe
function split(?frames:Int = 0, ?vertical:Bool = false, ?subpixel:Bool = false):Array<Tile>
```

Split the Tile horizontally or vertically by the number of given frames.
- **param** `frames` The amount of frames this Tile has to be split into.
- **param** `vertical` Causes split to be done vertically instead of horizontal split.
- **param** `subpixel` When enabled, retains the floating-point remainder if calculated frame size is not integral.

### gridFlatten

```haxe
function gridFlatten(size:Float, ?dx:Float = 0., ?dy:Float = 0.):Array<Tile>
```

Split the tile into a list of tiles of Size x Size pixels.

- **param** `size` The width and height of the new Tiles.
- **param** `dx` Optional visual offset of the new Tiles along the X axis.
- **param** `dy` Optional visual offset of the new Tiles along the Y axis.
- **returns** s A one-dimensional array ordered in Y/X.

### grid

```haxe
function grid(size:Float, ?dx:Float = 0., ?dy:Float = 0.):Array<Array<Tile>>
```

Split the tile into a list of tiles of Size x Size pixels.

- **param** `size` The width and height of the new Tiles.
- **param** `dx` Optional visual offset of the new Tiles along the X axis.
- **param** `dy` Optional visual offset of the new Tiles along the Y axis.
- **returns** s A two-dimensional array ordered in `[X][Y]`.
