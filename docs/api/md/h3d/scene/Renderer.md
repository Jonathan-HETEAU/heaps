# h3d.scene.Renderer

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Renderer.hx`](../../../../../h3d/scene/Renderer.hx)

Extends: [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md)

Subclasses: [`h3d.scene.fwd.Renderer`](fwd/Renderer.md), [`h3d.scene.pbr.Renderer`](pbr/Renderer.md)

Base class of the scene renderers.

Each frame, the `Scene` syncs its objects, sorts the emitted draw passes by pass name into `PassObjects` and calls
`process`. The renderer then decides in which order and to which render targets each pass name is drawn, and
applies the post-processing `effects`.
This class only provides the helpers: the concrete renderers are `h3d.scene.fwd.Renderer` (forward, the default)
and `h3d.scene.pbr.Renderer` (physically based). The active renderer is created by `h3d.mat.MaterialSetup.current`.

## Constructor

### new

```haxe
function new():Void
```

Creates the renderer and initializes its properties with `getDefaultProps()`.

## Variables

### effects

```haxe
var effects:Array<h3d.impl.RendererFX>
```

The renderer effects (post processes and render hooks) applied in order during the frame.
See `h3d.impl.RendererFX`.

### renderMode

```haxe
var renderMode:RenderMode
```

The rendering mode. `LightProbe` is used while baking light probes: the PBR renderer then only renders the
diffuse lighting and uses the environment map as sky.

### shadows

```haxe
var shadows:Bool
```

Enables shadow casting. When `false`, the shadow passes are not drawn.

## Methods

### getEffect

```haxe
function getEffect(cl:Class<getEffect.T>):getEffect.T
```

Returns the first effect of `effects` which is an instance of `cl`, or `null` if there is none.

### dispose

```haxe
function dispose():Void
```

Disposes the render passes, effects and light system resources of this renderer.

### addShader

```haxe
function addShader(s:hxsl.Shader):Void
```

Inject a post process shader for the current frame. Shaders are reset after each render.

### getPass

```haxe
function getPass(c:Class<getPass.T>):getPass.T
```

Returns the first render pass which is an instance of `c`, or `null` if there is none.

### getPassByName

```haxe
function getPassByName(name:String):h3d.pass.Output
```

Returns the render pass named `name`, or `null` if there is none.

### start

```haxe
function start():Void
```

Called by the `Scene` at the beginning of the frame, before objects are synchronized and emitted.

### startEffects

```haxe
function startEffects():Void
```

Calls `RendererFX.start` on each enabled effect. Called by the `Scene` right after `start`.

### process

```haxe
function process(passes:Array<PassObjects>):Void
```

Renders the frame from the draw passes emitted by the scene objects. Called by `Scene.render`.
Calls `computeStatic` instead of `render` when `RenderContext.computingStatic` is set (see `Scene.computeStatic`).

### computeDispatch

```haxe
function computeDispatch(shader:Null<hxsl.Shader>, ?x:Int = 1, ?y:Int = 1, ?z:Int = 1):Void
```

Dispatches a compute shader with the given number of work groups. Requires a driver supporting compute shaders.

## Inherited members

- from [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md): `props`, `setDefaultProps`, `getDefaultProps`, `loadProps`, `refreshProps`
