# h3d.pass.PassList

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/PassList.hx`](../../../../../h3d/pass/PassList.hx)

A linked list of `PassObject` to draw, with a list of discarded passes which can be restored.
Renderers filter it (for instance by culling) before drawing it with an `Output`.

## Constructor

### new

```haxe
function new(?current:PassObject):Void
```

Creates a list starting with `current`.

## Methods

### init

```haxe
inline function init(pass:PassObject):Void
```

Set the passes and empty the discarded list

### reset

```haxe
inline function reset():Void
```

Put back discarded passes into the pass list

### count

```haxe
inline function count():Int
```

* Return the number of passes

### save

```haxe
inline function save():PassObject
```

Save the discarded list, allow to perfom some filters, then call "load" to restore passes

### load

```haxe
inline function load(p:PassObject):Void
```

load state that was save() before

### isEmpty

```haxe
inline function isEmpty():Bool
```

Tells if there is no pass to draw.

### clear

```haxe
function clear():Void
```

Put all passes into discarded list

### sort

```haxe
inline function sort(f:(PassObject, PassObject) -> Int):Void
```

Sorts the passes with the comparison function `f`.

### filter

```haxe
inline function filter(f:() -> Bool):Void
```

Filter current passes, add results to discarded list

### iterator

```haxe
inline function iterator():PassListIterator
```

Returns an iterator on the passes to draw.

### getFiltered

```haxe
inline function getFiltered():PassListIterator
```

Iterate on all discarded elements, if any
