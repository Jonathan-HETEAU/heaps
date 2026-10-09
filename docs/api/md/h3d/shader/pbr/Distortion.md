# h3d.shader.pbr.Distortion

**class** · package [`h3d.shader.pbr`](README.md) · source [`h3d/shader/pbr/Distortion.hx`](../../../../../../h3d/shader/pbr/Distortion.hx)

Extends: [`h3d.shader.ScreenShader`](../ScreenShader.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

Applies the distortion texture rendered by the `"distortion"` pass to the image.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### distortion

```haxe
var distortion(get, set):hxsl.Texture
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

- from [`h3d.shader.ScreenShader`](../ScreenShader.md): `flipY`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
