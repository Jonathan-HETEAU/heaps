# h3d.impl.RFXTransition

**typedef** · package [`h3d.impl`](README.md) · module `h3d.impl.RendererFX` · source [`h3d/impl/RendererFX.hx`](../../../../../h3d/impl/RendererFX.hx)

A transition between two effects, created by `RendererFX.transition`.

## Fields

### setFactor

```haxe
var setFactor:(t:Float) -> Void
```

Sets the progress of the transition, from `0` to `1`.

### effect

```haxe
var effect:RendererFX
```

The effect rendered during the transition.

### dispose

```haxe
var ?dispose:Null<() -> Void>
```

Releases the transition.
