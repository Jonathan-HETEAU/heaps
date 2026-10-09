# h3d.scene.pbr.IrradShader

**class** · package [`h3d.scene.pbr`](README.md) · module `h3d.scene.pbr.Environment` · source [`h3d/scene/pbr/Environment.hx`](../../../../../../h3d/scene/pbr/Environment.hx)

Extends: [`h3d.scene.pbr.IrradBase`](IrradBase.md) → [`h3d.shader.ScreenShader`](../../shader/ScreenShader.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

Computes the diffuse irradiance and the prefiltered specular cube maps of an `Environment`.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### faceMatrix

```haxe
var faceMatrix(get, set):hxsl.Matrix
```

### envMap

```haxe
var envMap(get, set):hxsl.Texture
```

### isSpecular

```haxe
var isSpecular(get, set):Bool
```

### isSRGB

```haxe
var isSRGB(get, set):Bool
```

### roughness

```haxe
var roughness(get, set):Float
```

### cubeSize

```haxe
var cubeSize(get, set):Float
```

### cubeScaleFactor

```haxe
var cubeScaleFactor(get, set):Float
```

### hdrMax

```haxe
var hdrMax(get, set):Float
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

- from [`h3d.scene.pbr.IrradBase`](IrradBase.md): `samplesBits`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `writeParam`, `clone`
- from [`h3d.shader.ScreenShader`](../../shader/ScreenShader.md): `flipY`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
