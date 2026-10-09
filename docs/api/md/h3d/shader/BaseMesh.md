# h3d.shader.BaseMesh

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/BaseMesh.hx`](../../../../../h3d/shader/BaseMesh.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### color

```haxe
var color(get, set):hxsl.Vec4
```

### specularPower

```haxe
var specularPower(get, set):Float
```

### specularAmount

```haxe
var specularAmount(get, set):Float
```

### specularColor

```haxe
var specularColor(get, set):hxsl.Vec
```

### IS_STATIC

```haxe
var IS_STATIC(get, set):Bool
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
