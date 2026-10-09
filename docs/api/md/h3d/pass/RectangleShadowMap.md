# h3d.pass.RectangleShadowMap

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/RectangleShadowMap.hx`](../../../../../h3d/pass/RectangleShadowMap.hx)

Extends: [`h3d.pass.ProjectedShadowMap`](ProjectedShadowMap.md) → [`h3d.pass.Shadows`](Shadows.md) → [`h3d.pass.Output`](Output.md)

The shadow map of a `h3d.scene.pbr.RectangleLight`: a perspective projection from the light.

## Constructor

### new

```haxe
function new(light:h3d.scene.Light):Void
```

## Inherited members

- from [`h3d.pass.ProjectedShadowMap`](ProjectedShadowMap.md): `getShadowTex`, `saveStaticData`, `loadStaticData`, `draw`, `computeStatic`
- from [`h3d.pass.Shadows`](Shadows.md): `enabled`, `mode`, `size`, `shader`, `blur`, `samplingKind`, `power`, `bias`, `pcfScale`, `dispose`, `getShadowView`, `getShadowProj`, `getShadowViewProj`, `getShadowTex`, `loadStaticData`, `saveStaticData`, `computeStatic`, `hasStaticShadow`, `needStaticUpdate`, `debug`
- from [`h3d.pass.Output`](Output.md): `name`, `setContext`, `dispose`, `draw`
