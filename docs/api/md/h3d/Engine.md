# h3d.Engine

**class** · package [`h3d`](README.md) · source [`h3d/Engine.hx`](../../../../h3d/Engine.hx)

## Static variables

### SOFTWARE_DRIVER

```haxe
static var SOFTWARE_DRIVER:Bool
```

### ANTIALIASING

```haxe
static var ANTIALIASING:Int
```

## Static methods

### getCurrent

```haxe
static inline function getCurrent():Engine
```

## Variables

### driver

```haxe
var driver(default, null):h3d.impl.Driver
```

### mem

```haxe
var mem(default, null):h3d.impl.MemoryManager
```

### hardware

```haxe
var hardware(default, null):Bool
```

### width

```haxe
var width(default, null):Int
```

### height

```haxe
var height(default, null):Int
```

### debug

```haxe
var debug(default, set):Bool
```

### drawTriangles

```haxe
var drawTriangles(default, null):Float
```

### drawCalls

```haxe
var drawCalls(default, null):Int
```

### dispatches

```haxe
var dispatches(default, null):Int
```

### shaderSwitches

```haxe
var shaderSwitches(default, null):Int
```

### backgroundColor

```haxe
var backgroundColor:Null<Int>
```

### autoResize

```haxe
var autoResize:Bool
```

### fullScreen

```haxe
var fullScreen(default, set):Bool
```

### fps

```haxe
var fps(get, null):Float
```

### ready

```haxe
var ready(default, null):Bool
```

## Methods

### setDriver

```haxe
function setDriver(d:h3d.impl.Driver):Void
```

### setCurrent

```haxe
inline function setCurrent():Void
```

### init

```haxe
function init():Void
```

### driverName

```haxe
function driverName(?details:Bool = false):String
```

### selectShader

```haxe
function selectShader(shader:hxsl.RuntimeShader):Void
```

### selectMaterial

```haxe
function selectMaterial(pass:h3d.mat.Pass):Void
```

### uploadInstanceShaderBuffers

```haxe
function uploadInstanceShaderBuffers(buffers:h3d.shader.Buffers):Void
```

### uploadShaderBuffers

```haxe
function uploadShaderBuffers(buffers:h3d.shader.Buffers, which:h3d.shader.BufferKind):Void
```

### renderTriBuffer

```haxe
inline function renderTriBuffer(b:Buffer, ?start:Int = 0, ?max:Int = -1):Void
```

### renderQuadBuffer

```haxe
inline function renderQuadBuffer(b:Buffer, ?start:Int = 0, ?max:Int = -1):Void
```

### renderIndexed

```haxe
function renderIndexed(b:Buffer, indexes:Indexes, ?startTri:Int = 0, ?drawTri:Int = -1):Void
```

### renderMultiBuffers

```haxe
function renderMultiBuffers(format:hxd.MultiFormat, buffers:Array<Buffer>, indexes:Indexes, ?startTri:Int = 0, ?drawTri:Int = -1):Void
```

### renderInstanced

```haxe
function renderInstanced(indexes:Indexes, commands:h3d.impl.InstanceBuffer):Void
```

### onContextLost

```haxe
dynamic function onContextLost():Void
```

### onReady

```haxe
dynamic function onReady():Void
```

### onResized

```haxe
dynamic function onResized():Void
```

### resize

```haxe
function resize(width:Int, height:Int):Void
```

### begin

```haxe
function begin():Bool
```

### hasFeature

```haxe
function hasFeature(f:h3d.impl.Feature):Bool
```

### end

```haxe
function end():Void
```

### getCurrentTarget

```haxe
function getCurrentTarget():Null<Null<h3d.mat.Texture>>
```

### pushTarget

```haxe
function pushTarget(tex:h3d.mat.Texture, ?layer:Int = 0, ?mipLevel:Int = 0, ?depthBinding:DepthBinding = ReadWrite):Void
```

### pushTargets

```haxe
function pushTargets(textures:Array<h3d.mat.Texture>, ?depthBinding:DepthBinding = ReadWrite):Void
```

### pushDepth

```haxe
function pushDepth(depthBuffer:h3d.mat.Texture, ?layer:Int = 0):Void
```

### popTarget

```haxe
function popTarget():Void
```

### clearF

```haxe
function clearF(color:Vector4, ?depth:Float, ?stencil:Int):Void
```

### clear

```haxe
function clear(?color:Int, ?depth:Float, ?stencil:Int):Void
```

### setRenderZone

```haxe
function setRenderZone(?x:Int = 0, ?y:Int = 0, ?width:Int = -1, ?height:Int = -1):Void
```

* Sets up a scissored zone to eliminate pixels outside the given range.
* Call with no parameters to reset to full viewport.

### render

```haxe
function render(obj:{ render:(engine:Engine) -> Void }):Bool
```

### setDepthClamp

```haxe
function setDepthClamp(enabled:Bool):Void
```

### setDepthBias

```haxe
function setDepthBias(depthBias:Float, slopeScaledBias:Float):Void
```

### dispose

```haxe
function dispose():Void
```
