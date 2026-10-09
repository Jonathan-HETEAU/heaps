# h3d.shader.Parallax

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/Parallax.hx`](../../../../../h3d/shader/Parallax.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Static variables

### MIN_LAYERS

```haxe
static final MIN_LAYERS:Int
```

### MAX_LAYERS

```haxe
static final MAX_LAYERS:Int
```

## Variables

### amount

```haxe
var amount(get, set):Float
```

### heightMap

```haxe
var heightMap(get, set):hxsl.Texture
```

### invertBasis

```haxe
var invertBasis(get, set):Bool
```

### minLayers

```haxe
var minLayers(get, set):Int
```

### maxLayers

```haxe
var maxLayers(get, set):Int
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
