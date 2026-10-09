# h3d.shader.VolumeDecal

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/VolumeDecal.hx`](../../../../../h3d/shader/VolumeDecal.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Projects a texture on the surfaces inside a box volume (the decal mesh), using the depth buffer.

## Constructor

### new

```haxe
function new(objectWidth:Float, objectHeight:Float):Void
```

Creates the shader for a decal of the given size.

## Variables

### scale

```haxe
var scale(get, set):hxsl.Vec
```

### normal

```haxe
var normal(get, set):hxsl.Vec
```

### tangent

```haxe
var tangent(get, set):hxsl.Vec
```

### isCentered

```haxe
var isCentered(get, set):Bool
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
