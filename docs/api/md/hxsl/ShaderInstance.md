# hxsl.ShaderInstance

**class** · package [`hxsl`](README.md) · module `hxsl.SharedShader` · source [`hxsl/SharedShader.hx`](../../../../hxsl/SharedShader.hx)

A variant of a shader for a combination of constant values, with the constants evaluated.

## Constructor

### new

```haxe
function new(shader:ShaderData):Void
```

Creates an instance.

## Variables

### id

```haxe
var id:Int
```

The unique identifier of the instance.

### shader

```haxe
var shader:ShaderData
```

The shader code, with the constants replaced by their values.

### params

```haxe
var params:Map<Int, Int>
```

The index of each parameter, by variable identifier.
