# h3d.shader.pbr.ToneMapping

**class** · package [`h3d.shader.pbr`](README.md) · source [`h3d/shader/pbr/ToneMapping.hx`](../../../../../../h3d/shader/pbr/ToneMapping.hx)

Extends: [`h3d.shader.ScreenShader`](../ScreenShader.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

Converts the HDR image to displayable colors (exposure, tone mapping operator, gamma). See `h3d.scene.pbr.Renderer.toneMode`.

## Constructor

### new

```haxe
function new():Void
```

Creates the shader.

## Variables

### exposure

```haxe
var exposure(default, set):Float
```

The exposure: colors are multiplied by `exp(exposure)`.

### gamma

```haxe
var gamma(default, set):Float
```

The gamma of the output (2 by default).

### hdrTexture

```haxe
var hdrTexture(get, set):hxsl.Texture
```

### exposureExp

```haxe
var exposureExp(get, set):Float
```

### isSRBG

```haxe
var isSRBG(get, set):Bool
```

### mode

```haxe
var mode(get, set):Int
```

### invGamma

```haxe
var invGamma(get, set):Float
```

### a

```haxe
var a(get, set):Float
```

### b

```haxe
var b(get, set):Float
```

### c

```haxe
var c(get, set):Float
```

### d

```haxe
var d(get, set):Float
```

### e

```haxe
var e(get, set):Float
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
