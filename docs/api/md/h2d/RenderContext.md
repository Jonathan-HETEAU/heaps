# h2d.RenderContext

**class** · package [`h2d`](README.md) · source [`h2d/RenderContext.hx`](../../../../h2d/RenderContext.hx)

Extends: [`h3d.impl.RenderContext`](../h3d/impl/RenderContext.md)

A 2D scene renderer.

Passed during `Object.sync` and `Object.drawRec` and can be accessed directly via `Scene.renderer`.

## Constructor

### new

```haxe
function new(scene:Scene):Void
```

Create a new RenderContext and attach it to specified Scene.
- **param** `scene` The scene which RenderContext will render.

## Variables

### globalAlpha

```haxe
var globalAlpha:Float
```

Current transparency value used for rendering objects.
Automatically managed by `Object`.

### scene

```haxe
var scene:Scene
```

The 2D scene attached to this RenderContext instance.

### defaultSmooth

```haxe
var defaultSmooth:Bool
```

<span class="label">Internal usage</span>

Determines texture filtering method (Linear or Nearest).
Not recommended to use - assign `Scene.defaultSmooth` instead.

### killAlpha

```haxe
var killAlpha:Bool
```

When enabled, pixels with alpha value below 0.001 will be discarded.

### front2back

```haxe
var front2back:Bool
```

When enabled, causes `Object` to render its children in reverse order.

### onBeginDraw

```haxe
var onBeginDraw:() -> Bool
```

Sent before Drawable is rendered.
Drawable won't be rendered if callback returns `false`.

### onEnterFilter

```haxe
var onEnterFilter:() -> Bool
```

Sent before filter begins rendering.
Filter (and it's object tree) won't be rendered if callback returns `false`.

### onLeaveFilter

```haxe
var onLeaveFilter:() -> Void
```

Send after filter has been rendered.

### currentCamera

```haxe
var currentCamera(default, null):Null<Camera>
```

The camera instance that is currently being rendered, if present, `null` otherwise.

## Methods

### dispose

```haxe
override function dispose():Void
```

### begin

```haxe
function begin():Void
```

<span class="label">Internal usage</span>

Prepares RenderContext to begin rendering a new frame.

### allocTarget

```haxe
function allocTarget(name:String, ?filter:Bool = false):h3d.mat.Texture
```

Allocated a cached render target Texture with specified name, filter mode and current `Scene.width` and `Scene.height`.
- **returns** s Either precached Texture under same name or newly allocated one.

### clear

```haxe
function clear(color:Null<Int>):Void
```

Clears current render target with specified color.

### end

```haxe
function end():Void
```

<span class="label">Internal usage</span>

Performers cleanup after frame is rendered.

### pushCamera

```haxe
function pushCamera(cam:Camera):Void
```

<span class="label">Internal usage</span>

Applies Camera `cam` transform to current viewport and pushes it onto the camera stack.
Should call `RenderContext.popCamera` when rendering is complete.

### popCamera

```haxe
function popCamera():Void
```

<span class="label">Internal usage</span>

Restores previous viewport state prior to camera rendering, removing it from the camera stack.

### pushFilter

```haxe
function pushFilter(spr:Object):Bool
```

<span class="label">Internal usage</span>

Prepares to render Filter and pushes provided Object onto filter stack.

- **returns** s true if filter is allowed to render, false otherwise (see `RenderContext.onEnterFilter`)

### setFilterScale

```haxe
function setFilterScale(scaleX:Float, scaleY:Float):Void
```

<span class="label">Internal usage</span>

Sets the current filter texture resolution scale factor.

### getFilterScale

```haxe
function getFilterScale(?into:h2d.col.Point):Null<h2d.col.Point>
```

Retrieves the current filter scale factor.

- **param** `into` The 2D Point instance into which the scale is written. Creates a new Point if null.
- **returns** s The current filter resolution scale or `{ 1, 1 }` point.

### popFilter

```haxe
function popFilter():Void
```

<span class="label">Internal usage</span>

Finalizes Filter rendering and removes top-most Object from filter stack.

### pushTarget

```haxe
function pushTarget(t:h3d.mat.Texture, ?startX:Int = 0, ?startY:Int = 0, ?width:Int = -1, ?height:Int = -1):Void
```

Sets provided texture as a render target and pushes it onto target stack.
If only part of the Texture should be rendered onto, method should be used with `pushRenderZone()` to avoid rendering outside specified texture area.

- **param** `t` Texture to which RenderContext will render to. Texture should be allocated as a render target (have `Target` flag).
- **param** `startX` X offset of rendering area on the Texture.
- **param** `startY` Y offset of rendering area on the Texture.
- **param** `width` Width of the clipping area on the Texture. If equals to `-1`, will use texture width.
- **param** `height` Height of the clipping area on the Texture. If equals to `-1` will use texture height.

### pushTargets

```haxe
function pushTargets(texs:Array<h3d.mat.Texture>):Void
```

Pushes an array of render targets onto target stack.

### popTarget

```haxe
function popTarget():Void
```

Pops current render target from the target stack.
If last texture was removed from the stack, will restore the primary render buffer as a render target.

### pushRenderZone

```haxe
function pushRenderZone(x:Float, y:Float, w:Float, h:Float):Void
```

Sets rectangular render zone area, saving previous render zone settings.
To respect previous render zone area, use `RenderContext.clipRenderZone` method.

`RenderContext.popRenderZone` should be called afterwards to clear render zone stack.

### popRenderZone

```haxe
function popRenderZone():Void
```

Restores previous render zone settings.

### getCurrentRenderZone

```haxe
function getCurrentRenderZone(?bounds:h2d.col.Bounds):Null<h2d.col.Bounds>
```

Returns the current render zone in `bounds` (or new bounds), or `null` if there is none.

### clipRenderZone

```haxe
function clipRenderZone(x:Float, y:Float, w:Float, h:Float):Void
```

Pushes new render zone with respect to the old render zone settings by clipping new and old render zones,
pushing the intersection area result.
Used so that any call to the clipRenderZone respects the already set zone, and can't render outside of it.

### drawScene

```haxe
function drawScene():Void
```

Renders the assigned Scene. Same as `s2d.drawRec(s2d.renderer)`.

### beforeDraw

```haxe
function beforeDraw():Void
```

<span class="label">Internal usage</span>

Should be called before performing a new draw call in order to sync shader data and other parameters.

### beginDrawBatchState

```haxe
function beginDrawBatchState(obj:Drawable):Bool
```

Prepares rendering with BatchState.
Each state draw should be preceded with `swapTexture` call.

### swapTexture

```haxe
inline function swapTexture(texture:h3d.mat.Texture):Void
```

Swap current active texture and prepares for next drawcall.

### beginDrawObject

```haxe
function beginDrawObject(obj:Drawable, texture:h3d.mat.Texture):Bool
```

Prepares rendering of the Drawable object with specified texture.
- **returns** s true if rendering is prepared, false otherwise (see `RenderContext.onBeginDraw`)

### drawTile

```haxe
function drawTile(obj:Drawable, tile:Tile):Bool
```

Renders a Tile with the transform of the given Drawable.

- **returns** s `true` if tile was drawn, `false` otherwise.
Tile is not drawn if it's either outside of the rendering area or was cancelled by `RenderContext.onBeginDraw`.

### setCurrent

```haxe
override function setCurrent():Void
```

## Inherited members

- from [`h3d.impl.RenderContext`](../h3d/impl/RenderContext.md): `engine`, `time`, `elapsedTime`, `frame`, `textures`, `globals`, `shaderBuffers`, `setCurrent`, `clearCurrent`, `dispose`, `getParamValue`, `fillGlobals`, `fillParams`
