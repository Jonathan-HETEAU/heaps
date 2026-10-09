# hxsl.DynamicShader

**class** · package [`hxsl`](README.md) · source [`hxsl/DynamicShader.hx`](../../../../hxsl/DynamicShader.hx)

Extends: [`hxsl.Shader`](Shader.md)

## Constructor

### new

```haxe
function new(s:SharedShader, ?name:String):Void
```

## Variables

### instanceName

```haxe
var instanceName:String
```

## Methods

### getParamIndex

```haxe
function getParamIndex(p:TVar):Int
```

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

### setParamFloatValue

```haxe
function setParamFloatValue(p:TVar, value:Float):Void
```

### updateConstants

```haxe
override function updateConstants(globals:Globals):Void
```

### getVariable

```haxe
function getVariable(name:String):Dynamic
```

### setVariable

```haxe
function setVariable(name:String, value:Dynamic):Bool
```

### hscriptGet

```haxe
function hscriptGet(field:String):Dynamic
```

### hscriptSet

```haxe
function hscriptSet(field:String, value:Dynamic):Dynamic
```

### toString

```haxe
override function toString():String
```

## Inherited members

- from [`hxsl.Shader`](Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
