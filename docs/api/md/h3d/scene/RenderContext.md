# h3d.scene.RenderContext

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/RenderContext.hx`](../../../../../h3d/scene/RenderContext.hx)

Extends: [`h3d.impl.RenderContext`](../impl/RenderContext.md)

The per-frame state of a 3D `Scene` rendering, shared by the scene objects, the `Renderer` and the render passes.

Each frame, `Scene.render` calls `start`, syncs the objects (which `emit` the passes of their materials and their lights),
hands the emitted passes to the renderer and calls `done`.
It also holds the shader globals (`camera.*`, `global.*`), which can be read and changed with `getGlobal` and `setGlobal`.
Accessible from objects in `Object.sync`, `Object.emit` and `Object.draw`, and from the scene as `s3d.ctx`.

## Constructor

### new

```haxe
function new(scene:Scene):Void
```

Creates the render context of a scene. Done by the `Scene` itself.

## Variables

### camera

```haxe
var camera(default, null):h3d.Camera
```

The camera used for the current frame: a copy of `Scene.camera` made in `start`. Use `setCamera` to change it.

### scene

```haxe
var scene(default, null):Scene
```

The scene being rendered.

### drawPass

```haxe
var drawPass:h3d.pass.PassObject
```

The pass currently being drawn, set by the render passes before calling `Object.draw`.

### pbrLightPass

```haxe
var pbrLightPass:h3d.mat.Pass
```

The material pass used by the PBR lights to emit their light volumes. Set by `h3d.scene.pbr.Renderer`.

### computingStatic

```haxe
var computingStatic:Bool
```

`true` while computing static data, such as static shadow maps (see `Scene.computeStatic`).

### computeVelocity

```haxe
var computeVelocity:Bool
```

When set, objects keep their previous frame transform so that a velocity buffer can be rendered
(used by temporal effects such as TAA or motion blur). Reset to `false` at the end of each frame.

### enableTranslucency

```haxe
var enableTranslucency:Bool
```

Enables the translucency output of the PBR renderer (an additional G-buffer texture used by translucent materials).

### useReverseDepth

```haxe
var useReverseDepth:Bool
```

Uses a reversed depth buffer (1 near, 0 far), which improves depth precision. Applied to the camera in `setCamera`.

### renderResolutionWidth

```haxe
var renderResolutionWidth:Int
```

The width of the rendering, in pixels. Set to the engine width in `start`, see `setRenderResolution`.

### renderResolutionHeight

```haxe
var renderResolutionHeight:Int
```

The height of the rendering, in pixels. Set to the engine height in `start`, see `setRenderResolution`.

### lightSystem

```haxe
var lightSystem:LightSystem
```

The light system of the scene, used by the render passes to add the light shaders.

### extraShaders

```haxe
var extraShaders:hxsl.ShaderList
```

Shaders added to every object drawn by the render passes, in addition to their material shaders.

### visibleFlag

```haxe
var visibleFlag:Bool
```

`false` while syncing the children of an invisible or culled object. Objects use it to skip work, such as
updating animations, unless `Object.alwaysSyncAnimation` is set.

### debugCulling

```haxe
var debugCulling:Bool
```

Debug flag set by `h3d.impl.Benchmark`. It is not read by Heaps itself and can be used by custom objects to display culling information.

### wasContextLost

```haxe
var wasContextLost:Bool
```

`true` during the first frame rendered after the GPU context was lost and restored (see `Scene.onContextLost`).

### cullingCollider

```haxe
var cullingCollider:h3d.col.Collider
```

The culling collider inherited from the parent objects during sync (see `Object.cullingCollider`).

### forcedScreenRatio

```haxe
var forcedScreenRatio:Float
```

If not negative, the screen ratio used by meshes to select their level of detail instead of computing it.
Set by a `Mesh` with `inheritLod` so that its children use the same level of detail. Reset at the beginning of each frame.

### meshLodScale

```haxe
var meshLodScale:Float
```

A multiplier applied to the screen ratio of meshes when selecting their level of detail: lower values select
lower details sooner.

### hzb

```haxe
var hzb:h3d.mat.Texture
```

The hierarchical depth buffer (HZB) built by the PBR renderer, used for GPU occlusion culling.

### numViews

```haxe
var numViews:Int
```

The number of views rendered in the current frame. Reset to 1 in `start`.

### currentView

```haxe
var currentView:View
```

The view currently rendered. Its frustum is the camera frustum, unless a pass renders from another view.

### prevCamera

```haxe
var prevCamera:h3d.Camera
```

The camera of the previous frame, used to compute velocities.

### prevWorldDelta

```haxe
var prevWorldDelta:h3d.Vector
```

If set, the world origin offset between the previous and current frame, used by temporal effects when the world
is rebased. Reset at the end of each frame.

## Methods

### setCamera

```haxe
function setCamera(cam:h3d.Camera):Void
```

Copies `cam` into `camera` and updates the camera shader globals. The previous camera is kept in `prevCamera`.

### setRenderResolution

```haxe
function setRenderResolution(width:Int, height:Int):Void
```

Sets the rendering resolution and the `global.pixelSize` shader global.

### updateNumViews

```haxe
function updateNumViews(numViews:Int):Void
```

Sets the number of views rendered in the current frame.

### setCurrentView

```haxe
function setCurrentView(viewIdx:Int, viewFrustum:h3d.col.Frustum):Void
```

Sets the view currently rendered and its culling frustum.

### setupTarget

```haxe
function setupTarget():Void
```

Updates the `camera.projFlip` global according to the current render target: needed on drivers using
bottom-left texture coordinates when rendering to a texture.

### emit

```haxe
inline function emit(mat:h3d.mat.Material, obj:Object, ?index:Int = 0):Void
```

Emits the passes of material `mat` for object `obj`, so that they are drawn this frame.
Called by objects in their `Object.emit` implementation.
- **param** `index` The index of the material in the object (for instance a material group of a `MultiMaterial`).

### start

```haxe
function start():Void
```

Starts a new frame: resets the emitted passes and lights, advances `time` and `frame`, and copies the scene camera.
Called by `Scene.render`.

### nextPass

```haxe
inline function nextPass():Void
```

Resets the shader list cache before rendering the next pass.

### getGlobal

```haxe
inline function getGlobal(name:String):Dynamic
```

Returns the value of the shader global `name` (for instance `"global.time"`).

### setGlobal

```haxe
inline function setGlobal(name:String, v:Dynamic):Void
```

Sets the value of the shader global `name`.

### emitPass

```haxe
function emitPass(pass:h3d.mat.Pass, obj:Object):h3d.pass.PassObject
```

Emits a single material pass for object `obj` and returns the allocated pass object.

### allocShaderList

```haxe
function allocShaderList(s:hxsl.Shader, ?next:hxsl.ShaderList):hxsl.ShaderList
```

Returns a shader list node from the frame cache (to avoid allocations), holding `s` followed by `next`.

### computeList

```haxe
function computeList(list:hxsl.ShaderList):Void
```

Sets the list of compute shaders to run with the next `computeDispatch` called without shader.

### memoryBarrier

```haxe
function memoryBarrier():Void
```

Inserts a GPU memory barrier, so that the writes of the previous compute dispatches are visible to the next ones.

### computeDispatch

```haxe
function computeDispatch(?shader:hxsl.Shader, ?x:Int = 1, ?y:Int = 1, ?z:Int = 1, ?barrier:Bool = true):Void
```

Runs a compute shader, or the shaders set by `computeList`, with the given number of work groups (at most 65535 per axis).
Can be called outside of a frame rendering: the context is then started and ended around the dispatch.
- **param** `barrier` Inserts a memory barrier after the dispatch.

### emitLight

```haxe
function emitLight(l:Light):Void
```

Adds a light to the lights of the current frame. Called by `Light.emit`.

### getCameraFrustumBuffer

```haxe
function getCameraFrustumBuffer():h3d.Buffer
```

Returns a GPU buffer containing the 6 planes of the camera frustum (left, right, top, bottom, far, near),
uploaded once per frame. Used for GPU culling.

### getDepthClearValue

```haxe
function getDepthClearValue():Float
```

Returns the value to clear the depth buffer with: `0` with reverse depth, `1` otherwise.

### selectTextureHandles

```haxe
function selectTextureHandles(handles:Array<h3d.mat.TextureHandle>):Void
```

Binds bindless texture handles for the next draws (requires a driver supporting them).

### selectBufferHandles

```haxe
function selectBufferHandles(handles:Array<h3d.BufferHandle>):Void
```

Binds bindless buffer handles for the next draws (requires a driver supporting them).

### uploadParams

```haxe
function uploadParams():Void
```

Uploads the shader parameters of the current `drawPass`. Call it after changing shader parameters inside `Object.draw`.

### done

```haxe
function done():Void
```

Ends the frame: recycles the emitted passes and stores the camera matrices for the next frame. Called by `Scene.render`.

### dispose

```haxe
override function dispose():Void
```

## Inherited members

- from [`h3d.impl.RenderContext`](../impl/RenderContext.md): `engine`, `time`, `elapsedTime`, `frame`, `textures`, `globals`, `shaderBuffers`, `setCurrent`, `clearCurrent`, `dispose`, `getParamValue`, `fillGlobals`, `fillParams`
