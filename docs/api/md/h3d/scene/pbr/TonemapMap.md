# h3d.scene.pbr.TonemapMap

**enum abstract** · package [`h3d.scene.pbr`](README.md) · module `h3d.scene.pbr.Renderer` · source [`h3d/scene/pbr/Renderer.hx`](../../../../../../h3d/scene/pbr/Renderer.hx)

The tone mapping operators converting the HDR lighting to displayable colors.

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Linear` | `"Linear"` | No tone mapping: colors are clamped. |
| `Reinhard` | `"Reinhard"` | Reinhard operator: compresses the high values smoothly. |
| `Filmic` | `"Filmic"` | Filmic curve, configured by the `a` to `e` properties of `RenderProps` (ACES approximation by default). |
| `KhronosNeutral` | `"KhronosNeutral"` | Khronos PBR Neutral operator, which preserves the hue and saturation of the base colors. |
