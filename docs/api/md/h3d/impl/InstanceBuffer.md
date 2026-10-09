# h3d.impl.InstanceBuffer

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/InstanceBuffer.hx`](../../../../../h3d/impl/InstanceBuffer.hx)

## Constructor

### new

```haxe
function new():Void
```

## Static variables

### ELEMENT_SIZE

```haxe
static var ELEMENT_SIZE:Int
```

Bytes are structures of 5 i32 with the following values:
- indexCount : number of indexes per instance
- instanceCount : number of indexed draws
- startIndexLocation : offset in indexes
- baseVertexLocation : offset in buffer
- startInstanceLocation : offset in per instance buffer

## Variables

### triCount

```haxe
var triCount(default, null):Int
```

### commandCount

```haxe
var commandCount(default, null):Int
```

### maxCommandCount

```haxe
var maxCommandCount(default, null):Int
```

## Methods

### setCommand

```haxe
function setCommand(commandCount:Int, indexCount:Int, ?startIndex:Int = 0):Void
```

### uploadBytes

```haxe
function uploadBytes(commandCount:Int, bytes:Bytes, ?triCount:Int = -1):Void
```

### allocFromBytes

```haxe
function allocFromBytes(commandCount:Int, bytes:Bytes, ?triCount:Int = -1):Void
```

### dispose

```haxe
function dispose():Void
```
