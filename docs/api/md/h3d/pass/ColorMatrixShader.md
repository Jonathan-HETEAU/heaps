# h3d.pass.ColorMatrixShader

**class** · package [`h3d.pass`](README.md) · module `h3d.pass.ColorMatrix` · source [`h3d/pass/ColorMatrix.hx`](../../../../../h3d/pass/ColorMatrix.hx)

Extends: [`h3d.shader.ScreenShader`](../shader/ScreenShader.md) → [`hxsl.Shader`](../../hxsl/Shader.md)

Transforms the colors of a texture by a matrix, with an optional mask.

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

### matrix

```haxe
var matrix(get, set):hxsl.Matrix
```

### useAlpha

```haxe
var useAlpha(get, set):Bool
```

### useMask

```haxe
var useMask(get, set):Bool
```

### maskInvert

```haxe
var maskInvert(get, set):Bool
```

### hasSecondMatrix

```haxe
var hasSecondMatrix(get, set):Bool
```

### matrix2

```haxe
var matrix2(get, set):hxsl.Matrix
```

### mask

```haxe
var mask(get, set):hxsl.Texture
```

### maskMatA

```haxe
var maskMatA(get, set):hxsl.Vec
```

### maskMatB

```haxe
var maskMatB(get, set):hxsl.Vec
```

### maskPower

```haxe
var maskPower(get, set):Float
```

### maskChannel

```haxe
var maskChannel(get, set):hxsl.Vec4
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

- from [`h3d.shader.ScreenShader`](../shader/ScreenShader.md): `flipY`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
- from [`hxsl.Shader`](../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
