# hxsl.RuntimeShader

**class** · package [`hxsl`](README.md) · source [`hxsl/RuntimeShader.hx`](../../../../hxsl/RuntimeShader.hx)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### id

```haxe
var id:Int
```

### vertex

```haxe
var vertex:RuntimeShaderData
```

### fragment

```haxe
var fragment:RuntimeShaderData
```

### compute

```haxe
var compute(get, set):RuntimeShaderData
```

### globals

```haxe
var globals:Map<Int, Bool>
```

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

### spec

```haxe
var spec:{ signature:String, instances:Array<ShaderInstanceDesc> }
```

## Methods

### hasBindless

```haxe
inline function hasBindless():Bool
```

### hasGlobal

```haxe
inline function hasGlobal(gid:Int):Bool
```

### getShaders

```haxe
function getShaders():Array<RuntimeShaderData>
```

### releaseData

```haxe
function releaseData():Void
```

### getInputFormat

```haxe
function getInputFormat(?instance:Bool = false):hxd.BufferFormat
```
