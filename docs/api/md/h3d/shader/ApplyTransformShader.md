# h3d.shader.ApplyTransformShader

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/ApplyTransformShader.hx`](../../../../../h3d/shader/ApplyTransformShader.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### IS_LOCAL

```haxe
var IS_LOCAL(get, set):Bool
```

### invTransform

```haxe
var invTransform(get, set):hxsl.Matrix
```

### transform

```haxe
var transform(get, set):hxsl.Matrix
```

### prevTransform

```haxe
var prevTransform(get, set):hxsl.Matrix
```

## Methods

### updateConstants

```haxe
override function updateConstants(globals:hxsl.Globals):Void
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
override function writeParam(index:Int, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Void
```

### clone

```haxe
override function clone():hxsl.Shader
```

## Inherited members

- from [`hxsl.Shader`](../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
