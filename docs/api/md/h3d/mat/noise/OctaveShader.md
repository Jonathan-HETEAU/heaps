# h3d.mat.noise.OctaveShader

**class** · package [`h3d.mat.noise`](README.md) · module `h3d.mat.noise.WorleyNoise` · source [`h3d/mat/noise/WorleyNoise.hx`](../../../../../../h3d/mat/noise/WorleyNoise.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

Combines the Worley noise octaves on the GPU (used by `WorleyNoise.generateOctave`).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### octaves

```haxe
var octaves(get, set):Int
```

### layer

```haxe
var layer(get, set):Float
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

- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
