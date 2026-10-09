# h3d.Indexes

**abstract** · package [`h3d`](README.md) · source [`h3d/Indexes.hx`](../../../../h3d/Indexes.hx)

A GPU index buffer: the vertex indexes of the triangles of a primitive (16-bit, or 32-bit with `is32`).

Underlying type: [`h3d.Buffer`](Buffer.md)

Members of [`h3d.Buffer`](Buffer.md) are forwarded (`@:forward`): they are usable directly on this type.

Implicit casts to: `Buffer`

## Static variables

### count

```haxe
static var count(get, null):Int
```

The number of indexes.

## Static methods

### alloc

```haxe
static function alloc(i:hxd.IndexBuffer, ?startPos:Int = 0, ?length:Int = -1):Indexes
```

Creates a 16-bit index buffer from the content of `i`.

### ofBuffer

```haxe
static function ofBuffer(b:Buffer):Indexes
```

Uses a buffer created with an index format as index buffer.

## Methods

### uploadIndexes

```haxe
function uploadIndexes(ibuf:hxd.IndexBuffer, bufPos:Int, indices:Int, ?startIndice:Int = 0):Void
```

Uploads `indices` indexes of `ibuf`, starting at `bufPos`, to the position `startIndice` of the buffer (16-bit only).
