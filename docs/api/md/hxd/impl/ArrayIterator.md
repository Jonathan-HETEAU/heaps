# hxd.impl.ArrayIterator

**class** · package [`hxd.impl`](README.md) · source [`hxd/impl/ArrayIterator.hx`](../../../../../hxd/impl/ArrayIterator.hx)

Type parameters: `<T>`

An inlined iterator over an array.

## Constructor

### new

```haxe
inline function new(a:Array<hxd.impl.ArrayIterator.T>):Void
```

Creates an iterator over the array.

## Methods

### hasNext

```haxe
inline function hasNext():Bool
```

Tells if there is an element left.

### next

```haxe
inline function next():hxd.impl.ArrayIterator.T
```

Returns the next element.
