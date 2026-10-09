# h2d.Drawable

**class** · package [`h2d`](README.md) · source [`h2d/Drawable.hx`](../../../../h2d/Drawable.hx)

Extends: [`h2d.Object`](Object.md)

Subclasses: [`h2d.Anim`](Anim.md), [`h2d.Bitmap`](Bitmap.md), [`h2d.Graphics`](Graphics.md), [`h2d.Particles`](Particles.md), [`h2d.SpriteBatch`](SpriteBatch.md), [`h2d.Text`](Text.md), [`h2d.TileGroup`](TileGroup.md), [`h2d.Video`](Video.md)

A base class for all 2D objects that will draw something on the screen.

Unlike Object base class, all properties of Drawable only apply to the current object and are not inherited by its children.

## Variables

### color

```haxe
var color:h3d.Vector4
```

The color multiplier for the drawable. Can be used to adjust individually each of the four channels R,G,B,A (default [1,1,1,1])

### smooth

```haxe
var smooth:Null<Bool>
```

By enabling smoothing, scaling the object up or down will use hardware bilinear filtering resulting in a less crisp aspect.

By default smooth is `null` in which case `Scene.defaultSmooth` value is used.

### tileWrap

```haxe
var tileWrap(default, set):Bool
```

Enables texture uv wrap for this Drawable, causing tiles with uv exceeding the texture size to repeat instead of clamping on edges.

Note that `tileWrap` does not use the `Tile` region as a wrapping area but instead uses underlying `h3d.mat.Texture` size.
This is due to implementation specifics, as it just sets the `Texture.wrap` to either `Repeat` or `Clamp`.
Because of that, proper Tile tiling can be expected only when the tile covers an entire Texture area.

### colorKey

```haxe
var colorKey(default, set):Null<Int>
```

Setting a colorKey color value will discard all pixels that have this exact color in the tile.

### colorMatrix

```haxe
var colorMatrix(get, set):Null<h3d.Matrix>
```

Setting a colorMatrix will apply a color transformation. See also `adjustColor`.

### colorAdd

```haxe
var colorAdd(get, set):Null<h3d.Vector>
```

Setting colorAdd will add the amount of color of each channel R,G,B,A to the object pixels.

## Methods

### adjustColor

```haxe
function adjustColor(?col:Null<h3d.ColorAdjust>):Void
```

Set the `Drawable.colorMatrix` value by specifying which effects to apply.
Calling `adjustColor()` without arguments will reset the colorMatrix to `null`.

### getShader

```haxe
function getShader(stype:Class<getShader.T>):getShader.T
```

Returns the first shader of the given shader class among the drawable shaders.
- **param** `stype` The class of the shader to look up.

### getShaders

```haxe
inline function getShaders():hxsl._ShaderList.ShaderIterator
```

Returns an iterator of all drawable shaders

### addShader

```haxe
function addShader(s:addShader.T):addShader.T
```

Add a shader to the drawable shaders.

Keep in mind, that as stated before, drawable children do not inherit Drawable properties, which includes shaders.

### removeShader

```haxe
function removeShader(s:hxsl.Shader):Bool
```

Remove a shader from the drawable shaders, returns true if found or false if it was not part of our shaders.

## Inherited members

- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
