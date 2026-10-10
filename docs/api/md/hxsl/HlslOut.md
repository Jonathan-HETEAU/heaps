# hxsl.HlslOut

**class** · package [`hxsl`](README.md) · source [`hxsl/HlslOut.hx`](../../../../hxsl/HlslOut.hx)

Generates HLSL code (DirectX 11 and 12) from a flattened shader stage.

## Constructor

### new

```haxe
function new():Void
```

Creates a generator.

## Static methods

### varName

```haxe
static function varName(v:TVar, varNames:Map<Int, String>, allNames:Map<String, Int>):String
```

Returns a unique name for the variable in the generated code, avoiding the HLSL keywords.

### semanticName

```haxe
static function semanticName(name:String):String
```

Returns the semantic name of a vertex input (a name ending with a digit gets a `_` suffix).

## Variables

### varNames

```haxe
var varNames:Map<Int, String>
```

The name of each variable in the generated code, by identifier.

## Methods

### run

```haxe
function run(s:ShaderData):String
```

Returns the HLSL code of the shader stage.
