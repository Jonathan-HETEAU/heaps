# h3d.shader.ColorAdd

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/ColorAdd.hx`](../../../../../h3d/shader/ColorAdd.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Adds a color to the output color.

## Constructor

### new

```haxe
function new(?color:Int = 0):Void
```

Creates the shader with a color in `0xRRGGBB` format.

## Variables

### color

```haxe
var color(get, set):hxsl.Vec
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
