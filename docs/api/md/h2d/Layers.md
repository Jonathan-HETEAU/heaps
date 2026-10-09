# h2d.Layers

**class** · package [`h2d`](README.md) · source [`h2d/Layers.hx`](../../../../h2d/Layers.hx)

Extends: [`h2d.Object`](Object.md)

Subclasses: [`h2d.CdbLevel`](CdbLevel.md), [`h2d.Scene`](Scene.md), [`h2d.ZGroup`](ZGroup.md)

A layer-based container for Objects.

Hierarchically organizes objects based on their layer.
Supports per-layer Y-sorting through `Layers.ysort`.

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

Create a new Layers instance.
- **param** `parent` An optional parent `h2d.Object` instance to which Layers adds itself if set.

## Methods

### addChild

```haxe
override function addChild(s:Object):Void
```

Adds a child object `s` at the end of the topmost layer.
- **param** `s` An object to be added.

### add

```haxe
function add(s:Object, ?layer:Int = -1, ?index:Int = -1):Void
```

* Adds a child object `s` at the end of the given `layer`.
* @param s An object to be added.
* @param layer An index of the layer the object should be added at with 0 being the bottom-most layer. Pass -1 to use topmost layer.
* @param index An optional index at which the object should be inserted inside the layer. Pass -1 to append to the end.

### addChildAt

```haxe
override function addChildAt(s:Object, index:Int):Void
```

Adds a child object `s` at specified `index` on the top topmost layer.

Warning: Previous behavior of `Layers.addChildAt` is no longer applicable and `Layers.add` should be used instead.
- **param** `s` The object to be added.
- **param** `index` The position of the object in the layer.

### removeChild

```haxe
override function removeChild(s:Object):Void
```

### under

```haxe
function under(s:Object):Void
```

Moves an object `s` to the bottom of its layer (rendered first, behind the other Objects in the layer).
Causes `Object.onHierarchyMoved` on the Object.
- **param** `s` An object to be moved.

### over

```haxe
function over(s:Object):Void
```

Moves an object `s` to the top of its layer (rendered last, in front of other Objects in layer).
Causes `Object.onHierarchyMoved` on the Object.
- **param** `s` An object to be moved.

### getLayer

```haxe
function getLayer(layer:Int):Iterator<Object>
```

Returns an Iterator with objects in a specified `layer`.
Returns an empty iterator if no objects are present in the layer.

Objects added or removed from Layers during iteration do not affect the output of the Iterator.

- **param** `layer` A layer index to iterate over.

### getChildAtLayer

```haxe
function getChildAtLayer(n:Int, layer:Int):Object
```

Return the `n`th element among the immediate children list on the `layer`, or null if there is none.
- **param** `layer` The layer children of which are used. Pass -1 to use the topmost layer.

### getChildLayer

```haxe
function getChildLayer(s:Object):Int
```

Returns the layer on which the child `s` resides on.
- **param** `s` An object to look up to.
- **returns** An index of the layer where the object resides on or `-1` if `s` is not a child of the Layers.

### getChildIndexInLayer

```haxe
function getChildIndexInLayer(o:Object):Int
```

Return the index of the child within its respective layer.
- **param** `o` The child to look up index of.
- **returns** s `-1` if object is not a child of Layers, index of the child within its current layer otherwise.

### ysort

```haxe
function ysort(layer:Int):Void
```

Sorts specified layer based on `Object.y` value of it's children.
Causes `Object.onHierarchyChanged` on moved children.
- **param** `layer` An index of the layer to sort.

## Inherited members

- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
