# h3d.mat.PbrDepthTest

**enum abstract** · package [`h3d.mat`](README.md) · module `h3d.mat.PbrMaterial` · source [`h3d/mat/PbrMaterial.hx`](../../../../../h3d/mat/PbrMaterial.hx)

The depth test of a `PbrMaterial` (see `h3d.mat.Data.Compare`).

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Less` | `"Less"` | Passes if the depth is less than the stored depth. |
| `LessEqual` | `"LessEqual"` | Passes if the depth is less than or equal to the stored depth. |
| `Greater` | `"Greater"` | Passes if the depth is greater than the stored depth. |
| `GreaterEqual` | `"GreaterEqual"` | Passes if the depth is greater than or equal to the stored depth. |
| `Always` | `"Always"` | Always passes. |
| `Never` | `"Never"` | Never passes. |
| `Equal` | `"Equal"` | Passes if the depth is equal to the stored depth. |
| `NotEqual` | `"NotEqual"` | Passes if the depth is not equal to the stored depth. |
