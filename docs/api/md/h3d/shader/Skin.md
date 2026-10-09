# h3d.shader.Skin

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/Skin.hx`](../../../../../h3d/shader/Skin.hx)

Extends: [`h3d.shader.SkinBase`](SkinBase.md) → [`hxsl.Shader`](../../hxsl/Shader.md)

The skinning shader of `h3d.scene.Skin`: deforms the vertices by up to 4 bones.

## Constructor

### new

```haxe
function new():Void
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

- from [`h3d.shader.SkinBase`](SkinBase.md): `BUFFER_SIZE`, `fourBonesByVertex`, `bonesMatrixes`, `prevBonesMatrixes`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
- from [`hxsl.Shader`](../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
