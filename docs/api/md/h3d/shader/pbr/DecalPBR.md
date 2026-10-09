# h3d.shader.pbr.DecalPBR

**class** · package [`h3d.shader.pbr`](README.md) · module `h3d.shader.pbr.VolumeDecal` · source [`h3d/shader/pbr/VolumeDecal.hx`](../../../../../../h3d/shader/pbr/VolumeDecal.hx)

Extends: [`h3d.shader.pbr.BaseDecal`](BaseDecal.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### CENTERED

```haxe
var CENTERED(get, set):Bool
```

### USE_ALBEDO

```haxe
var USE_ALBEDO(get, set):Bool
```

### USE_NORMAL

```haxe
var USE_NORMAL(get, set):Bool
```

### albedoStrength

```haxe
var albedoStrength(get, set):Float
```

### normalStrength

```haxe
var normalStrength(get, set):Float
```

### pbrStrength

```haxe
var pbrStrength(get, set):Float
```

### emissiveStrength

```haxe
var emissiveStrength(get, set):Float
```

### normal

```haxe
var normal(get, set):hxsl.Vec
```

### tangent

```haxe
var tangent(get, set):hxsl.Vec
```

### albedoTexture

```haxe
var albedoTexture(get, set):hxsl.Texture
```

### normalTexture

```haxe
var normalTexture(get, set):hxsl.Texture
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

- from [`h3d.shader.pbr.BaseDecal`](BaseDecal.md): `USE_NORMAL_FADE`, `fadePower`, `fadeStart`, `fadeEnd`, `normalFadeStart`, `normalFadeEnd`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
