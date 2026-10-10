# h3d.impl.RenderContext

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/RenderContext.hx`](../../../../../h3d/impl/RenderContext.hx)

Subclasses: [`h2d.RenderContext`](../../h2d/RenderContext.md), [`h3d.scene.RenderContext`](../scene/RenderContext.md)

The base class of the 2D and 3D render contexts (`h2d.RenderContext`, `h3d.scene.RenderContext`): time, globals, temporary textures, and the filling of the shader buffers.

## Static variables

### STRICT

```haxe
static var STRICT:Bool
```

If set, a missing texture or buffer parameter throws an error.

## Static methods

### fillIntParam

```haxe
static inline function fillIntParam(v:Int, pos:Int, out:hxsl.ShaderParamBuffer):Void
```

Writes the bits of an integer at the float position in the buffer.

### fillRec

```haxe
static function fillRec(v:Dynamic, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Int
```

Writes a value of the given shader type at the float position in the buffer, and returns the number of floats written.

### get

```haxe
static function get():RenderContext
```

Returns the current context.

### getType

```haxe
static inline function getType(cl:Class<RenderContext>):RenderContext
```

Returns the current context if it is an instance of the class, or `null`.

### onContextChange

```haxe
static dynamic function onContextChange():Void
```

Called when another context becomes the current one while one is set.

## Variables

### engine

```haxe
var engine:h3d.Engine
```

The engine.

### time

```haxe
var time:Float
```

The current time, in seconds.

### elapsedTime

```haxe
var elapsedTime:Float
```

The time elapsed since the previous frame, in seconds.

### frame

```haxe
var frame:Int
```

The current frame number.

### textures

```haxe
var textures:TextureCache
```

The cache of the temporary render target textures.

### globals

```haxe
var globals:hxsl.Globals
```

The values of the global shader variables.

### shaderBuffers

```haxe
var shaderBuffers:h3d.shader.Buffers
```

The buffers receiving the shader globals and parameters.

## Methods

### setCurrent

```haxe
function setCurrent():Void
```

Makes this context the current one.

### clearCurrent

```haxe
function clearCurrent():Void
```

Clears the current context. Throws if this context is not the current one.

### dispose

```haxe
function dispose():Void
```

Releases the temporary textures.

### getParamValue

```haxe
inline function getParamValue(p:hxsl.AllocParam, shaders:hxsl.ShaderList, ?opt:Bool = false):Dynamic
```

Returns the value of a parameter of the shaders (or of a per object global). Throws if it is `null`, unless `opt` is set.

### fillGlobals

```haxe
function fillGlobals(buf:h3d.shader.Buffers, s:hxsl.RuntimeShader):Void
```

Writes the globals used by the shader in the buffers.

### fillParams

```haxe
function fillParams(buf:h3d.shader.Buffers, s:hxsl.RuntimeShader, shaders:hxsl.ShaderList, ?compute:Bool = false):Void
```

Writes the parameters, textures and buffers of the shaders in the buffers.
