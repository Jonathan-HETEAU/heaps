# h3d.shader.pbr.LightEvaluation

**class** · package [`h3d.shader.pbr`](README.md) · module `h3d.shader.pbr.Light` · source [`h3d/shader/pbr/Light.hx`](../../../../../../h3d/shader/pbr/Light.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

Subclasses: [`h3d.shader.pbr.Light`](Light.md)

Shader functions computing the intensity of the different kinds of PBR lights.

## Constructor

### new

```haxe
function new():Void
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

## Inherited members

- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
