# h3d.shader.pbr.SSRFilter

**class** · package [`h3d.shader.pbr`](README.md) · module `h3d.shader.pbr.SSR` · source [`h3d/shader/pbr/SSR.hx`](../../../../../../h3d/shader/pbr/SSR.hx)

Extends: [`h3d.shader.ScreenShader`](../ScreenShader.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

Filters the screen space reflections according to the roughness.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### ssrColor

```haxe
var ssrColor(get, set):hxsl.Texture
```

### mipLevel

```haxe
var mipLevel(get, set):Float
```

### invSize

```haxe
var invSize(get, set):hxsl.Vec
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
