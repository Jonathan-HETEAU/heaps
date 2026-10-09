# h3d.shader.AmbientLight

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/AmbientLight.hx`](../../../../../h3d/shader/AmbientLight.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

The ambient light of the forward renderer, combined with the light shaders (see `h3d.scene.fwd.LightSystem`).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### additive

```haxe
var additive(get, set):Bool
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

- from [`hxsl.Shader`](../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
