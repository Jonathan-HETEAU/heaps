# h2d.Object

**class** · package [`h2d`](README.md) · source [`h2d/Object.hx`](../../../../h2d/Object.hx)

Subclasses: [`h2d.Console`](Console.md), [`h2d.Drawable`](Drawable.md), [`h2d.Flow`](Flow.md), [`h2d.Interactive`](Interactive.md), [`h2d.Layers`](Layers.md), [`h2d.Mask`](Mask.md), [`h2d.ObjectFollower`](ObjectFollower.md), [`hxd.fmt.pak.Loader`](../hxd/fmt/pak/Loader.md)

A base 2D class that all scene tree elements inherit from.

Serves as a virtual container that does not display anything but can contain other objects
so the various transforms are inherited to its children.

Private events `Object.onAdd`, `Object.onRemove` and `Object.onHierarchyMoved` can be used
to capture when Object is added/removed from the currently active scene as well as being moved withing the object tree.

Object exposes a number of properties to control position, scale and rotation of the Object relative to its parent,
but they are used indirectly during rendering. Instead, they are being used to calculate the absolute matrix transform
relative to the Scene. As optimization, it's not recalculated as soon as properties are modified and delayed until
`Object.sync`. Absolute object position can be accessed through private variables `Object.matA`, `Object.matB`,
`Object.matC`, `Object.matD`, `Object.absX` and `Object.absY`.
But it should be noted that in order to ensure up-to-date values, it's advised to call `Object.syncPos` before accessing them.

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

Create a new empty object.
- **param** `parent` An optional parent `h2d.Object` instance to which Object adds itself if set.

## Variables

### parent

```haxe
var parent(default, null):Object
```

The parent object in the scene tree.

### numChildren

```haxe
var numChildren(get, null):Int
```

How many immediate children this object has.

### name

```haxe
var name:String
```

The name of the object. Can be used to retrieve an object within a tree by using `Object.getObjectByName`.

### x

```haxe
var x(default, set):Float
```

The x position (in pixels) of the object relative to its parent.

### y

```haxe
var y(default, set):Float
```

The y position (in pixels) of the object relative to its parent.

### scaleX

```haxe
var scaleX(default, set):Float
```

The amount of horizontal scaling of this object.

### scaleY

```haxe
var scaleY(default, set):Float
```

The amount of vertical scaling of this object.

### rotation

```haxe
var rotation(default, set):Float
```

The rotation angle of this object, in radians.

### visible

```haxe
var visible(default, set):Bool
```

Is the object and its children are displayed on screen.

### alpha

```haxe
var alpha:Float
```

The amount of transparency of the Object.

### filter

```haxe
var filter(default, set):h2d.filter.Filter
```

The post process filter for this object.

When set, `Object.alpha` value affects both filter and object transparency (use `Drawable.color.a` to set transparency only for the object).

### blendMode

```haxe
var blendMode:BlendMode
```

The blending mode of the object.

If there is no `Object.filter` active, only applies to the current object (not inherited by children).
Otherwise tells how the filter is blended with background.

## Methods

### getBounds

```haxe
function getBounds(?relativeTo:Object, ?out:h2d.col.Bounds):h2d.col.Bounds
```

Return the bounds of the object for its whole content, recursively.
- **param** `relativeTo` An optional object relative to coordinates of which bounds are returned.
Returns bounds in the absolute coordinates if not set.
- **param** `out` An optional bounds instance to fill. Allocates new Bounds instance and returns it if not set.

### getSize

```haxe
function getSize(?out:h2d.col.Bounds):h2d.col.Bounds
```

Similar to `getBounds(parent)`, but instead of the full content, it will return
the size based on the alignment of the object. For instance for a text, `Object.getBounds` will return
the full glyphs size whereas `getSize` will ignore the pixels under the baseline.
- **param** `out` An optional bounds instance to fill. Allocates new Bounds instance and returns it if not set.

### getAbsPos

```haxe
inline function getAbsPos():h2d.col.Matrix
```

Returns the updated absolute position matrix. See `Object.getMatrix` for current matrix values.

### contains

```haxe
function contains(o:Object):Bool
```

Tells if the object is contained into this object children, recursively.

### find

```haxe
function find(f:() -> Null<find.T>):Null<find.T>
```

Find a single object in the tree by calling `f` on each and returning the first not-null value returned, or null if not found.

### findAll

```haxe
function findAll(f:() -> Null<findAll.T>, ?arr:Array<findAll.T>):Array<findAll.T>
```

Find several objects in the tree by calling `f` on each and returning all the not-null values returned.
- **param** `arr` An optional array instance to fill results with. Allocates a new array if not set.

### getObjectsCount

```haxe
function getObjectsCount():Int
```

Return the total number of children in the whole tree, recursively.

### localToGlobal

```haxe
function localToGlobal(?pt:h2d.col.Point):h2d.col.Point
```

Convert a local position (or `[0,0]` if `pt` is null) relative to the object origin into an absolute screen position, applying all the inherited transforms.
- **param** `pt` An optional position to convert and return. Allocates new Point at 0,0 position if not set. Modifies the Point instance as is.

### globalToLocal

```haxe
function globalToLocal(pt:h2d.col.Point):h2d.col.Point
```

Convert an absolute screen position into a local position relative to the object origin, applying all the inherited transforms.
- **param** `pt` A position to convert and return. Modifies the Point instance as is.

### getScene

```haxe
function getScene():Scene
```

Returns an `h2d.Scene` down the hierarchy tree or `null` if object is not added to Scene.

### addChild

```haxe
function addChild(s:Object):Void
```

Add a child object at the end of the children list.

### addChildAt

```haxe
function addChildAt(s:Object, pos:Int):Void
```

Insert a child object at the specified position of the children list.

### removeChild

```haxe
function removeChild(s:Object):Void
```

Remove the given object from the immediate children list of the object if it's part of it.

### removeChildren

```haxe
function removeChildren():Void
```

Remove all children from the immediate children list.

### remove

```haxe
inline function remove():Void
```

Same as `parent.removeChild(this)`, but does nothing if parent is null.

### drawTo

```haxe
function drawTo(t:h3d.mat.Texture):Void
```

Draw the object and all its children into the given Texture.

### drawToTextures

```haxe
function drawToTextures(texs:Array<h3d.mat.Texture>, outputs:Array<hxsl.Output>):Void
```

Draw the object and all its children into the given Textures.

### move

```haxe
function move(dx:Float, dy:Float):Void
```

Move the object by the specified amount along its current direction (`Object.rotation` angle).

### setPosition

```haxe
inline function setPosition(x:Float, y:Float):Void
```

Set the position of the object relative to its parent.

### rotate

```haxe
inline function rotate(v:Float):Void
```

Rotate the object by the given angle (in radians)

### scale

```haxe
inline function scale(v:Float):Void
```

Scale uniformly the object by the given factor.

### setScale

```haxe
inline function setScale(v:Float):Void
```

Set the uniform scale for the object.

### getChildAt

```haxe
function getChildAt(n:Int):Object
```

Return the `n`th element among the immediate children list of this object, or `null` if there is no Object at this position.

### getChildIndex

```haxe
function getChildIndex(o:Object):Int
```

Return the index of the object `o` within the immediate children list of this object, or `-1` if it is not part of the children list.

### getObjectByName

```haxe
function getObjectByName(name:String):Object
```

Search for an object recursively by name, return `null` if not found.

### iterator

```haxe
inline function iterator():hxd.impl.ArrayIterator_h2d_Object
```

Return an iterator over this object immediate children
