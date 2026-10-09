# h3d.shader.pbr.CubeLod

**class** · package [`h3d.shader.pbr`](README.md) · source [`h3d/shader/pbr/CubeLod.hx`](../../../../../../h3d/shader/pbr/CubeLod.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new(?texture:hxsl.Texture):Void
```

## Variables

### texture

```haxe
var texture(get, set):hxsl.Texture
```

### lod

```haxe
var lod(get, set):Float
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
