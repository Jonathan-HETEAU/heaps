# h3d.shader.Outline2D

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/Outline2D.hx`](../../../../../h3d/shader/Outline2D.hx)

Extends: [`h3d.shader.ScreenShader`](ScreenShader.md) → [`hxsl.Shader`](../../hxsl/Shader.md)

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

### size

```haxe
var size(get, set):hxsl.Vec
```

### samples

```haxe
var samples(get, set):Int
```

### color

```haxe
var color(get, set):hxsl.Vec4
```

### multiplyAlpha

```haxe
var multiplyAlpha(get, set):Int
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

- from [`h3d.shader.ScreenShader`](ScreenShader.md): `flipY`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
- from [`hxsl.Shader`](../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
