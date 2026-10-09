# h3d.scene.AnimMeshBatchShader

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.AnimMeshBatcher` · source [`h3d/scene/AnimMeshBatcher.hx`](../../../../../h3d/scene/AnimMeshBatcher.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Shader applying the animated transform of the source object to all the instances of an `AnimMeshBatch`.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### animationMatrix

```haxe
var animationMatrix(get, set):hxsl.Matrix
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
