# h3d.prim.BytesArray

**class** · package [`h3d.prim`](README.md) · module `h3d.prim.BatchPrimitive` · source [`h3d/prim/BatchPrimitive.hx`](../../../../../h3d/prim/BatchPrimitive.hx)

A growable list of byte chunks, used to accumulate geometry data before uploading it.

## Constructor

### new

```haxe
function new(bSize:Int, maxSize:Int):Void
```

Creates the array with a first chunk of `bSize` bytes.
- **param** `maxSize` The maximum size of a chunk, or a negative value for no limit.

## Variables

### bytes

```haxe
var bytes(default, null):Array<Bytes>
```

The chunks.

### pos

```haxe
var pos(default, null):Array<Int>
```

The number of bytes used in each chunk.

### totalSize

```haxe
var totalSize(default, null):Int
```

The total number of bytes allocated.

## Methods

### alloc

```haxe
function alloc(bSize:Int):{ pos:Int, b:Bytes }
```

Reserves `bSize` bytes and returns the chunk and position to write them at.

### upload

```haxe
function upload(buffer:h3d.Buffer, ?vStart:Int = 0):Void
```

Uploads all the chunks to `buffer`, starting at the element `vStart`.
