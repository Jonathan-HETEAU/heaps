# h3d.pass.RenderMode

**enum** · package [`h3d.pass`](README.md) · module `h3d.pass.Shadows` · source [`h3d/pass/Shadows.hx`](../../../../../h3d/pass/Shadows.hx)

How the shadow map of a light is computed.

## Constructors

### None

```haxe
None
```

No shadows.

### Static

```haxe
Static
```

The shadows are computed once (see `h3d.scene.Scene.computeStatic`) or loaded from baked data: only static objects cast shadows.

### Dynamic

```haxe
Dynamic
```

The shadows are rendered every frame.

### Mixed

```haxe
Mixed
```

The static shadows are combined with shadows rendered every frame for dynamic objects.
