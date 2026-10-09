# h3d.shader.SAO

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/SAO.hx`](../../../../../h3d/shader/SAO.hx)

Extends: [`h3d.shader.ScreenShader`](ScreenShader.md) → [`hxsl.Shader`](../../hxsl/Shader.md)

Screen space ambient occlusion.
Uses "Scalable Ambient Obscurance" [McGuire12]

## Constructor

### new

```haxe
function new():Void
```

## Variables

### numSamples

```haxe
var numSamples(get, set):Int
```

### numSpiralTurns

```haxe
var numSpiralTurns(get, set):Int
```

### useWorldUV

```haxe
var useWorldUV(get, set):Bool
```

### USE_START_FADE

```haxe
var USE_START_FADE(get, set):Bool
```

### USE_FADE

```haxe
var USE_FADE(get, set):Bool
```

### USE_SCALABLE_BIAS

```haxe
var USE_SCALABLE_BIAS(get, set):Bool
```

### ORTHO

```haxe
var ORTHO(get, set):Bool
```

### depthTexture

```haxe
var depthTexture(get, set):hxsl.TextureChannel
```

### depthTextureChannel

```haxe
var depthTextureChannel(get, set):hxsl.Channel
```

### normalTexture

```haxe
var normalTexture(get, set):hxsl.TextureChannel
```

### normalTextureChannel

```haxe
var normalTextureChannel(get, set):hxsl.Channel
```

### noiseTexture

```haxe
var noiseTexture(get, set):hxsl.Texture
```

### noiseScale

```haxe
var noiseScale(get, set):hxsl.Vec
```

### sampleRadius

```haxe
var sampleRadius(get, set):Float
```

### intensity

```haxe
var intensity(get, set):Float
```

### bias

```haxe
var bias(get, set):Float
```

### cameraView

```haxe
var cameraView(get, set):hxsl.Matrix
```

### cameraInverseViewProj

```haxe
var cameraInverseViewProj(get, set):hxsl.Matrix
```

### screenRatio

```haxe
var screenRatio(get, set):hxsl.Vec
```

### fovTan

```haxe
var fovTan(get, set):Float
```

### invOrthoHeight

```haxe
var invOrthoHeight(get, set):Float
```

### startFadeStart

```haxe
var startFadeStart(get, set):Float
```

### startFadeEnd

```haxe
var startFadeEnd(get, set):Float
```

### fadeStart

```haxe
var fadeStart(get, set):Float
```

### fadeEnd

```haxe
var fadeEnd(get, set):Float
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

### writeParam

```haxe
override function writeParam(index:Int, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Void
```

### clone

```haxe
override function clone():hxsl.Shader
```

## Inherited members

- from [`h3d.shader.ScreenShader`](ScreenShader.md): `flipY`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
- from [`hxsl.Shader`](../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
