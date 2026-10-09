# h3d.prim.BytesArray

**class** · package [`h3d.prim`](README.md) · module `h3d.prim.BatchPrimitive` · source [`h3d/prim/BatchPrimitive.hx`](../../../../../h3d/prim/BatchPrimitive.hx)

## Constructor

### new

```haxe
function new(bSize:Int, maxSize:Int):Void
```

## Variables

### bytes

```haxe
var bytes(default, null):Array<Bytes>
```

### pos

```haxe
var pos(default, null):Array<Int>
```

### totalSize

```haxe
var totalSize(default, null):Int
```

## Methods

### alloc

```haxe
function alloc(bSize:Int):{ pos:Int, b:Bytes }
```

### upload

```haxe
function upload(buffer:h3d.Buffer, ?vStart:Int = 0):Void
```
