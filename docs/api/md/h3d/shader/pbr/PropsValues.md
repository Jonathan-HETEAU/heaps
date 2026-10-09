# h3d.shader.pbr.PropsValues

**class** · package [`h3d.shader.pbr`](README.md) · source [`h3d/shader/pbr/PropsValues.hx`](../../../../../../h3d/shader/pbr/PropsValues.hx)

Extends: [`hxsl.Shader`](../../../hxsl/Shader.md)

Sets the PBR properties of a material from constant values.

## Constructor

### new

```haxe
function new(?metalness:Float = 0., ?roughness:Float = 1., ?occlusion:Float = 1., ?emissive:Float = 0., ?custom1:Float = 0., ?custom2:Float = 0., ?translucency:Float = 0.):Void
```

Creates the shader with the given property values.

## Variables

### metalnessValue

```haxe
var metalnessValue(get, set):Float
```

### roughnessValue

```haxe
var roughnessValue(get, set):Float
```

### occlusionValue

```haxe
var occlusionValue(get, set):Float
```

### emissiveValue

```haxe
var emissiveValue(get, set):Float
```

### custom1Value

```haxe
var custom1Value(get, set):Float
```

### custom2Value

```haxe
var custom2Value(get, set):Float
```

### translucencyValue

```haxe
var translucencyValue(get, set):hxsl.Vec
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
