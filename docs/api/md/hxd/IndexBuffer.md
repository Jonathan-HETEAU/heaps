# hxd.IndexBuffer

**abstract** · package [`hxd`](README.md) · source [`hxd/IndexBuffer.hx`](../../../../hxd/IndexBuffer.hx)

A growable array of integer indexes, used to build index data.

Underlying type: `hxd._IndexBuffer.InnerData`

## Static variables

### length

```haxe
static var length(get, null):Int
```

The number of indexes.

## Methods

### push

```haxe
inline function push(v:Int):Void
```

Adds an index at the end.

### grow

```haxe
inline function grow(v:Int):Void
```

Makes the buffer at least `v` indexes long, filling with zeros.

### resize

```haxe
inline function resize(v:Int):Void
```

Changes the length to `v`, truncating or filling with zeros.

### getNative

```haxe
inline function getNative():hxd._IndexBuffer.InnerData
```

Returns the native array.

### iterator

```haxe
inline function iterator():hxd._IndexBuffer.InnerIterator
```

Returns an iterator on the indexes.
