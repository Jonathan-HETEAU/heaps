# h3d.shader.pbr.GammaCorrect

**class** · package [`h3d.shader.pbr`](README.md) · source [`h3d/shader/pbr/GammaCorrect.hx`](../../../../../../h3d/shader/pbr/GammaCorrect.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

Converts the color to linear space (approximated by squaring it), for unlit objects drawn in HDR (see `h3d.mat.PbrMaterial`
`BeforeTonemapping` mode). With `useEmissiveHDR`, the color is also multiplied by `1 + emissive`.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### useEmissiveHDR

```haxe
var useEmissiveHDR(get, set):Bool
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
