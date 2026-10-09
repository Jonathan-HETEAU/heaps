# h3d.pass.SSR

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/SSR.hx`](../../../../../h3d/pass/SSR.hx)

Implements: [`h3d.impl.RendererFX`](../impl/RendererFX.md)

Screen space reflections for the PBR renderer: reflections are found by marching rays in the depth buffer, after the
forward passes. Add it to the renderer effects:

```haxe
s3d.renderer.effects.push(new h3d.pass.SSR());
```

## Constructor

### new

```haxe
function new():Void
```

Creates the effect.

## Variables

### enabled

```haxe
var enabled:Bool
```

Enables the effect.

### stepCount

```haxe
var stepCount:Int
```

The number of steps of each reflection ray: more steps are more precise but slower.

### fadeInExponent

```haxe
var fadeInExponent:Float
```

The exponent of the fade in of the reflections along the ray, near the reflecting surface (`0` to disable).

### fadeOutExponent

```haxe
var fadeOutExponent:Float
```

The exponent of the fade out of the reflections at the end of the ray (`0` to disable).

### depthTolerance

```haxe
var depthTolerance:Float
```

The maximum depth difference for a ray to hit a surface.

### distanceBias

```haxe
var distanceBias:Float
```

Increases the depth tolerance with the distance from the camera (`distanceBias * distance ^ distancePowerBias`).

### distancePowerBias

```haxe
var distancePowerBias:Float
```

The exponent of the distance used by `distanceBias`.

### marginSize

```haxe
var marginSize:Float
```

The size, relative to the screen, of the margin where the reflections fade out near the screen edges.

### debugEnabled

```haxe
var debugEnabled:Bool
```

Debug: displays the ray marched under the mouse cursor.

### debugRoughnessFactor

```haxe
var debugRoughnessFactor:Float
```

Debug: the roughness factor used for the debug display.

### debugIteration

```haxe
var debugIteration:Int
```

Debug: the iteration displayed.

### ssrResolve

```haxe
var ssrResolve:ScreenFx<h3d.shader.pbr.SSRResolve>
```

The pass combining the reflections with the lit image.

## Methods

### apply

```haxe
function apply(r:h3d.scene.pbr.Renderer):Void
```

Computes and applies the reflections. Called automatically after the forward passes.

### start

```haxe
function start(r:h3d.scene.Renderer):Void
```

See `h3d.impl.RendererFX.start`.

### begin

```haxe
function begin(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

See `h3d.impl.RendererFX.begin`.

### end

```haxe
function end(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

See `h3d.impl.RendererFX.end`. Applies the reflections after the `Forward` step.

### dispose

```haxe
function dispose():Void
```

See `h3d.impl.RendererFX.dispose`.

### modulate

```haxe
function modulate(t:Float):h3d.impl.RendererFX
```

See `h3d.impl.RendererFX.modulate`. Returns the effect unchanged.

### transition

```haxe
function transition(r1:h3d.impl.RendererFX, r2:h3d.impl.RendererFX):h3d.impl.RFXTransition
```

See `h3d.impl.RendererFX.transition`. Switches directly to `r2`.
