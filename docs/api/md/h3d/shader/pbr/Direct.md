# h3d.shader.pbr.Direct

**class** · package [`h3d.shader.pbr`](README.md) · module `h3d.shader.pbr.Lighting` · source [`h3d/shader/pbr/Lighting.hx`](../../../../../../h3d/shader/pbr/Lighting.hx)

Extends: [`h3d.shader.pbr.PropsDefinition`](PropsDefinition.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

Computes the direct lighting of a PBR light from the G-buffer.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### doDiscard

```haxe
var doDiscard(get, set):Bool
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

- from [`h3d.shader.pbr.PropsDefinition`](PropsDefinition.md): `cameraPosition`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
- from [`hxsl.Shader`](../../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
