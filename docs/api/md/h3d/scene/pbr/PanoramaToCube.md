# h3d.scene.pbr.PanoramaToCube

**class** · package [`h3d.scene.pbr`](README.md) · module `h3d.scene.pbr.Environment` · source [`h3d/scene/pbr/Environment.hx`](../../../../../../h3d/scene/pbr/Environment.hx)

Extends: [`h3d.shader.ScreenShader`](../../shader/ScreenShader.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### texture

```haxe
var texture(get, set):hxsl.Texture
```

### faceMatrix

```haxe
var faceMatrix(get, set):hxsl.Matrix
```

### threshold

```haxe
var threshold(get, set):Float
```

### aboveThresholdScale

```haxe
var aboveThresholdScale(get, set):Float
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
