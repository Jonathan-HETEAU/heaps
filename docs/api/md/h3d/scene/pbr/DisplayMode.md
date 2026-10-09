# h3d.scene.pbr.DisplayMode

**enum abstract** · package [`h3d.scene.pbr`](README.md) · module `h3d.scene.pbr.Renderer` · source [`h3d/scene/pbr/Renderer.hx`](../../../../../../h3d/scene/pbr/Renderer.hx)

What the PBR renderer displays: the lit scene or a debug view.

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Pbr` | `"Pbr"` | Full PBR display |
| `Env` | `"Env"` | Set Albedo = 0x808080 |
| `MatCap` | `"MatCap"` | Set Albedo = 0x808080, Roughness = 0, Metalness = 1 |
| `Debug` | `"Debug"` | Debug slides |
| `Performance` | `"Performance"` | Displays the lighting cost of each pixel as a heat map. |
