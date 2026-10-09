# h3d.shader.HZB

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/HZB.hx`](../../../../../h3d/shader/HZB.hx)

Extends: [`h3d.shader.ScreenShader`](ScreenShader.md) → [`hxsl.Shader`](../../hxsl/Shader.md)

Builds a mip level of a hierarchical depth buffer, keeping the minimum or maximum depth of each 2x2 block.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### compareMax

```haxe
var compareMax(get, set):Bool
```

### source

```haxe
var source(get, set):hxsl.Texture
```

### sourceWidth

```haxe
var sourceWidth(get, set):Int
```

### sourceHeight

```haxe
var sourceHeight(get, set):Int
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
