# h3d.scene.pbr.Renderer

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/Renderer.hx`](../../../../../../h3d/scene/pbr/Renderer.hx)

Extends: [`h3d.scene.Renderer`](../Renderer.md) → [`hxd.impl.AnyProps`](../../../hxd/impl/AnyProps.md)

The physically based deferred renderer. Enable it before creating the scene with `h3d.mat.PbrMaterialSetup.set()`.

Each frame it renders the opaque objects into a G-buffer (albedo, normal, metalness/roughness/occlusion, emissive, depth),
applies the decals, renders the shadow maps and computes the lighting (environment `env` and lights) into an HDR texture, draws the
`"forward"` and `"forwardAlpha"` passes, then tone maps the result (`toneMode`, `exposure`) and applies FXAA.
`h3d.impl.RendererFX` effects can be inserted at each step (see `effects`).

```haxe
h3d.mat.PbrMaterialSetup.set();
// in hxd.App.init:
var env = new h3d.scene.pbr.Environment(hxd.Res.sky.toTexture());
env.compute();
var renderer = cast(s3d.renderer, h3d.scene.pbr.Renderer);
renderer.env = env;
```

## Constructor

### new

```haxe
function new(?env:Environment):Void
```

Creates the renderer. It is usually created by `h3d.mat.PbrMaterialSetup`.
- **param** `env` The environment, see `env`.

## Static variables

### LIGHTMAP_STENCIL

```haxe
static final LIGHTMAP_STENCIL:Int
```

The stencil bit marking the pixels already lit by a volumetric light map, so that the environment lighting skips them.

## Variables

### skyMode

```haxe
var skyMode:SkyMode
```

The sky mode, set from `RenderProps.sky` by `refreshProps`.

### toneMode

```haxe
var toneMode:TonemapMap
```

The tone mapping operator, set from `RenderProps.tone` by `refreshProps`.

### displayMode

```haxe
var displayMode:DisplayMode
```

The display mode, set from `RenderProps.mode` by `refreshProps`.

### env

```haxe
var env:Environment
```

The environment used for the indirect lighting and the sky. If `null` or with a `power` of 0, there is no
environment lighting.

### exposure

```haxe
var exposure(get, set):Float
```

The exposure, set from `RenderProps.exposure` by `refreshProps`: colors are multiplied by `exp(exposure)`.

### enableTransparency

```haxe
var enableTransparency:Bool
```

If `true`, the output keeps the alpha of the scene so that it can be composed over other content
(for instance a transparent canvas or an editor view).

## Methods

### addShader

```haxe
override function addShader(s:hxsl.Shader):Void
```

### getPassByName

```haxe
override function getPassByName(name:String):h3d.pass.Output
```

### start

```haxe
override function start():Void
```

### updateHZB

```haxe
function updateHZB(?max:Bool = true):Void
```

Builds the hierarchical depth buffer of the current depth into `RenderContext.hzb`, used for GPU occlusion culling.
- **param** `max` If `true`, each mip level keeps the farthest depth of the pixels it covers (conservative for occlusion).

### buildHZB

```haxe
function buildHZB(max:Bool, name:String):h3d.mat.Texture
```

Builds a hierarchical depth buffer (a mipmapped depth texture) from the current depth and returns it.
- **param** `max` If `true`, each mip level keeps the maximum depth, otherwise the minimum.
- **param** `name` The name of the render target.

### getPbrDepth

```haxe
function getPbrDepth():h3d.mat.Texture
```

### getDefaultProps

```haxe
override function getDefaultProps(?kind:String):Any
```

### refreshProps

```haxe
override function refreshProps():Void
```

## Inherited members

- from [`h3d.scene.Renderer`](../Renderer.md): `effects`, `renderMode`, `shadows`, `getEffect`, `dispose`, `addShader`, `getPass`, `getPassByName`, `start`, `startEffects`, `process`, `computeDispatch`
- from [`hxd.impl.AnyProps`](../../../hxd/impl/AnyProps.md): `props`, `setDefaultProps`, `getDefaultProps`, `loadProps`, `refreshProps`
