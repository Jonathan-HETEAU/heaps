# h3d.shader.SkinBase

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/SkinBase.hx`](../../../../../h3d/shader/SkinBase.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Subclasses: [`h3d.shader.Skin`](Skin.md), [`h3d.shader.SkinTangent`](SkinTangent.md)

Base of the skinning shaders: holds the bone matrices.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### BUFFER_SIZE

```haxe
var BUFFER_SIZE(get, set):Int
```

### fourBonesByVertex

```haxe
var fourBonesByVertex(get, set):Bool
```

### bonesMatrixes

```haxe
var bonesMatrixes(get, set):hxsl.Buffer
```

### prevBonesMatrixes

```haxe
var prevBonesMatrixes(get, set):hxsl.Buffer
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
