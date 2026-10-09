# h3d.shader.DepthAwareUpsampling

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/DepthAwareUpsampling.hx`](../../../../../h3d/shader/DepthAwareUpsampling.hx)

Extends: [`h3d.shader.ScreenShader`](ScreenShader.md) → [`hxsl.Shader`](../../hxsl/Shader.md)

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

### source

```haxe
var source(get, set):hxsl.Texture
```

### sourceDepth

```haxe
var sourceDepth(get, set):hxsl.Texture
```

### destDepth

```haxe
var destDepth(get, set):hxsl.Texture
```

### depthThreshold

```haxe
var depthThreshold(get, set):Float
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
