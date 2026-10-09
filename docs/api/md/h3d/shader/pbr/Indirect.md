# h3d.shader.pbr.Indirect

**class** · package [`h3d.shader.pbr`](README.md) · module `h3d.shader.pbr.Lighting` · source [`h3d/shader/pbr/Lighting.hx`](../../../../../../h3d/shader/pbr/Lighting.hx)

Extends: [`h3d.shader.pbr.PropsDefinition`](PropsDefinition.md) → [`hxsl.Shader`](../../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### drawIndirectDiffuse

```haxe
var drawIndirectDiffuse(get, set):Bool
```

### drawIndirectSpecular

```haxe
var drawIndirectSpecular(get, set):Bool
```

### showSky

```haxe
var showSky(get, set):Bool
```

### skyColor

```haxe
var skyColor(get, set):Bool
```

### skyOnly

```haxe
var skyOnly(get, set):Bool
```

### irrLut

```haxe
var irrLut(get, set):hxsl.Texture
```

### irrDiffuse

```haxe
var irrDiffuse(get, set):hxsl.Texture
```

### irrSpecular

```haxe
var irrSpecular(get, set):hxsl.Texture
```

### irrSpecularLevels

```haxe
var irrSpecularLevels(get, set):Float
```

### irrPower

```haxe
var irrPower(get, set):Float
```

### irrRotation

```haxe
var irrRotation(get, set):hxsl.Vec
```

### skyMap

```haxe
var skyMap(get, set):hxsl.Texture
```

### skyHdrMax

```haxe
var skyHdrMax(get, set):Float
```

### gammaCorrect

```haxe
var gammaCorrect(get, set):Bool
```

### cameraInvViewProj

```haxe
var cameraInvViewProj(get, set):hxsl.Matrix
```

### skyColorValue

```haxe
var skyColorValue(get, set):hxsl.Vec4
```

### emissivePower

```haxe
var emissivePower(get, set):Float
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
