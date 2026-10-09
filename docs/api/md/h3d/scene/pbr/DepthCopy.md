# h3d.scene.pbr.DepthCopy

**class** · package [`h3d.scene.pbr`](README.md) · module `h3d.scene.pbr.Renderer` · source [`h3d/scene/pbr/Renderer.hx`](../../../../../../h3d/scene/pbr/Renderer.hx)

Extends: [`h3d.shader.ScreenShader`](../../shader/ScreenShader.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

Copies a depth channel texture to the output color.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### depthTexture

```haxe
var depthTexture(get, set):hxsl.TextureChannel
```

### depthTextureChannel

```haxe
var depthTextureChannel(get, set):hxsl.Channel
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

- from [`h3d.shader.ScreenShader`](../../shader/ScreenShader.md): `flipY`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
