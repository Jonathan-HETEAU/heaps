# h3d.pass.MergeShader

**class** · package [`h3d.pass`](README.md) · module `h3d.pass.Merge` · source [`h3d/pass/Merge.hx`](../../../../../h3d/pass/Merge.hx)

Extends: [`h3d.shader.ScreenShader`](../shader/ScreenShader.md) → [`hxsl.Shader`](../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### tex1

```haxe
var tex1(get, set):hxsl.Texture
```

### tex2

```haxe
var tex2(get, set):hxsl.Texture
```

### mipLvl

```haxe
var mipLvl(get, set):Int
```

### alpha

```haxe
var alpha(get, set):Float
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
