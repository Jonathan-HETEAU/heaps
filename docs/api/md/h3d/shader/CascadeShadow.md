# h3d.shader.CascadeShadow

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/CascadeShadow.hx`](../../../../../h3d/shader/CascadeShadow.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### enable

```haxe
var enable(get, set):Bool
```

### SAMPLING_MODE

```haxe
var SAMPLING_MODE(get, set):Int
```

### DEBUG

```haxe
var DEBUG(get, set):Bool
```

### BLEND

```haxe
var BLEND(get, set):Bool
```

### shadowPower

```haxe
var shadowPower(get, set):Float
```

### pcfScale

```haxe
var pcfScale(get, set):Float
```

### cascadeShadowMaps

```haxe
var cascadeShadowMaps(get, set):hxsl.TextureArray
```

### cascadeScales

```haxe
var cascadeScales(get, set):Array<hxsl.Vec4>
```

### cascadeOffsets

```haxe
var cascadeOffsets(get, set):Array<hxsl.Vec4>
```

### cascadeDebugs

```haxe
var cascadeDebugs(get, set):Array<hxsl.Vec4>
```

### cascadeCount

```haxe
var cascadeCount(get, set):Int
```

### cascadeViewProj

```haxe
var cascadeViewProj(get, set):hxsl.Matrix
```

### cascadeTransitionFraction

```haxe
var cascadeTransitionFraction(get, set):Float
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
