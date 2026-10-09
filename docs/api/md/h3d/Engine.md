# h3d.Engine

**class** · package [`h3d`](README.md) · source [`h3d/Engine.hx`](../../../../h3d/Engine.hx)

The 3D engine: it owns the graphics driver and the GPU memory manager, and manages the render targets and the frame.

There is a single engine, created by `hxd.App` and accessible with `h3d.Engine.getCurrent()` (or `engine` in an `hxd.App`).
It renders the scenes each frame with `render`, and offers render target management with `pushTarget` / `popTarget`.

```haxe
var engine = h3d.Engine.getCurrent();
engine.backgroundColor = 0xFF202040;
trace(engine.width + "x" + engine.height + " " + engine.drawCalls + " draw calls");
```

## Static variables

### SOFTWARE_DRIVER

```haxe
static var SOFTWARE_DRIVER:Bool
```

If `true`, the engine is created with a software driver (set before creating the engine).

### ANTIALIASING

```haxe
static var ANTIALIASING:Int
```

The number of samples of the multisampling antialiasing of the output (set before creating the engine).

## Static methods

### getCurrent

```haxe
static inline function getCurrent():Engine
```

Returns the current engine.

## Variables

### driver

```haxe
var driver(default, null):h3d.impl.Driver
```

The graphics driver (OpenGL, DirectX, WebGL...).

### mem

```haxe
var mem(default, null):h3d.impl.MemoryManager
```

The GPU memory manager.

### hardware

```haxe
var hardware(default, null):Bool
```

`true` if the driver is hardware accelerated.

### width

```haxe
var width(default, null):Int
```

The width of the output, in pixels.

### height

```haxe
var height(default, null):Int
```

The height of the output, in pixels.

### debug

```haxe
var debug(default, set):Bool
```

Enables the debug mode of the driver (more checks and error reports, slower).

### drawTriangles

```haxe
var drawTriangles(default, null):Float
```

The number of triangles drawn during the last frame.

### drawCalls

```haxe
var drawCalls(default, null):Int
```

The number of draw calls during the last frame.

### dispatches

```haxe
var dispatches(default, null):Int
```

The number of compute shader dispatches during the last frame.

### shaderSwitches

```haxe
var shaderSwitches(default, null):Int
```

The number of shader changes during the last frame.

### backgroundColor

```haxe
var backgroundColor:Null<Int>
```

The color (`0xAARRGGBB`) the output is cleared with at the beginning of each frame, or `null` to not clear it.

### autoResize

```haxe
var autoResize:Bool
```

If `true` (default), the output follows the window size.

### fullScreen

```haxe
var fullScreen(default, set):Bool
```

Displays the window in full screen (borderless) mode, on platforms with windows.

### fps

```haxe
var fps(get, null):Float
```

The smoothed number of frames rendered per second.

### ready

```haxe
var ready(default, null):Bool
```

`true` once the driver is initialized.

## Methods

### setDriver

```haxe
function setDriver(d:h3d.impl.Driver):Void
```

Replaces the graphics driver.

### setCurrent

```haxe
inline function setCurrent():Void
```

Makes this engine the current one.

### init

```haxe
function init():Void
```

Initializes the driver. `onReady` is called when it is ready. Done by `hxd.App`.

### driverName

```haxe
function driverName(?details:Bool = false):String
```

Returns the name of the driver (and details such as the GPU name if `details` is set).

### selectShader

```haxe
function selectShader(shader:hxsl.RuntimeShader):Void
```

Low level: selects the shader used by the next draw calls.

### selectMaterial

```haxe
function selectMaterial(pass:h3d.mat.Pass):Void
```

Low level: applies the render states of `pass` for the next draw calls.

### uploadInstanceShaderBuffers

```haxe
function uploadInstanceShaderBuffers(buffers:h3d.shader.Buffers):Void
```

Low level: uploads the per-object parameters, textures and buffers of the current shader.

### uploadShaderBuffers

```haxe
function uploadShaderBuffers(buffers:h3d.shader.Buffers, which:h3d.shader.BufferKind):Void
```

Low level: uploads a kind of shader buffers (globals, parameters, textures or buffers) of the current shader.

### renderTriBuffer

```haxe
inline function renderTriBuffer(b:Buffer, ?start:Int = 0, ?max:Int = -1):Void
```

Low level: draws a buffer of independent triangles (3 vertexes each).
- **param** `start` The first triangle.
- **param** `max` The number of triangles, or `-1` for all.

### renderQuadBuffer

```haxe
inline function renderQuadBuffer(b:Buffer, ?start:Int = 0, ?max:Int = -1):Void
```

Low level: draws a buffer of quads (4 vertexes each, as 2 triangles).
- **param** `start` The first triangle.
- **param** `max` The number of triangles, or `-1` for all.

### renderIndexed

```haxe
function renderIndexed(b:Buffer, indexes:Indexes, ?startTri:Int = 0, ?drawTri:Int = -1):Void
```

Low level: draws the triangles of a vertex buffer using an index buffer.
- **param** `startTri` The first triangle.
- **param** `drawTri` The number of triangles, or `-1` for all.

### renderMultiBuffers

```haxe
function renderMultiBuffers(format:hxd.MultiFormat, buffers:Array<Buffer>, indexes:Indexes, ?startTri:Int = 0, ?drawTri:Int = -1):Void
```

Low level: draws triangles whose vertex inputs come from several buffers.

### renderInstanced

```haxe
function renderInstanced(indexes:Indexes, commands:h3d.impl.InstanceBuffer):Void
```

Low level: draws instances with the given draw commands.

### onContextLost

```haxe
dynamic function onContextLost():Void
```

Called when the GPU context was lost and recreated: GPU resources without `realloc` must be recreated.

### onReady

```haxe
dynamic function onReady():Void
```

Called when the driver is initialized.

### onResized

```haxe
dynamic function onResized():Void
```

Called after the output was resized to follow the window.

### resize

```haxe
function resize(width:Int, height:Int):Void
```

Resizes the output (32x32 minimum).

### begin

```haxe
function begin():Bool
```

Starts a frame: resets the statistics and clears the output with `backgroundColor`. Returns `false` if the driver
cannot render. Called by `render`.

### hasFeature

```haxe
function hasFeature(f:h3d.impl.Feature):Bool
```

Tells if the driver supports the feature `f` (see `h3d.impl.Driver.Feature`).

### end

```haxe
function end():Void
```

Ends the frame and presents it. Called by `render`.

### getCurrentTarget

```haxe
function getCurrentTarget():Null<Null<h3d.mat.Texture>>
```

Returns the current render target, or `null` when rendering to the screen.

### pushTarget

```haxe
function pushTarget(tex:h3d.mat.Texture, ?layer:Int = 0, ?mipLevel:Int = 0, ?depthBinding:DepthBinding = ReadWrite):Void
```

Renders to the texture `tex` until the matching `popTarget`. The texture must have the `Target` flag.
- **param** `layer` The layer (cube face or array layer) to render to.
- **param** `mipLevel` The mip level to render to.
- **param** `depthBinding` How the depth buffer of the texture is used.

### pushTargets

```haxe
function pushTargets(textures:Array<h3d.mat.Texture>, ?depthBinding:DepthBinding = ReadWrite):Void
```

Renders to several textures at once (multiple render targets) until the matching `popTarget`.

### pushDepth

```haxe
function pushDepth(depthBuffer:h3d.mat.Texture, ?layer:Int = 0):Void
```

Renders only to a depth texture until the matching `popTarget`.

### popTarget

```haxe
function popTarget():Void
```

Restores the render target active before the last `pushTarget`.

### clearF

```haxe
function clearF(color:Vector4, ?depth:Float, ?stencil:Int):Void
```

Clears the current target with a float color, and optionally the depth and stencil.

### clear

```haxe
function clear(?color:Int, ?depth:Float, ?stencil:Int):Void
```

Clears the current target.
- **param** `color` The color in `0xAARRGGBB` format, or `null` to keep the color.
- **param** `depth` The depth value, or `null` to keep the depth.
- **param** `stencil` The stencil value, or `null` to keep the stencil.

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

Renders a frame: calls `begin`, `obj.render(this)` and `end`, and updates `fps`. Done every frame by `hxd.App`.

### setDepthClamp

```haxe
function setDepthClamp(enabled:Bool):Void
```

Enables the depth clamping of the next draw calls.

### setDepthBias

```haxe
function setDepthBias(depthBias:Float, slopeScaledBias:Float):Void
```

Sets the depth bias of the next draw calls (used against shadow acne).

### dispose

```haxe
function dispose():Void
```

Releases the driver and all the GPU resources.
