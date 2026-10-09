# h3d.shader.Blur

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/Blur.hx`](../../../../../h3d/shader/Blur.hx)

Extends: [`h3d.shader.ScreenShader`](ScreenShader.md) → [`hxsl.Shader`](../../hxsl/Shader.md)

One pass of a separable blur, used by `h3d.pass.Blur`.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### inverseProj

```haxe
var inverseProj(get, set):hxsl.Matrix
```

### texture

```haxe
var texture(get, set):hxsl.Texture
```

### depthTexture

```haxe
var depthTexture(get, set):hxsl.Texture
```

### Quality

```haxe
var Quality(get, set):Int
```

### isDepth

```haxe
var isDepth(get, set):Bool
```

### values

```haxe
var values(get, set):Array<Float>
```

### offsets

```haxe
var offsets(get, set):Array<Float>
```

### pixel

```haxe
var pixel(get, set):hxsl.Vec
```

### hasFixedColor

```haxe
var hasFixedColor(get, set):Bool
```

### smoothFixedColor

```haxe
var smoothFixedColor(get, set):Bool
```

### fixedColor

```haxe
var fixedColor(get, set):hxsl.Vec4
```

### isDepthDependant

```haxe
var isDepthDependant(get, set):Bool
```

### depthThreshold

```haxe
var depthThreshold(get, set):Float
```

### depthThresholdMaxDist

```haxe
var depthThresholdMaxDist(get, set):Float
```

### isCube

```haxe
var isCube(get, set):Bool
```

### cubeTexture

```haxe
var cubeTexture(get, set):hxsl.Texture
```

### cubeDir

```haxe
var cubeDir(get, set):hxsl.Matrix
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
