# h3d.shader.ShaderBuffers

**class** · package [`h3d.shader`](README.md) · module `h3d.shader.Buffers` · source [`h3d/shader/Buffers.hx`](../../../../../h3d/shader/Buffers.hx)

The data of a shader stage (vertex or fragment) filled before a draw call.

## Constructor

### new

```haxe
function new():Void
```

Creates empty buffers.

## Variables

### globals

```haxe
var globals:ShaderBufferData
```

The global values.

### params

```haxe
var params:ShaderBufferData
```

The parameters.

### tex

```haxe
var tex:Vector<h3d.mat.Texture>
```

The textures.

### buffers

```haxe
var buffers:Vector<h3d.Buffer>
```

The buffers.

### texHandles

```haxe
var texHandles:Vector<h3d.mat.TextureHandle>
```

The bindless texture handles.

### bufHandles

```haxe
var bufHandles:Vector<h3d.BufferHandle>
```

The bindless buffer handles.

## Methods

### grow

```haxe
function grow(s:hxsl.RuntimeShaderData):Void
```

Makes the buffers large enough for the shader stage `s`.
