# h3d.scene.LightSystem

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/LightSystem.hx`](../../../../../h3d/scene/LightSystem.hx)

Subclasses: [`h3d.scene.fwd.LightSystem`](fwd/LightSystem.md), [`h3d.scene.pbr.LightSystem`](pbr/LightSystem.md)

Base class of the lighting setup used by a `Renderer`.

Every frame, the renderer calls `initLights` with the lights emitted during the scene sync, then
`computeLight` for each drawn object to add the light shaders it needs.
This base implementation does no lighting: see `h3d.scene.fwd.LightSystem` and `h3d.scene.pbr.LightSystem`.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty light system.

## Variables

### drawPasses

```haxe
var drawPasses:Int
```

Number of additional draw passes performed by the light system during the last frame (used for statistics).

### shadowLight

```haxe
var shadowLight:Light
```

The light used to cast the main shadow. If `null` (or disposed), `initLights` selects the first
light which returns a non-null `Light.getShadowDirection`.

## Methods

### initGlobals

```haxe
function initGlobals(globals:hxsl.Globals):Void
```

Called by the renderer to declare the shader globals required by this light system.

### initLights

```haxe
function initLights(ctx:RenderContext):Void
```

Called once per frame by the renderer before drawing, with the list of lights emitted in `ctx.lights`.
Selects the `shadowLight` if needed.

### computeLight

```haxe
function computeLight(obj:Object, shaders:hxsl.ShaderList):hxsl.ShaderList
```

Returns the shader list used to draw `obj`, with the light shaders affecting it prepended.
The base implementation returns `shaders` unchanged.

### dispose

```haxe
function dispose():Void
```

Releases the GPU resources allocated by this light system.
