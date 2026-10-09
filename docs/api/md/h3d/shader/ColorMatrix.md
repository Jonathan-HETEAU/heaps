# h3d.shader.ColorMatrix

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/ColorMatrix.hx`](../../../../../h3d/shader/ColorMatrix.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Transforms the output color by a matrix (see the color methods of `h3d.Matrix`).

## Constructor

### new

```haxe
function new(?m:Array<Float>):Void
```

Creates the shader with the 16 values of the matrix `m` (identity by default).

## Variables

### matrix

```haxe
var matrix(get, set):hxsl.Matrix
```

### enabled

```haxe
var enabled(get, set):Bool
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
