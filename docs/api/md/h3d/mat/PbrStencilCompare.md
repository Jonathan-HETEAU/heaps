# h3d.mat.PbrStencilCompare

**enum abstract** · package [`h3d.mat`](README.md) · module `h3d.mat.PbrMaterial` · source [`h3d/mat/PbrMaterial.hx`](../../../../../h3d/mat/PbrMaterial.hx)

A stencil test of a `PbrMaterial` (see `h3d.mat.Data.Compare`).

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Always` | `"Always"` | Always passes. |
| `Never` | `"Never"` | Never passes. |
| `Equal` | `"Equal"` | Passes if the reference value is equal to the stored value. |
| `NotEqual` | `"NotEqual"` | Passes if the reference value is not equal to the stored value. |
| `Greater` | `"Greater"` | Passes if the reference value is greater than the stored value. |
| `GreaterEqual` | `"GreaterEqual"` | Passes if the reference value is greater than or equal to the stored value. |
| `Less` | `"Less"` | Passes if the reference value is less than the stored value. |
| `LessEqual` | `"LessEqual"` | Passes if the reference value is less than or equal to the stored value. |
