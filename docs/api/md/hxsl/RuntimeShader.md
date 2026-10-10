# hxsl.RuntimeShader

**class** · package [`hxsl`](README.md) · source [`hxsl/RuntimeShader.hx`](../../../../hxsl/RuntimeShader.hx)

The result of linking a list of shaders (`Cache.link`): the code of each stage, ready to be compiled by the driver.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty shader.

## Variables

### id

```haxe
var id:Int
```

The unique identifier of the shader.

### vertex

```haxe
var vertex:RuntimeShaderData
```

The vertex stage.

### fragment

```haxe
var fragment:RuntimeShaderData
```

The fragment stage.

### compute

```haxe
var compute(get, set):RuntimeShaderData
```

The compute stage, for a compute shader (stored in `vertex`).

### globals

```haxe
var globals:Map<Int, Bool>
```

The identifiers of the globals used by the shader.

### signature

```haxe
var signature:String
```

Signature of the resulting HxSL code.
Several shaders with the different specification might still get the same resulting signature.

### mode

```haxe
var mode:LinkMode
```

How the shaders were linked.

### spec

```haxe
var spec:{ signature:String, instances:Array<ShaderInstanceDesc> }
```

The shader variants linked together, and their signature.

## Methods

### hasBindless

```haxe
inline function hasBindless():Bool
```

Tells if a stage uses bindless handles.

### hasGlobal

```haxe
inline function hasGlobal(gid:Int):Bool
```

Tells if the shader uses the global of the given identifier.

### getShaders

```haxe
function getShaders():Array<RuntimeShaderData>
```

Returns the stages of the shader.

### releaseData

```haxe
function releaseData():Void
```

Releases the functions of the shader data (the variables and the generated code are kept to recompile the shader after a context loss).

### getInputFormat

```haxe
function getInputFormat(?instance:Bool = false):hxd.BufferFormat
```

Returns the format of the vertex inputs used by the shader (the per instance inputs if `instance` is set).
