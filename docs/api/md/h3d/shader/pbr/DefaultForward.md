# h3d.shader.pbr.DefaultForward

**class** · package [`h3d.shader.pbr`](README.md) · source [`h3d/shader/pbr/DefaultForward.hx`](../../../../../../h3d/shader/pbr/DefaultForward.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### MAX_DIR_SHADOW_COUNT

```haxe
var MAX_DIR_SHADOW_COUNT(get, set):Int
```

### MAX_POINT_SHADOW_COUNT

```haxe
var MAX_POINT_SHADOW_COUNT(get, set):Int
```

### MAX_SPOT_SHADOW_COUNT

```haxe
var MAX_SPOT_SHADOW_COUNT(get, set):Int
```

### MAX_CAPSULE_SHADOW_COUNT

```haxe
var MAX_CAPSULE_SHADOW_COUNT(get, set):Int
```

### MAX_RECT_SHADOW_COUNT

```haxe
var MAX_RECT_SHADOW_COUNT(get, set):Int
```

### USE_BINDLESS

```haxe
var USE_BINDLESS(get, set):Bool
```

### DYNAMIC_SAMPLER_INDEX

```haxe
var DYNAMIC_SAMPLER_INDEX(get, set):Bool
```

### CLUSTERED

```haxe
var CLUSTERED(get, set):Bool
```

### HAS_CASCADE

```haxe
var HAS_CASCADE(get, set):Bool
```

### lightInfos

```haxe
var lightInfos(get, set):hxsl.Buffer
```

### clusterData

```haxe
var clusterData(get, set):hxsl.Buffer
```

### clusterZParams

```haxe
var clusterZParams(get, set):hxsl.Vec
```

### dirLightCount

```haxe
var dirLightCount(get, set):Int
```

### dirLightOffset

```haxe
var dirLightOffset(get, set):Int
```

### dirShadowCount

```haxe
var dirShadowCount(get, set):Int
```

### dirShadowOffset

```haxe
var dirShadowOffset(get, set):Int
```

### pointLightCount

```haxe
var pointLightCount(get, set):Int
```

### pointLightOffset

```haxe
var pointLightOffset(get, set):Int
```

### pointShadowCount

```haxe
var pointShadowCount(get, set):Int
```

### pointShadowOffset

```haxe
var pointShadowOffset(get, set):Int
```

### spotLightCount

```haxe
var spotLightCount(get, set):Int
```

### spotLightOffset

```haxe
var spotLightOffset(get, set):Int
```

### spotShadowCount

```haxe
var spotShadowCount(get, set):Int
```

### spotShadowOffset

```haxe
var spotShadowOffset(get, set):Int
```

### capsuleLightCount

```haxe
var capsuleLightCount(get, set):Int
```

### capsuleLightOffset

```haxe
var capsuleLightOffset(get, set):Int
```

### capsuleShadowCount

```haxe
var capsuleShadowCount(get, set):Int
```

### capsuleShadowOffset

```haxe
var capsuleShadowOffset(get, set):Int
```

### rectLightCount

```haxe
var rectLightCount(get, set):Int
```

### rectLightOffset

```haxe
var rectLightOffset(get, set):Int
```

### rectShadowCount

```haxe
var rectShadowCount(get, set):Int
```

### rectShadowOffset

```haxe
var rectShadowOffset(get, set):Int
```

### cascadeShadowMaps

```haxe
var cascadeShadowMaps(get, set):hxsl.TextureArray
```

### dirShadowMaps

```haxe
var dirShadowMaps(get, set):Array<hxsl.Texture>
```

### pointShadowMaps

```haxe
var pointShadowMaps(get, set):Array<hxsl.Texture>
```

### spotShadowMaps

```haxe
var spotShadowMaps(get, set):Array<hxsl.Texture>
```

### capsuleShadowMaps

```haxe
var capsuleShadowMaps(get, set):Array<hxsl.Texture>
```

### rectShadowMaps

```haxe
var rectShadowMaps(get, set):Array<hxsl.Texture>
```

### cameraPosition

```haxe
var cameraPosition(get, set):hxsl.Vec
```

### emissivePower

```haxe
var emissivePower(get, set):Float
```

### USE_INDIRECT

```haxe
var USE_INDIRECT(get, set):Bool
```

### irrLut

```haxe
var irrLut(get, set):hxsl.Texture
```

### irrDiffuse

```haxe
var irrDiffuse(get, set):hxsl.Texture
```

### irrSpecular

```haxe
var irrSpecular(get, set):hxsl.Texture
```

### irrSpecularLevels

```haxe
var irrSpecularLevels(get, set):Float
```

### irrPower

```haxe
var irrPower(get, set):Float
```

### irrRotation

```haxe
var irrRotation(get, set):hxsl.Vec
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
