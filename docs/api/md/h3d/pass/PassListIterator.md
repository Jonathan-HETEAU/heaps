# h3d.pass.PassListIterator

**class** · package [`h3d.pass`](README.md) · module `h3d.pass.PassList` · source [`h3d/pass/PassList.hx`](../../../../../h3d/pass/PassList.hx)

An iterator on a `PassList`.

## Constructor

### new

```haxe
inline function new(o:PassObject):Void
```

Creates an iterator starting at `o`.

## Methods

### hasNext

```haxe
inline function hasNext():Bool
```

Tells if there are more passes.

### next

```haxe
inline function next():PassObject
```

Returns the next pass.
