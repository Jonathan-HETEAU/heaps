# h3d.impl.InstanceBuffer

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/InstanceBuffer.hx`](../../../../../h3d/impl/InstanceBuffer.hx)

The draw commands of an instanced draw call (`h3d.Engine.renderInstanced`): either a single command, or a GPU buffer of indirect draw commands.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty instance buffer.

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

The total number of triangles drawn.

### commandCount

```haxe
var commandCount(default, null):Int
```

The number of draw commands.

### maxCommandCount

```haxe
var maxCommandCount(default, null):Int
```

The number of commands the buffer was allocated for.

## Methods

### setCommand

```haxe
function setCommand(commandCount:Int, indexCount:Int, ?startIndex:Int = 0):Void
```

Sets a single command drawing `commandCount` instances of `indexCount` indexes, without a GPU buffer.

### uploadBytes

```haxe
function uploadBytes(commandCount:Int, bytes:Bytes, ?triCount:Int = -1):Void
```

Uploads draw commands (see `ELEMENT_SIZE`) to the allocated buffer. The triangle count is computed from the commands if not given.

### allocFromBytes

```haxe
function allocFromBytes(commandCount:Int, bytes:Bytes, ?triCount:Int = -1):Void
```

Allocates the buffer of draw commands from the bytes (see `ELEMENT_SIZE`). The triangle count is computed from the commands if not given.

### dispose

```haxe
function dispose():Void
```

Releases the buffer of draw commands.
