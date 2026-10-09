# h3d.scene.pbr.IrradBase

**class** · package [`h3d.scene.pbr`](README.md) · module `h3d.scene.pbr.Environment` · source [`h3d/scene/pbr/Environment.hx`](../../../../../../h3d/scene/pbr/Environment.hx)

Extends: [`h3d.shader.ScreenShader`](../../shader/ScreenShader.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

Subclasses: [`h3d.scene.pbr.IrradLut`](IrradLut.md), [`h3d.scene.pbr.IrradShader`](IrradShader.md)

Base shader of the environment lighting precomputations (importance sampling helpers).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### samplesBits

```haxe
var samplesBits(get, set):Int
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

- from [`h3d.shader.ScreenShader`](../../shader/ScreenShader.md): `flipY`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
