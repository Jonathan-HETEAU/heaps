# h3d.shader.pbr.SSR

**class** · package [`h3d.shader.pbr`](README.md) · source [`h3d/shader/pbr/SSR.hx`](../../../../../../h3d/shader/pbr/SSR.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### hdrMap

```haxe
var hdrMap(get, set):hxsl.Texture
```

### depthMap

```haxe
var depthMap(get, set):hxsl.Texture
```

### normalMap

```haxe
var normalMap(get, set):hxsl.Texture
```

### roughnessMap

```haxe
var roughnessMap(get, set):hxsl.Texture
```

### outputMipLevel

```haxe
var outputMipLevel(get, set):hxsl.Texture
```

### outputColor

```haxe
var outputColor(get, set):hxsl.Texture
```

### screenSize

```haxe
var screenSize(get, set):hxsl.Vec
```

### mipMaps

```haxe
var mipMaps(get, set):Int
```

### stepCount

```haxe
var stepCount(get, set):Int
```

### fadeInExponent

```haxe
var fadeInExponent(get, set):Float
```

### fadeOutExponent

```haxe
var fadeOutExponent(get, set):Float
```

### depthTolerance

```haxe
var depthTolerance(get, set):Float
```

### distanceBias

```haxe
var distanceBias(get, set):Float
```

### distancePowerBias

```haxe
var distancePowerBias(get, set):Float
```

### marginSize

```haxe
var marginSize(get, set):Float
```

### ORTHOGONAL

```haxe
var ORTHOGONAL(get, set):Bool
```

### DEBUG

```haxe
var DEBUG(get, set):Bool
```

### debugSSR

```haxe
var debugSSR(get, set):hxsl.Texture
```

### debugPixelX

```haxe
var debugPixelX(get, set):Int
```

### debugPixelY

```haxe
var debugPixelY(get, set):Int
```

### debugRoughnessFactor

```haxe
var debugRoughnessFactor(get, set):Float
```

### debugIteration

```haxe
var debugIteration(get, set):Int
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
