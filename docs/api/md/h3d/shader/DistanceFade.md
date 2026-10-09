# h3d.shader.DistanceFade

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/DistanceFade.hx`](../../../../../h3d/shader/DistanceFade.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Fades the objects in near the camera (between `nearMinFade` and `nearMaxFade`) and out far from it (between `farMinFade` and `farMaxFade`).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### nearFadeEnabled

```haxe
var nearFadeEnabled(get, set):Bool
```

### nearMinFade

```haxe
var nearMinFade(get, set):Float
```

### nearMaxFade

```haxe
var nearMaxFade(get, set):Float
```

### farFadeEnabled

```haxe
var farFadeEnabled(get, set):Bool
```

### farMinFade

```haxe
var farMinFade(get, set):Float
```

### farMaxFade

```haxe
var farMaxFade(get, set):Float
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
