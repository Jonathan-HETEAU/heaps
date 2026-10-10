# hxsl.RuntimeShaderData

**class** · package [`hxsl`](README.md) · module `hxsl.RuntimeShader` · source [`hxsl/RuntimeShader.hx`](../../../../hxsl/RuntimeShader.hx)

The data of one stage (vertex, fragment or compute) of a linked shader: its code and the layout of its parameters.

## Constructor

### new

```haxe
function new():Void
```

Creates empty data.

## Variables

### kind

```haxe
var kind:FunctionKind
```

The stage.

### data

```haxe
var data:ShaderData
```

The flattened shader code.

### code

```haxe
var code:String
```

The code generated for the driver (GLSL, HLSL...), set by the driver.

### params

```haxe
var params:AllocParam
```

The list of the parameters.

### paramsSize

```haxe
var paramsSize:Int
```

The size of the parameters buffer, in vec4.

### globals

```haxe
var globals:AllocGlobal
```

The list of the globals.

### globalsSize

```haxe
var globalsSize:Int
```

The size of the globals buffer, in vec4.

### textures

```haxe
var textures:AllocParam
```

The list of the texture parameters and globals.

### texturesCount

```haxe
var texturesCount:Int
```

The number of textures.

### buffers

```haxe
var buffers:AllocParam
```

The list of the buffer parameters and globals.

### bufferCount

```haxe
var bufferCount:Int
```

The number of buffers.

### globalsTexHandleCount

```haxe
var globalsTexHandleCount:Int
```

The number of texture handles (bindless) in the globals.

### globalsBufHandleCount

```haxe
var globalsBufHandleCount:Int
```

The number of buffer handles (bindless) in the globals.

### paramsTexHandleCount

```haxe
var paramsTexHandleCount:Int
```

The number of texture handles (bindless) in the parameters.

### paramsBufHandleCount

```haxe
var paramsBufHandleCount:Int
```

The number of buffer handles (bindless) in the parameters.

### hasBindless

```haxe
var hasBindless:Bool
```

Tells if the stage uses bindless texture or buffer handles.
