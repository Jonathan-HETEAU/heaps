# h3d.Buffer

**class** · package [`h3d`](README.md) · source [`h3d/Buffer.hx`](../../../../h3d/Buffer.hx)

## Constructor

### new

```haxe
function new(vertices:Int, format:hxd.BufferFormat, ?flags:Array<BufferFlag>):Void
```

## Static variables

### GUID

```haxe
static var GUID:Int
```

## Static methods

### ofFloats

```haxe
static function ofFloats(v:hxd.FloatBuffer, format:hxd.BufferFormat, ?flags:Array<BufferFlag>):Buffer
```

### ofSubFloats

```haxe
static function ofSubFloats(v:hxd.FloatBuffer, vertices:Int, format:hxd.BufferFormat, ?flags:Array<BufferFlag>):Buffer
```

## Variables

### id

```haxe
var id:Int
```

### vertices

```haxe
var vertices(default, null):Int
```

### format

```haxe
var format(default, null):hxd.BufferFormat
```

### flags

```haxe
var flags(default, null):EnumFlags<BufferFlag>
```

## Methods

### getMemSize

```haxe
inline function getMemSize():Int
```

### isDisposed

```haxe
inline function isDisposed():Bool
```

### dispose

```haxe
function dispose():Void
```

### uploadFloats

```haxe
function uploadFloats(buf:hxd.FloatBuffer, bufPos:Int, vertices:Int, ?startVertice:Int = 0):Void
```

### uploadBytes

```haxe
function uploadBytes(data:Bytes, dataPos:Int, vertices:Int, ?startVertice:Int = 0):Void
```

### readBytes

```haxe
function readBytes(bytes:Bytes, bytesPosition:Int, vertices:Int, ?startVertice:Int = 0):Void
```

### readBytesAsync

```haxe
function readBytesAsync(bytes:Bytes, bytesPosition:Int, vertices:Int, ?startVertice:Int = 0, callback:() -> Void):Void
```

### getHandle

```haxe
function getHandle():BufferHandle
```
