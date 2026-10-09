# h3d.shader.Shadow

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/Shadow.hx`](../../../../../h3d/shader/Shadow.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Receives the shadows of the forward renderer shadow map (see `h3d.pass.DefaultShadowMap` and `h3d.mat.Material.receiveShadows`).

## Constructor

### new

```haxe
function new():Void
```

Creates the shader.

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

## Inherited members

- from [`hxsl.Shader`](../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
