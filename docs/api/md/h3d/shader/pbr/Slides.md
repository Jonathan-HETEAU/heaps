# h3d.shader.pbr.Slides

**class** · package [`h3d.shader.pbr`](README.md) · source [`h3d/shader/pbr/Slides.hx`](../../../../../../h3d/shader/pbr/Slides.hx)

Extends: [`h3d.shader.ScreenShader`](../ScreenShader.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

Displays the G-buffer channels for debugging (the `Debug` display mode of `h3d.scene.pbr.Renderer`).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### mode

```haxe
var mode(get, set):DebugMode
```

The channel displayed.

### shadowMap

```haxe
var shadowMap(get, set):hxsl.TextureChannel
```

### shadowMapChannel

```haxe
var shadowMapChannel(get, set):hxsl.Channel
```

### shadowMapCube

```haxe
var shadowMapCube(get, set):hxsl.Texture
```

### velocity

```haxe
var velocity(get, set):hxsl.Texture
```

### translucencyMap

```haxe
var translucencyMap(get, set):hxsl.Texture
```

### shadowIsCube

```haxe
var shadowIsCube(get, set):Bool
```

### smode

```haxe
var smode(get, set):Int
```

### HAS_VELOCITY

```haxe
var HAS_VELOCITY(get, set):Bool
```

### HAS_TRANSLUCENCY

```haxe
var HAS_TRANSLUCENCY(get, set):Bool
```

### HAS_CLUSTERS

```haxe
var HAS_CLUSTERS(get, set):Bool
```

### clusterData

```haxe
var clusterData(get, set):hxsl.Buffer
```

### clusterZParams

```haxe
var clusterZParams(get, set):hxsl.Vec
```

### clearDepth

```haxe
var clearDepth(get, set):Float
```

### sceneColor

```haxe
var sceneColor(get, set):hxsl.Texture
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

- from [`h3d.shader.ScreenShader`](../ScreenShader.md): `flipY`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
