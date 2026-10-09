# h3d.pass.CapsuleShadowMap

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/CapsuleShadowMap.hx`](../../../../../h3d/pass/CapsuleShadowMap.hx)

Extends: [`h3d.pass.CubeShadowMap`](CubeShadowMap.md) → [`h3d.pass.Shadows`](Shadows.md) → [`h3d.pass.Output`](Output.md)

The shadow map of a `h3d.scene.pbr.CapsuleLight`: a cube shadow map rendered from the light center.

## Constructor

### new

```haxe
function new(light:h3d.scene.Light):Void
```

Creates the shadow map of `light`.

## Methods

### getShadowTex

```haxe
override function getShadowTex():hxsl.Texture
```

## Inherited members

- from [`h3d.pass.CubeShadowMap`](CubeShadowMap.md): `faceMask`, `dispose`, `saveStaticData`, `loadStaticData`, `draw`, `computeStatic`
- from [`h3d.pass.Shadows`](Shadows.md): `enabled`, `mode`, `size`, `shader`, `blur`, `samplingKind`, `power`, `bias`, `pcfScale`, `dispose`, `getShadowView`, `getShadowProj`, `getShadowViewProj`, `getShadowTex`, `loadStaticData`, `saveStaticData`, `computeStatic`, `hasStaticShadow`, `needStaticUpdate`, `debug`
- from [`h3d.pass.Output`](Output.md): `name`, `setContext`, `dispose`, `draw`
