# h3d.mat.PbrMode

**enum abstract** · package [`h3d.mat`](README.md) · module `h3d.mat.PbrMaterial` · source [`h3d/mat/PbrMaterial.hx`](../../../../../h3d/mat/PbrMaterial.hx)

Where a `PbrMaterial` is drawn in the PBR renderer pipeline.

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `PBR` | `"PBR"` | Lit by the deferred PBR lighting (the `"default"` pass, or `"alpha"` / `"additive"` depending on the blend mode). |
| `Forward` | `"Forward"` | Drawn after the lighting in the `"forward"` pass, lit by the forward light buffer (for transparent objects). |
| `Overlay` | `"Overlay"` | Drawn on top of the final image (`"overlay"` pass), unlit. |
| `Decal` | `"Decal"` | A volume decal projecting its textures on the G-buffer (`"decal"` or `"emissiveDecal"` pass). |
| `BeforeTonemapping` | `"BeforeTonemapping"` | Unlit, drawn in HDR just before tone mapping (`"beforeTonemapping"` pass). |
| `BeforeTonemappingDecal` | `"BeforeTonemappingDecal"` | Same as `BeforeTonemapping`, in the `"beforeTonemappingDecal"` pass. |
| `AfterTonemapping` | `"AfterTonemapping"` | Unlit, drawn after tone mapping (`"afterTonemapping"` pass). |
| `AfterTonemappingDecal` | `"AfterTonemappingDecal"` | Same as `AfterTonemapping`, in the `"afterTonemappingDecal"` pass. |
| `Distortion` | `"Distortion"` | Drawn in the `"distortion"` pass, used by distortion effects, without depth write. |
| `DecalPass` | `"DecalPass"` | Drawn in the decal pass with the material own geometry (no volume projection). |
| `TerrainPass` | `"TerrainPass"` | Drawn in the `"terrain"` pass, before the other opaque objects. |
