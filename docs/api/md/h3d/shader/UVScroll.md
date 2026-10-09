# h3d.shader.UVScroll

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/UVScroll.hx`](../../../../../h3d/shader/UVScroll.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Scrolls the texture coordinates over time.

## Constructor

### new

```haxe
function new(?vx:Float = 0., ?vy:Float = 0.):Void
```

Creates the shader with a scrolling speed.

## Variables

### uvSpeed

```haxe
var uvSpeed(get, set):hxsl.Vec
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
