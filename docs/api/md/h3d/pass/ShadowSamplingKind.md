# h3d.pass.ShadowSamplingKind

**enum abstract** · package [`h3d.pass`](README.md) · module `h3d.pass.Shadows` · source [`h3d/pass/Shadows.hx`](../../../../../h3d/pass/Shadows.hx)

How the shadow map is sampled when drawing the lit objects.

Underlying type: `Int`

Implicit casts to: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `None` | `0` | A single depth comparison (hard shadows). |
| `ESM` | `1` | Exponential shadow maps: soft shadows controlled by `Shadows.power`. |
| `PCF` | `2` | Percentage closer filtering: soft shadows averaging several samples, with a radius of `Shadows.pcfScale` pixels. |
