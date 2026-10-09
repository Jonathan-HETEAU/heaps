# h3d.scene.pbr.SkyMode

**enum abstract** · package [`h3d.scene.pbr`](README.md) · module `h3d.scene.pbr.Renderer` · source [`h3d/scene/pbr/Renderer.hx`](../../../../../../h3d/scene/pbr/Renderer.hx)

What the PBR renderer displays where no object is drawn.

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Hide` | `"Hide"` | Nothing (the background stays black, or transparent with `Renderer.enableTransparency`). |
| `Env` | `"Env"` | The environment cube map (`Environment.env`). |
| `Specular` | `"Specular"` | The specular lighting cube map of the environment (debug). |
| `Irrad` | `"Irrad"` | The diffuse irradiance cube map of the environment. |
| `Background` | `"Background"` | The engine background color (`h3d.Engine.backgroundColor`). |
| `CustomColor` | `"CustomColor"` | The color `RenderProps.skyColor`. |
