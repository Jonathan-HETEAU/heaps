# hxsl.ShaderConst

**class** · package [`hxsl`](README.md) · module `hxsl.SharedShader` · source [`hxsl/SharedShader.hx`](../../../../hxsl/SharedShader.hx)

A constant variable of a shader, and its position in the variant key.

## Constructor

### new

```haxe
function new(v:TVar, pos:Int, bits:Int):Void
```

Creates a constant.

## Variables

### v

```haxe
var v:TVar
```

The variable.

### pos

```haxe
var pos:Int
```

The position of the value in the variant key, in bits.

### bits

```haxe
var bits:Int
```

The number of bits of the value.

### globalId

```haxe
var globalId:Int
```

The identifier of the global, for a constant global, or `0` for a parameter.

### next

```haxe
var next:ShaderConst
```

The next constant.
