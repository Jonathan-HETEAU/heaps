# h2d.SpriteBatch

**class** · package [`h2d`](README.md) · source [`h2d/SpriteBatch.hx`](../../../../h2d/SpriteBatch.hx)

Extends: [`h2d.Drawable`](Drawable.md) → [`h2d.Object`](Object.md)

An active batched tile renderer.

Compared to `TileGroup` which is expected to be used as a static geometry,
SpriteBatch uploads GPU buffer each frame by collecting data from added `BatchElement` instance.
Due to that, dynamically removing and adding new geometry is fairly simple.

Usage note: While SpriteBatch allows for multiple unique textures, each texture swap causes a new drawcall,
and due to that it's recommended to minimize the amount of used textures per SpriteBatch instance,
ideally limiting to only one texture.

## Constructor

### new

```haxe
function new(t:Tile, ?parent:Object):Void
```

Create new SpriteBatch instance.
- **param** `t` The Tile used as a base Texture to draw contents with.
- **param** `parent` An optional parent `h2d.Object` instance to which SpriteBatch adds itself if set.

## Variables

### tile

```haxe
var tile:Tile
```

The Tile used as a base Texture to draw contents with.

### hasRotationScale

```haxe
var hasRotationScale:Bool
```

Enables usage of rotation and scaling of SpriteBatch elements at the cost of extra calculus.

Makes use of `BatchElement.scaleX`, `BatchElement.scaleY` and `BatchElement.rotation`.

### hasUpdate

```haxe
var hasUpdate:Bool
```

Enables usage of `update` method in SpriteBatch elements.

## Methods

### add

```haxe
function add(e:BatchElement, ?before:Bool = false):BatchElement
```

Adds a new BatchElement to the SpriteBatch.
- **param** `e` The element to add.
- **param** `before` When set, element will be added to the beginning of the element chain (rendered first).

### clear

```haxe
function clear():Void
```

Removes all elements from the SpriteBatch.

Usage note: Does not clear the `BatchElement.batch` nor `next`/`prev` variables on the child elements.

### alloc

```haxe
function alloc(t:Tile):BatchElement
```

Creates a new BatchElement and returns it. Shortcut to `add(new BatchElement(t))`
- **param** `t` The Tile element will render.

### isEmpty

```haxe
inline function isEmpty():Bool
```

Checks if SpriteBatch contains any elements.

### getElements

```haxe
inline function getElements():h2d._SpriteBatch.ElementsIterator
```

Returns an Iterator of all SpriteBatch elements.

Adding or removing the elements will affect the Iterator results.

## Inherited members

- from [`h2d.Drawable`](Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
