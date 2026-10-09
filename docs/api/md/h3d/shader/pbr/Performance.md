# h3d.shader.pbr.Performance

**class** · package [`h3d.shader.pbr`](README.md) · module `h3d.shader.pbr.Light` · source [`h3d/shader/pbr/Light.hx`](../../../../../../h3d/shader/pbr/Light.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

Counts the lights affecting each pixel (for the `Performance` display mode).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### maxLights

```haxe
var maxLights(get, set):Int
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

- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
