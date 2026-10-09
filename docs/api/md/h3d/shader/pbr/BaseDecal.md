# h3d.shader.pbr.BaseDecal

**class** · package [`h3d.shader.pbr`](README.md) · module `h3d.shader.pbr.VolumeDecal` · source [`h3d/shader/pbr/VolumeDecal.hx`](../../../../../../h3d/shader/pbr/VolumeDecal.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

Subclasses: [`h3d.shader.pbr.DecalOverlay`](DecalOverlay.md), [`h3d.shader.pbr.DecalPBR`](DecalPBR.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### USE_NORMAL_FADE

```haxe
var USE_NORMAL_FADE(get, set):Bool
```

### fadePower

```haxe
var fadePower(get, set):Float
```

### fadeStart

```haxe
var fadeStart(get, set):Float
```

### fadeEnd

```haxe
var fadeEnd(get, set):Float
```

### normalFadeStart

```haxe
var normalFadeStart(get, set):Float
```

### normalFadeEnd

```haxe
var normalFadeEnd(get, set):Float
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
