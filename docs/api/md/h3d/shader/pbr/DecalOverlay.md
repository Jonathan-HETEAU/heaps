# h3d.shader.pbr.DecalOverlay

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

### GAMMA_CORRECT

```haxe
var GAMMA_CORRECT(get, set):Bool
```

### AUTO_ALPHA

```haxe
var AUTO_ALPHA(get, set):Bool
```

### emissive

```haxe
var emissive(get, set):Float
```

### colorTexture

```haxe
var colorTexture(get, set):hxsl.Texture
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
