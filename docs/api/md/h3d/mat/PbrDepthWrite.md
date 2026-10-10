# h3d.mat.PbrDepthWrite

**enum abstract** · package [`h3d.mat`](README.md) · module `h3d.mat.PbrMaterial` · source [`h3d/mat/PbrMaterial.hx`](../../../../../h3d/mat/PbrMaterial.hx)

The depth write of a `PbrMaterial`: `Default` writes depth only for opaque blend modes.

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Default` | `"Default"` | Writes the depth only when the blend mode is `None`. |
| `On` | `"On"` | Always writes the depth. |
| `Off` | `"Off"` | Never writes the depth. |
