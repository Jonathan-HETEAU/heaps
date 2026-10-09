# h2d.Mask

**class** · package [`h2d`](README.md) · source [`h2d/Mask.hx`](../../../../h2d/Mask.hx)

Extends: [`h2d.Object`](Object.md)

Subclasses: [`h2d.KeyFrames`](KeyFrames.md)

Restricts rendering area within the `[width, height]` rectangle.
For more advanced masking, see `h2d.filter.AbstractMask`.

Rotation of the mask does not rotate the masked area and instead causes it to cover the bounding box of the mask.

The `Mask.maskWidth` and `Mask.unmask` can be used to mask out rendering area without direct usage of Mask instance in-between.

## Constructor

### new

```haxe
function new(width:Int, height:Int, ?parent:Object):Void
```

Create a new Mask instance.
- **param** `width` The width of the masked area.
- **param** `height` The height of the masked area.
- **param** `parent` An optional parent `h2d.Object` instance to which Mask adds itself if set.

## Static methods

### maskWith

```haxe
static function maskWith(ctx:RenderContext, object:Object, width:Int, height:Int, ?scrollX:Float = 0, ?scrollY:Float = 0):Void
```

Masks render zone based off object position and given dimensions.
Should call `Mask.unmask()` afterwards.
- **param** `ctx` The render context to mask.
- **param** `object` An Object which transform will be used as mask origin.
- **param** `width` The width of the mask in scene coordinate space.
- **param** `height` The height of the mask in scene coordinate space.
- **param** `scrollX` Additional horizontal offset of the masked area.
- **param** `scrollY` Additional vertical offset of the masked area.

### unmask

```haxe
static function unmask(ctx:RenderContext):Void
```

Unmasks the previously masked area from `Mask.maskWith`.
- **param** `ctx` The render context to unmask.

## Variables

### width

```haxe
var width:Int
```

The width of the masked area.

### height

```haxe
var height:Int
```

The height of the masked area.

### scrollX

```haxe
var scrollX(default, set):Float
```

Horizontal scroll offset of the Mask content in pixels. Can be clamped by `Mask.scrollBounds`.

### scrollY

```haxe
var scrollY(default, set):Float
```

Vertical scroll offset of the Mask content in pixels. Can be clamped by `Mask.scrollBounds`.

### scrollBounds

```haxe
var scrollBounds:h2d.col.Bounds
```

Optional scroll boundaries that prevent content from overscroll.

## Methods

### scrollTo

```haxe
function scrollTo(x:Float, y:Float):Void
```

Scroll the Mask content to the specified offset.

### scrollBy

```haxe
function scrollBy(x:Float, y:Float):Void
```

Scroll the Mask content by the specified offset relative to the current scroll offset.

## Inherited members

- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
