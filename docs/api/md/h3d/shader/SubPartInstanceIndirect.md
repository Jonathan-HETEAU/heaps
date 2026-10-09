# h3d.shader.SubPartInstanceIndirect

**class** · package [`h3d.shader`](README.md) · module `h3d.shader.InstanceIndirect` · source [`h3d/shader/InstanceIndirect.hx`](../../../../../h3d/shader/InstanceIndirect.hx)

Extends: [`h3d.shader.InstanceIndirectBase`](InstanceIndirectBase.md) → [`hxsl.Shader`](../../hxsl/Shader.md)

Culls instances of sub meshes and selects their level of detail, writing their indirect draw commands.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### instancesInfos

```haxe
var instancesInfos(get, set):hxsl.Buffer
```

### subMeshesInfos

```haxe
var subMeshesInfos(get, set):hxsl.Buffer
```

### MATERIAL_COUNT

```haxe
var MATERIAL_COUNT(get, set):Int
```

### materialCommandStart

```haxe
var materialCommandStart(get, set):Array<hxsl.Vec4>
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
