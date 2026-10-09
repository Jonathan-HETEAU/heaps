# h3d.Buffer

**class** · package [`h3d`](README.md) · source [`h3d/Buffer.hx`](../../../../h3d/Buffer.hx)

A GPU buffer: vertex data (with the layout given by `format`), index data, or data read by shaders.

```haxe
var buf = h3d.Buffer.ofFloats(floats, hxd.BufferFormat.POS3D_NORMAL_UV);
```

## Constructor

### new

```haxe
function new(vertices:Int, format:hxd.BufferFormat, ?flags:Array<BufferFlag>):Void
```

Allocates a buffer of `vertices` elements of the given format (unless `NoAlloc` is set).

## Static variables

### GUID

```haxe
static var GUID:Int
```

The counter used to give each buffer an `id`.

## Static methods

### ofFloats

```haxe
static function ofFloats(v:hxd.FloatBuffer, format:hxd.BufferFormat, ?flags:Array<BufferFlag>):Buffer
```

Creates a buffer holding the floats of `v`.

### ofSubFloats

```haxe
static function ofSubFloats(v:hxd.FloatBuffer, vertices:Int, format:hxd.BufferFormat, ?flags:Array<BufferFlag>):Buffer
```

Creates a buffer holding the first `vertices` elements of `v`.

## Variables

### id

```haxe
var id:Int
```

A unique identifier of the buffer.

### vertices

```haxe
var vertices(default, null):Int
```

The number of elements (vertexes) of the buffer.

### format

```haxe
var format(default, null):hxd.BufferFormat
```

The layout of one element.

### flags

```haxe
var flags(default, null):EnumFlags<BufferFlag>
```

The flags given at creation.

## Methods

### getMemSize

```haxe
inline function getMemSize():Int
```

Returns the size of the buffer, in bytes.

### isDisposed

```haxe
inline function isDisposed():Bool
```

Tells if the GPU memory of the buffer is released.

### dispose

```haxe
function dispose():Void
```

Releases the GPU memory of the buffer.

### uploadFloats

```haxe
function uploadFloats(buf:hxd.FloatBuffer, bufPos:Int, vertices:Int, ?startVertice:Int = 0):Void
```

Uploads `vertices` elements from `buf`, starting at the float `bufPos`, to the element `startVertice` of the buffer.
Values are converted for the low precision inputs of the format.

### uploadBytes

```haxe
function uploadBytes(data:Bytes, dataPos:Int, vertices:Int, ?startVertice:Int = 0):Void
```

Uploads `vertices` elements from `data`, starting at the byte `dataPos`, to the element `startVertice` of the buffer.

### readBytes

```haxe
function readBytes(bytes:Bytes, bytesPosition:Int, vertices:Int, ?startVertice:Int = 0):Void
```

Reads `vertices` elements from the GPU (synchronous) into `bytes`.

### readBytesAsync

```haxe
function readBytesAsync(bytes:Bytes, bytesPosition:Int, vertices:Int, ?startVertice:Int = 0, callback:() -> Void):Void
```

Reads `vertices` elements from the GPU into `bytes` asynchronously, then calls `callback`.

### getHandle

```haxe
function getHandle():BufferHandle
```

Returns the bindless handle of the buffer (requires a driver supporting it).
