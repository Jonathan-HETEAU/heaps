# h3d.Indexes

**abstract** · package [`h3d`](README.md) · source [`h3d/Indexes.hx`](../../../../h3d/Indexes.hx)

Underlying type: [`h3d.Buffer`](Buffer.md)

Members of [`h3d.Buffer`](Buffer.md) are forwarded (`@:forward`): they are usable directly on this type.

Implicit casts to: `Buffer`

## Static variables

### count

```haxe
static var count(get, null):Int
```

## Static methods

### alloc

```haxe
static function alloc(i:hxd.IndexBuffer, ?startPos:Int = 0, ?length:Int = -1):Indexes
```

### ofBuffer

```haxe
static function ofBuffer(b:Buffer):Indexes
```

## Methods

### uploadIndexes

```haxe
function uploadIndexes(ibuf:hxd.IndexBuffer, bufPos:Int, indices:Int, ?startIndice:Int = 0):Void
```
