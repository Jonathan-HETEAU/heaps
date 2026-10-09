# h3d.shader.pbr.ClusterLightOcclusion

**class** · package [`h3d.shader.pbr`](README.md) · module `h3d.shader.pbr.ClusterCull` · source [`h3d/shader/pbr/ClusterCull.hx`](../../../../../../h3d/shader/pbr/ClusterCull.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

Compute shader removing from the clusters the lights hidden by the opaque geometry, using the hierarchical depth buffer.

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

### lightVisible

```haxe
var lightVisible(get, set):hxsl.Buffer
```

### hzb

```haxe
var hzb(get, set):hxsl.Texture
```

### hzbSize

```haxe
var hzbSize(get, set):hxsl.Vec
```

### pointLightOffset

```haxe
var pointLightOffset(get, set):Int
```

### pointCount

```haxe
var pointCount(get, set):Int
```

### spotLightOffset

```haxe
var spotLightOffset(get, set):Int
```

### spotCount

```haxe
var spotCount(get, set):Int
```

### capsuleLightOffset

```haxe
var capsuleLightOffset(get, set):Int
```

### capsuleCount

```haxe
var capsuleCount(get, set):Int
```

### rectLightOffset

```haxe
var rectLightOffset(get, set):Int
```

### rectCount

```haxe
var rectCount(get, set):Int
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
