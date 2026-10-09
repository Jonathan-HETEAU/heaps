# h3d.scene.fwd.Renderer

**class** · package [`h3d.scene.fwd`](README.md) · source [`h3d/scene/fwd/Renderer.hx`](../../../../../../h3d/scene/fwd/Renderer.hx)

Extends: [`h3d.scene.Renderer`](../Renderer.md) → [`hxd.impl.AnyProps`](../../../hxd/impl/AnyProps.md)

The forward renderer, used by default (see `h3d.mat.MaterialSetup`).

Objects are drawn directly to the output with their lights (see `LightSystem`), in this order:
the `"shadow"`, `"depth"` and `"normal"` passes to their textures if used, then the `"default"`, `"alpha"`
(sorted back to front) and `"additive"` passes.

## Constructor

### new

```haxe
function new():Void
```

Creates the renderer.

## Variables

### depth

```haxe
var depth:h3d.pass.Output
```

The pass rendering the `"depth"` objects.

### normal

```haxe
var normal:h3d.pass.Output
```

The pass rendering the `"normal"` objects.

### shadow

```haxe
var shadow:h3d.pass.DefaultShadowMap
```

The shadow map of the shadow light (1024x1024 pixels).

## Methods

### getPassByName

```haxe
override function getPassByName(name:String):h3d.pass.Output
```

## Inherited members

- from [`h3d.scene.Renderer`](../Renderer.md): `effects`, `renderMode`, `shadows`, `getEffect`, `dispose`, `addShader`, `getPass`, `getPassByName`, `start`, `startEffects`, `process`, `computeDispatch`
- from [`hxd.impl.AnyProps`](../../../hxd/impl/AnyProps.md): `props`, `setDefaultProps`, `getDefaultProps`, `loadProps`, `refreshProps`
