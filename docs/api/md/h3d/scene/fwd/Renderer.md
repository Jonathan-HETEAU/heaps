# h3d.scene.fwd.Renderer

**class** · package [`h3d.scene.fwd`](README.md) · source [`h3d/scene/fwd/Renderer.hx`](../../../../../../h3d/scene/fwd/Renderer.hx)

Extends: [`h3d.scene.Renderer`](../Renderer.md) → [`hxd.impl.AnyProps`](../../../hxd/impl/AnyProps.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### depth

```haxe
var depth:h3d.pass.Output
```

### normal

```haxe
var normal:h3d.pass.Output
```

### shadow

```haxe
var shadow:h3d.pass.DefaultShadowMap
```

## Methods

### getPassByName

```haxe
override function getPassByName(name:String):h3d.pass.Output
```

## Inherited members

- from [`h3d.scene.Renderer`](../Renderer.md): `effects`, `renderMode`, `shadows`, `getEffect`, `dispose`, `addShader`, `getPass`, `getPassByName`, `start`, `startEffects`, `process`, `computeDispatch`
- from [`hxd.impl.AnyProps`](../../../hxd/impl/AnyProps.md): `props`, `setDefaultProps`, `getDefaultProps`, `loadProps`, `refreshProps`
