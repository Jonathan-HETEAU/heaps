# h3d.shader.AlphaMap

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/AlphaMap.hx`](../../../../../h3d/shader/AlphaMap.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Multiplies the alpha by a channel of a texture (blue by default, or alpha with `useAlphaChannel`).

## Constructor

### new

```haxe
function new(texture:hxsl.Texture, ?useAlphaChannel:Bool = false):Void
```

Creates the shader with the alpha map `texture`.

## Variables

### texture

```haxe
var texture(get, set):hxsl.Texture
```

### uvScale

```haxe
var uvScale(get, set):hxsl.Vec
```

### uvDelta

```haxe
var uvDelta(get, set):hxsl.Vec
```

### useAlphaChannel

```haxe
var useAlphaChannel(get, set):Bool
```

### useSourceUVs

```haxe
var useSourceUVs(get, set):Bool
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
