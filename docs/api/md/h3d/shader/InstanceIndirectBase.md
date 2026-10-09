# h3d.shader.InstanceIndirectBase

**class** · package [`h3d.shader`](README.md) · module `h3d.shader.InstanceIndirect` · source [`h3d/shader/InstanceIndirect.hx`](../../../../../h3d/shader/InstanceIndirect.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Subclasses: [`h3d.shader.InstanceIndirect`](InstanceIndirect.md), [`h3d.shader.SubPartInstanceIndirect`](SubPartInstanceIndirect.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### ENABLE_COUNT_BUFFER

```haxe
var ENABLE_COUNT_BUFFER(get, set):Bool
```

### countBuffer

```haxe
var countBuffer(get, set):hxsl.Buffer
```

### commandBuffer

```haxe
var commandBuffer(get, set):hxsl.Buffer
```

### instanceData

```haxe
var instanceData(get, set):hxsl.Buffer
```

### instanceCount

```haxe
var instanceCount(get, set):Int
```

### subPartsInfos

```haxe
var subPartsInfos(get, set):hxsl.Buffer
```

### ENABLE_CULLING

```haxe
var ENABLE_CULLING(get, set):Bool
```

### frustum

```haxe
var frustum(get, set):hxsl.Buffer
```

### ENABLE_LOD

```haxe
var ENABLE_LOD(get, set):Bool
```

### ENABLE_DISTANCE_CLIPPING

```haxe
var ENABLE_DISTANCE_CLIPPING(get, set):Bool
```

### maxDistance

```haxe
var maxDistance(get, set):Float
```

### meshLodScale

```haxe
var meshLodScale(get, set):Float
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
