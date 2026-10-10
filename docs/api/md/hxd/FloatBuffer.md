# hxd.FloatBuffer

**abstract** · package [`hxd`](README.md) · source [`hxd/FloatBuffer.hx`](../../../../hxd/FloatBuffer.hx)

A growable array of 32-bit floats, used to build vertex data.

Underlying type: `hxd._FloatBuffer.InnerData`

## Static variables

### length

```haxe
static var length(get, null):Int
```

The number of floats.

## Methods

### push

```haxe
inline function push(v:hxd.impl.Float32):Void
```

Adds a float at the end.

### grow

```haxe
inline function grow(v:Int):Void
```

Makes the buffer at least `v` floats long, filling with zeros.

### resize

```haxe
inline function resize(v:Int):Void
```

Changes the length to `v`, truncating or filling with zeros.

### getNative

```haxe
inline function getNative():hxd._FloatBuffer.InnerData
```

Returns the native array.

### iterator

```haxe
inline function iterator():hxd._FloatBuffer.InnerIterator
```

Returns an iterator on the floats.
