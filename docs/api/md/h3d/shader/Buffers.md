# h3d.shader.Buffers

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/Buffers.hx`](../../../../../h3d/shader/Buffers.hx)

The data of the vertex and fragment stages of a shader, filled before a draw call.

## Constructor

### new

```haxe
function new():Void
```

Creates empty buffers.

## Variables

### vertex

```haxe
var vertex:ShaderBuffers
```

The vertex stage data.

### fragment

```haxe
var fragment:ShaderBuffers
```

The fragment stage data.

## Methods

### grow

```haxe
inline function grow(s:hxsl.RuntimeShader):Void
```

Makes the buffers large enough for the shader `s`.
