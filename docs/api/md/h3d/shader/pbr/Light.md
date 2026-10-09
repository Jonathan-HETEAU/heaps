# h3d.shader.pbr.Light

**class** · package [`h3d.shader.pbr`](README.md) · source [`h3d/shader/pbr/Light.hx`](../../../../../../h3d/shader/pbr/Light.hx)

Extends: [`h3d.shader.pbr.LightEvaluation`](LightEvaluation.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

Subclasses: [`h3d.shader.pbr.CapsuleLight`](CapsuleLight.md), [`h3d.shader.pbr.DirLight`](DirLight.md), [`h3d.shader.pbr.PointLight`](PointLight.md), [`h3d.shader.pbr.RectangleLight`](RectangleLight.md), [`h3d.shader.pbr.SpotLight`](SpotLight.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### lightColor

```haxe
var lightColor(get, set):hxsl.Vec
```

### occlusionFactor

```haxe
var occlusionFactor(get, set):Float
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

- from [`h3d.shader.pbr.LightEvaluation`](LightEvaluation.md): `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`
- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
