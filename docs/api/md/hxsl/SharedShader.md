# hxsl.SharedShader

**class** · package [`hxsl`](README.md) · source [`hxsl/SharedShader.hx`](../../../../hxsl/SharedShader.hx)

The compiled data of a shader class, shared by all its instances, with the cache of its variants.

## Constructor

### new

```haxe
function new(src:String, ?module:String):Void
```

Creates the shared shader from its serialized source (see `hxsl.Serializer`).

## Static variables

### UNROLL_LOOPS

```haxe
static var UNROLL_LOOPS:Bool
```

If set, the loops of the shaders are unrolled when the variants are evaluated.

## Static methods

### compactMem

```haxe
static function compactMem(mem:compactMem.T):compactMem.T
```

Compacts the memory of the shader data (HashLink with `-D heaps_compact_mem`).

## Variables

### data

```haxe
var data:ShaderData
```

The shader code.

### globals

```haxe
var globals:Array<ShaderGlobal>
```

The global variables used by the shader.

### consts

```haxe
var consts:ShaderConst
```

The list of the constant variables, which select the variant.

## Methods

### getInstance

```haxe
inline function getInstance(constBits:Int):ShaderInstance
```

Returns the variant of the shader for the given constant values, created on the first call.
