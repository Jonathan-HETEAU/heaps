# h3d.shader.Texture

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/Texture.hx`](../../../../../h3d/shader/Texture.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Applies a texture to the output color (see `h3d.mat.Material.texture`).

## Constructor

### new

```haxe
function new(?tex:hxsl.Texture):Void
```

Creates the shader with the texture `tex`.

## Variables

### additive

```haxe
var additive(get, set):Bool
```

### killAlpha

```haxe
var killAlpha(get, set):Bool
```

### specularAlpha

```haxe
var specularAlpha(get, set):Bool
```

### killAlphaThreshold

```haxe
var killAlphaThreshold(get, set):Float
```

### texture

```haxe
var texture(get, set):hxsl.Texture
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

### setParamIndexValue

```haxe
override function setParamIndexValue(index:Int, val:Dynamic):Void
```

### setParamIndexFloatValue

```haxe
override function setParamIndexFloatValue(index:Int, val:Float):Void
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

- from [`hxsl.Shader`](../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
