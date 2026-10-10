# hxsl.DynamicShader

**class** · package [`hxsl`](README.md) · source [`hxsl/DynamicShader.hx`](../../../../hxsl/DynamicShader.hx)

Extends: [`hxsl.Shader`](Shader.md)

A shader created at runtime from a `SharedShader` (such as a shader graph or a shader loaded from source), whose parameters are accessed by name or variable.

## Constructor

### new

```haxe
function new(s:SharedShader, ?name:String):Void
```

Creates a shader instance of the shared shader.

## Variables

### instanceName

```haxe
var instanceName:String
```

The name of the shader instance.

## Methods

### getParamIndex

```haxe
function getParamIndex(p:TVar):Int
```

Returns the index of the parameter variable.

### getParamValue

```haxe
override function getParamValue(index:Int):Dynamic
```

### writeParam

```haxe
override function writeParam(index:Int, type:Type, out:ShaderParamBuffer, pos:Int):Void
```

### getParamFloatValue

```haxe
override function getParamFloatValue(index:Int):Float
```

### setParamValue

```haxe
function setParamValue(p:TVar, value:Dynamic):Void
```

Sets the value of the parameter variable.

### setParamFloatValue

```haxe
function setParamFloatValue(p:TVar, value:Float):Void
```

Sets the value of the float parameter variable.

### updateConstants

```haxe
override function updateConstants(globals:Globals):Void
```

### getVariable

```haxe
function getVariable(name:String):Dynamic
```

Returns the value of the parameter of the given name, or `null`.

### setVariable

```haxe
function setVariable(name:String, value:Dynamic):Bool
```

Sets the value of the parameter of the given name. Returns `false` if there is none.

### hscriptGet

```haxe
function hscriptGet(field:String):Dynamic
```

Returns a parameter (or a field) for hscript.

### hscriptSet

```haxe
function hscriptSet(field:String, value:Dynamic):Dynamic
```

Sets a parameter (or a field) from hscript.

### toString

```haxe
override function toString():String
```

## Inherited members

- from [`hxsl.Shader`](Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
