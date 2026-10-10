# h3d.impl.RendererFX

**interface** · package [`h3d.impl`](README.md) · source [`h3d/impl/RendererFX.hx`](../../../../../h3d/impl/RendererFX.hx)

Implemented by: [`h3d.pass.SSR`](../pass/SSR.md)

A rendering effect added to a renderer (see `h3d.scene.Renderer.effects`): it is called at the start of the frame and around each rendering step.

## Variables

### enabled

```haxe
var enabled:Bool
```

Tells if the effect is rendered.

## Methods

### start

```haxe
function start(r:h3d.scene.Renderer):Void
```

Called at the start of the frame.

### begin

```haxe
function begin(r:h3d.scene.Renderer, step:Step):Void
```

Called before a rendering step.

### end

```haxe
function end(r:h3d.scene.Renderer, step:Step):Void
```

Called after a rendering step.

### dispose

```haxe
function dispose():Void
```

Releases the effect.

### modulate

```haxe
function modulate(t:Float):RendererFX
```

Returns the effect with its intensity scaled by `t`, for the volumes that blend effects.

### transition

```haxe
function transition(r1:RendererFX, r2:RendererFX):RFXTransition
```

Returns a transition between two effects of this type.
