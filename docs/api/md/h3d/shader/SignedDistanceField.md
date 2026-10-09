# h3d.shader.SignedDistanceField

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/SignedDistanceField.hx`](../../../../../h3d/shader/SignedDistanceField.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Uses a channel of a signed distance field texture as alpha, for sharp shapes at any scale (for instance SDF fonts).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### channel

```haxe
var channel(get, set):Int
```

### autoSmoothing

```haxe
var autoSmoothing(get, set):Bool
```

### alphaCutoff

```haxe
var alphaCutoff(get, set):Float
```

### smoothing

```haxe
var smoothing(get, set):Float
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
