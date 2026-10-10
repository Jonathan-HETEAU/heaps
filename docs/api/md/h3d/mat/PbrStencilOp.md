# h3d.mat.PbrStencilOp

**enum abstract** · package [`h3d.mat`](README.md) · module `h3d.mat.PbrMaterial` · source [`h3d/mat/PbrMaterial.hx`](../../../../../h3d/mat/PbrMaterial.hx)

A stencil operation of a `PbrMaterial` (see `h3d.mat.Data.StencilOp`).

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Keep` | `"Keep"` | Keeps the stored value. |
| `Zero` | `"Zero"` | Sets the value to `0`. |
| `Replace` | `"Replace"` | Replaces the value with the reference value. |
| `Increment` | `"Increment"` | Increments the value, clamped to the maximum. |
| `IncrementWrap` | `"IncrementWrap"` | Increments the value, wrapping to `0`. |
| `Decrement` | `"Decrement"` | Decrements the value, clamped to `0`. |
| `DecrementWrap` | `"DecrementWrap"` | Decrements the value, wrapping to the maximum. |
| `Invert` | `"Invert"` | Inverts the bits of the value. |
