# h3d.shader.pbr.StrengthValues

**class** · package [`h3d.shader.pbr`](README.md) · source [`h3d/shader/pbr/StrengthValues.hx`](../../../../../../h3d/shader/pbr/StrengthValues.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

The strength of each property written by a decal (albedo, normal, PBR properties, emissive), from `0` to `1`.

## Constructor

### new

```haxe
function new(?albedoStrength:Float = 1., ?normalStrength:Float = 1., ?pbrStrength:Float = 1., ?emissiveStrength:Float = 1.):Void
```

Creates the shader.

## Variables

### albedoStrength

```haxe
var albedoStrength(get, set):Float
```

### normalStrength

```haxe
var normalStrength(get, set):Float
```

### pbrStrength

```haxe
var pbrStrength(get, set):Float
```

### emissiveStrength

```haxe
var emissiveStrength(get, set):Float
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
