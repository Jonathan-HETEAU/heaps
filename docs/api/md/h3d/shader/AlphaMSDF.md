# h3d.shader.AlphaMSDF

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/AlphaMSDF.hx`](../../../../../h3d/shader/AlphaMSDF.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Uses a multi-channel signed distance field texture as alpha mask, for sharp shapes at any scale (for instance MSDF fonts).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### useSourceUVs

```haxe
var useSourceUVs(get, set):Bool
```

### texture

```haxe
var texture(get, set):hxsl.Texture
```

### blur

```haxe
var blur(get, set):Float
```

### useColor

```haxe
var useColor(get, set):Bool
```

### color

```haxe
var color(get, set):hxsl.Vec
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
