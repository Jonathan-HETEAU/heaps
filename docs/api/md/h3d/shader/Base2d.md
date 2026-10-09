# h3d.shader.Base2d

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/Base2d.hx`](../../../../../h3d/shader/Base2d.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### zValue

```haxe
var zValue(get, set):Float
```

### texture

```haxe
var texture(get, set):hxsl.Texture
```

### isRelative

```haxe
var isRelative(get, set):Bool
```

### color

```haxe
var color(get, set):hxsl.Vec4
```

### absoluteMatrixA

```haxe
var absoluteMatrixA(get, set):hxsl.Vec
```

### absoluteMatrixB

```haxe
var absoluteMatrixB(get, set):hxsl.Vec
```

### filterMatrixA

```haxe
var filterMatrixA(get, set):hxsl.Vec
```

### filterMatrixB

```haxe
var filterMatrixB(get, set):hxsl.Vec
```

### hasUVPos

```haxe
var hasUVPos(get, set):Bool
```

### uvPos

```haxe
var uvPos(get, set):hxsl.Vec4
```

### killAlpha

```haxe
var killAlpha(get, set):Bool
```

### pixelAlign

```haxe
var pixelAlign(get, set):Bool
```

### halfPixelInverse

```haxe
var halfPixelInverse(get, set):hxsl.Vec
```

### viewportA

```haxe
var viewportA(get, set):hxsl.Vec
```

### viewportB

```haxe
var viewportB(get, set):hxsl.Vec
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
