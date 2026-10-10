# hxsl.Serializer

**class** · package [`hxsl`](README.md) · source [`hxsl/Serializer.hx`](../../../../hxsl/Serializer.hx)

Encodes typed shaders to a compact base64 string, stored in the compiled shader classes.

## Constructor

### new

```haxe
function new():Void
```

Creates a serializer.

## Static methods

### run

```haxe
static function run(s:ShaderData):String
```

Encodes the shader.

## Methods

### unserialize

```haxe
function unserialize(data:String):ShaderData
```

Decodes a serialized shader.

### serialize

```haxe
function serialize(s:ShaderData):String
```

Encodes the shader.
