# h3d.shader.pbr.DebugMode

**enum abstract** · package [`h3d.shader.pbr`](README.md) · module `h3d.shader.pbr.Slides` · source [`h3d/shader/pbr/Slides.hx`](../../../../../../h3d/shader/pbr/Slides.hx)

The G-buffer channel displayed by the `Debug` display mode of the PBR renderer.

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `Full` | `0` | All the channels at once, in a grid. |
| `Albedo` | `1` | The albedo color. |
| `Normal` | `2` | The normals. |
| `Depth` | `3` | The depth. |
| `Metalness` | `4` | The metalness. |
| `Roughness` | `5` | The roughness. |
| `AO` | `6` | The ambient occlusion. |
| `Emissive` | `7` | The emissive value (red) and the custom channels (green and blue). |
| `Shadow` | `8` | The shadow map. |
| `Velocity` | `9` | The velocity, if available. |
| `Translucency` | `10` | The translucency, if available. |
| `Clusters` | `11` | The number of lights of each cluster, as a heat map, if clustered lighting is used. |
