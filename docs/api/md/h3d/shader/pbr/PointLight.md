# h3d.shader.pbr.PointLight

**class** · package [`h3d.shader.pbr`](README.md) · module `h3d.shader.pbr.Light` · source [`h3d/shader/pbr/Light.hx`](../../../../../../h3d/shader/pbr/Light.hx)

Extends: [`h3d.shader.pbr.Light`](Light.md) → [`h3d.shader.pbr.LightEvaluation`](LightEvaluation.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### lightPos

```haxe
var lightPos(get, set):hxsl.Vec
```

### invLightRange4

```haxe
var invLightRange4(get, set):Float
```

### pointSize

```haxe
var pointSize(get, set):Float
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

### writeParam

```haxe
override function writeParam(index:Int, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Void
```

### clone

```haxe
override function clone():hxsl.Shader
```

## Inherited members

- from [`h3d.shader.pbr.Light`](Light.md): `lightColor`, `occlusionFactor`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `writeParam`, `clone`
- from [`h3d.shader.pbr.LightEvaluation`](LightEvaluation.md): `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`
- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
