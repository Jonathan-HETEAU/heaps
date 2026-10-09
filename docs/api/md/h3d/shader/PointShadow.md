# h3d.shader.PointShadow

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/PointShadow.hx`](../../../../../h3d/shader/PointShadow.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Applies the shadows of a cube shadow map (see `h3d.pass.CubeShadowMap`).

## Constructor

### new

```haxe
function new():Void
```

Creates the shader.

## Variables

### enable

```haxe
var enable(get, set):Bool
```

### SAMPLING_MODE

```haxe
var SAMPLING_MODE(get, set):Int
```

### shadowPower

```haxe
var shadowPower(get, set):Float
```

### pcfScale

```haxe
var pcfScale(get, set):Float
```

### shadowMap

```haxe
var shadowMap(get, set):hxsl.Texture
```

### lightPos

```haxe
var lightPos(get, set):hxsl.Vec
```

### shadowBias

```haxe
var shadowBias(get, set):Float
```

### zFar

```haxe
var zFar(get, set):Float
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
