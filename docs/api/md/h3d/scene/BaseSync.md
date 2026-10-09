# h3d.scene.BaseSync

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.Batcher` · source [`h3d/scene/Batcher.hx`](../../../../../h3d/scene/Batcher.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Base class of the compute shaders updating the instance transforms on the GPU (see `Batcher.syncShader`).
It provides `getModelView` and `fillModelView` to read and write the transform of an instance.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### instancesData

```haxe
var instancesData(get, set):hxsl.Buffer
```

### instanceStride

```haxe
var instanceStride(get, set):Int
```

### modelViewOffset

```haxe
var modelViewOffset(get, set):Int
```

### instanceCount

```haxe
var instanceCount(get, set):Int
```

### syncIDs

```haxe
var syncIDs(get, set):hxsl.Buffer
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
