# h3d.shader.GpuParticle

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/GpuParticle.hx`](../../../../../h3d/shader/GpuParticle.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Animates the particles of `h3d.parts.GpuParticles` on the GPU.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### fadeIn

```haxe
var fadeIn(get, set):Float
```

### fadeOut

```haxe
var fadeOut(get, set):Float
```

### fadePower

```haxe
var fadePower(get, set):Float
```

### speedIncr

```haxe
var speedIncr(get, set):Float
```

### gravity

```haxe
var gravity(get, set):Float
```

### color

```haxe
var color(get, set):hxsl.Texture
```

### texture

```haxe
var texture(get, set):hxsl.Texture
```

### time

```haxe
var time(get, set):Float
```

### maxTime

```haxe
var maxTime(get, set):Float
```

### loopCounter

```haxe
var loopCounter(get, set):Float
```

### animationRepeat

```haxe
var animationRepeat(get, set):Float
```

### animationFixedFrame

```haxe
var animationFixedFrame(get, set):Float
```

### totalFrames

```haxe
var totalFrames(get, set):Float
```

### frameSize

```haxe
var frameSize(get, set):hxsl.Vec
```

### frameDivision

```haxe
var frameDivision(get, set):hxsl.Vec
```

### transform

```haxe
var transform(get, set):hxsl.Matrix
```

### clipBounds

```haxe
var clipBounds(get, set):Bool
```

### volumeMin

```haxe
var volumeMin(get, set):hxsl.Vec
```

### volumeSize

```haxe
var volumeSize(get, set):hxsl.Vec
```

### offset

```haxe
var offset(get, set):hxsl.Vec
```

### cameraRotation

```haxe
var cameraRotation(get, set):hxsl.Matrix
```

### transform3D

```haxe
var transform3D(get, set):Bool
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
