# h3d.shader.UVAnim

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/UVAnim.hx`](../../../../../h3d/shader/UVAnim.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Animates the texture coordinates through a grid of frames (a sprite sheet).

## Constructor

### new

```haxe
function new(frameDivision:Int, ?totalFrames:Int = -1, ?speed:Float = 1.):Void
```

Creates the shader.
- **param** `frameDivision` The number of frames on each axis of the texture.
- **param** `totalFrames` The number of frames, or `-1` for all the cells.
- **param** `speed` The number of frames per second.

## Variables

### speed

```haxe
var speed(get, set):Float
```

### frameDivision

```haxe
var frameDivision(get, set):Float
```

### totalFrames

```haxe
var totalFrames(get, set):Float
```

### startTime

```haxe
var startTime(get, set):Float
```

### loop

```haxe
var loop(get, set):Bool
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
