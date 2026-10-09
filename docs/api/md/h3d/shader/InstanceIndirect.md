# h3d.shader.InstanceIndirect

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/InstanceIndirect.hx`](../../../../../h3d/shader/InstanceIndirect.hx)

Extends: [`h3d.shader.InstanceIndirectBase`](InstanceIndirectBase.md) → [`hxsl.Shader`](../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### center

```haxe
var center(get, set):hxsl.Vec
```

### radius

```haxe
var radius(get, set):Float
```

### lodCount

```haxe
var lodCount(get, set):Int
```

### subPartsCount

```haxe
var subPartsCount(get, set):Int
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

- from [`h3d.shader.InstanceIndirectBase`](InstanceIndirectBase.md): `ENABLE_COUNT_BUFFER`, `countBuffer`, `commandBuffer`, `instanceData`, `instanceCount`, `subPartsInfos`, `ENABLE_CULLING`, `frustum`, `ENABLE_LOD`, `ENABLE_DISTANCE_CLIPPING`, `maxDistance`, `meshLodScale`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
- from [`hxsl.Shader`](../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
