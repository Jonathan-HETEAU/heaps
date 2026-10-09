# h3d.shader.LineShader

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/LineShader.hx`](../../../../../h3d/shader/LineShader.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Draws the quads of `h3d.scene.Graphics` as screen space lines of constant `width` in pixels.

## Constructor

### new

```haxe
function new(?width:Float = 1.5, ?lengthScale:Float = 1.):Void
```

Creates the shader.

## Variables

### lengthScale

```haxe
var lengthScale(get, set):Float
```

### width

```haxe
var width(get, set):Float
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
