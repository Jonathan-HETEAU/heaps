# h3d.shader.UVDelta

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/UVDelta.hx`](../../../../../h3d/shader/UVDelta.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new(?dx:Float = 0., ?dy:Float = 0., ?sx:Float = 1., ?sy:Float = 1.):Void
```

## Variables

### uvDelta

```haxe
var uvDelta(get, set):hxsl.Vec
```

### uvScale

```haxe
var uvScale(get, set):hxsl.Vec
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
