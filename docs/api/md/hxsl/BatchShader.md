# hxsl.BatchShader

**class** · package [`hxsl`](README.md) · source [`hxsl/BatchShader.hx`](../../../../hxsl/BatchShader.hx)

Extends: [`hxsl.Shader`](Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### params

```haxe
var params:AllocParam
```

### paramsSize

```haxe
var paramsSize:Int
```

### Batch_HasOffset

```haxe
var Batch_HasOffset(get, set):Bool
```

### Batch_UseStorage

```haxe
var Batch_UseStorage(get, set):Bool
```

### Batch_Count

```haxe
var Batch_Count(get, set):Int
```

### Batch_Buffer

```haxe
var Batch_Buffer(get, set):Buffer
```

### Batch_StorageBuffer

```haxe
var Batch_StorageBuffer(get, set):Buffer
```

## Methods

### updateConstants

```haxe
override function updateConstants(globals:Globals):Void
```

### getParamValue

```haxe
override function getParamValue(index:Int):Dynamic
```

### getParamFloatValue

```haxe
override function getParamFloatValue(index:Int):Float
```

### setParamIndexValue

```haxe
override function setParamIndexValue(index:Int, val:Dynamic):Void
```

### setParamIndexFloatValue

```haxe
override function setParamIndexFloatValue(index:Int, val:Float):Void
```

### writeParam

```haxe
override function writeParam(index:Int, type:Type, out:ShaderParamBuffer, pos:Int):Void
```

### clone

```haxe
override function clone():Shader
```

## Inherited members

- from [`hxsl.Shader`](Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
