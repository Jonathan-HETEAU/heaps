# h3d.shader.pbr.PropsImport

**class** · package [`h3d.shader.pbr`](README.md) · source [`h3d/shader/pbr/PropsImport.hx`](../../../../../../h3d/shader/pbr/PropsImport.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

Reads the PBR surface properties of the pixel from the G-buffer textures.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### albedoTex

```haxe
var albedoTex(get, set):hxsl.Texture
```

### normalTex

```haxe
var normalTex(get, set):hxsl.Texture
```

### pbrTex

```haxe
var pbrTex(get, set):hxsl.Texture
```

### depthTex

```haxe
var depthTex(get, set):hxsl.Texture
```

### otherTex

```haxe
var otherTex(get, set):hxsl.Texture
```

### isScreen

```haxe
var isScreen(get, set):Bool
```

### cameraInverseViewProj

```haxe
var cameraInverseViewProj(get, set):hxsl.Matrix
```

### occlusionPower

```haxe
var occlusionPower(get, set):Float
```

### FAST_SRGB

```haxe
var FAST_SRGB(get, set):Bool
```

### ENABLE_TRANSLUCENCY

```haxe
var ENABLE_TRANSLUCENCY(get, set):Bool
```

### translucencyTex

```haxe
var translucencyTex(get, set):hxsl.Texture
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

- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
