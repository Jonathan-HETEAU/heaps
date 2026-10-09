# h3d.shader.pbr.ClusterCull

**class** · package [`h3d.shader.pbr`](README.md) · source [`h3d/shader/pbr/ClusterCull.hx`](../../../../../../h3d/shader/pbr/ClusterCull.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

Compute shader sorting the lights into the clusters of the view (see `h3d.scene.pbr.LightBuffer`).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### lightInfos

```haxe
var lightInfos(get, set):hxsl.Buffer
```

### clusterData

```haxe
var clusterData(get, set):hxsl.Buffer
```

### pointLightOffset

```haxe
var pointLightOffset(get, set):Int
```

### pointStart

```haxe
var pointStart(get, set):Int
```

### pointEnd

```haxe
var pointEnd(get, set):Int
```

### spotLightOffset

```haxe
var spotLightOffset(get, set):Int
```

### spotStart

```haxe
var spotStart(get, set):Int
```

### spotEnd

```haxe
var spotEnd(get, set):Int
```

### capsuleLightOffset

```haxe
var capsuleLightOffset(get, set):Int
```

### capsuleStart

```haxe
var capsuleStart(get, set):Int
```

### capsuleEnd

```haxe
var capsuleEnd(get, set):Int
```

### rectLightOffset

```haxe
var rectLightOffset(get, set):Int
```

### rectStart

```haxe
var rectStart(get, set):Int
```

### rectEnd

```haxe
var rectEnd(get, set):Int
```

### clusterNear

```haxe
var clusterNear(get, set):Float
```

### clusterFarOverNear

```haxe
var clusterFarOverNear(get, set):Float
```

### clusterLastSliceFar

```haxe
var clusterLastSliceFar(get, set):Float
```

### USE_HZB

```haxe
var USE_HZB(get, set):Bool
```

### hzb

```haxe
var hzb(get, set):hxsl.Texture
```

### hzbSize

```haxe
var hzbSize(get, set):hxsl.Vec
```

### USE_OCCLUSION

```haxe
var USE_OCCLUSION(get, set):Bool
```

### lightVisible

```haxe
var lightVisible(get, set):hxsl.Buffer
```

### spotSlot

```haxe
var spotSlot(get, set):Int
```

### capsuleSlot

```haxe
var capsuleSlot(get, set):Int
```

### rectSlot

```haxe
var rectSlot(get, set):Int
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
