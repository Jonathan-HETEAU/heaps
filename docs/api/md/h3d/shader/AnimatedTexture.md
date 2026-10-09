# h3d.shader.AnimatedTexture

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/AnimatedTexture.hx`](../../../../../h3d/shader/AnimatedTexture.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Plays an animation stored as a grid of frames in a texture (a sprite sheet), optionally blending between frames.

## Constructor

### new

```haxe
function new(texture:hxsl.Texture, frameDivisionX:Int, frameDivisionY:Int, ?totalFrames:Int = -1, ?speed:Float = 1.):Void
```

Creates the shader.
- **param** `frameDivisionX` The number of frames horizontally in the texture.
- **param** `frameDivisionY` The number of frames vertically in the texture.
- **param** `totalFrames` The number of frames, or `-1` for all the cells.
- **param** `speed` The number of frames per second.

## Variables

### useSourceUVs

```haxe
var useSourceUVs(get, set):Bool
```

### blendBetweenFrames

```haxe
var blendBetweenFrames(get, set):Bool
```

### texture

```haxe
var texture(get, set):hxsl.Texture
```

### startFrame

```haxe
var startFrame(get, set):Float
```

### speed

```haxe
var speed(get, set):Float
```

### frameDivision

```haxe
var frameDivision(get, set):hxsl.Vec
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
