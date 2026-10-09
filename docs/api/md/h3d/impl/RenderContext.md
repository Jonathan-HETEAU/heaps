# h3d.impl.RenderContext

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/RenderContext.hx`](../../../../../h3d/impl/RenderContext.hx)

Subclasses: [`h2d.RenderContext`](../../h2d/RenderContext.md), [`h3d.scene.RenderContext`](../scene/RenderContext.md)

## Static variables

### STRICT

```haxe
static var STRICT:Bool
```

## Static methods

### fillIntParam

```haxe
static inline function fillIntParam(v:Int, pos:Int, out:hxsl.ShaderParamBuffer):Void
```

### fillRec

```haxe
static function fillRec(v:Dynamic, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Int
```

### get

```haxe
static function get():RenderContext
```

### getType

```haxe
static inline function getType(cl:Class<RenderContext>):RenderContext
```

### onContextChange

```haxe
static dynamic function onContextChange():Void
```

## Variables

### engine

```haxe
var engine:h3d.Engine
```

### time

```haxe
var time:Float
```

### elapsedTime

```haxe
var elapsedTime:Float
```

### frame

```haxe
var frame:Int
```

### textures

```haxe
var textures:TextureCache
```

### globals

```haxe
var globals:hxsl.Globals
```

### shaderBuffers

```haxe
var shaderBuffers:h3d.shader.Buffers
```

## Methods

### setCurrent

```haxe
function setCurrent():Void
```

### clearCurrent

```haxe
function clearCurrent():Void
```

### dispose

```haxe
function dispose():Void
```

### getParamValue

```haxe
inline function getParamValue(p:hxsl.AllocParam, shaders:hxsl.ShaderList, ?opt:Bool = false):Dynamic
```

### fillGlobals

```haxe
function fillGlobals(buf:h3d.shader.Buffers, s:hxsl.RuntimeShader):Void
```

### fillParams

```haxe
function fillParams(buf:h3d.shader.Buffers, s:hxsl.RuntimeShader, shaders:hxsl.ShaderList, ?compute:Bool = false):Void
```
