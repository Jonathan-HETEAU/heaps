# Package `h2d.filter`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AbstractMask`](AbstractMask.md) | class | A base class for filters that utilize separate Objects as a masking object. |
| [`Ambient`](Ambient.md) | class | A ColorMatrix filer that applies color correction depending on the masked area. |
| [`Bloom`](Bloom.md) | class | Applies a bloom effect to the filtered Object. |
| [`Blur`](Blur.md) | class | Utilizes the `h3d.pass.Blur` render pass to perform a blurring operation on the filtered object. |
| [`ColorMatrix`](ColorMatrix.md) | class | Applies a color correction filter based on the provided matrix. |
| [`Displacement`](Displacement.md) | class | Applies a normal map to the filtered Object in order to displace pixels. |
| [`DropShadow`](DropShadow.md) | class | Adds a soft shadow to the filtered Object. |
| [`Filter`](Filter.md) | class | The base filter class, you can extend it in order to define your own filters, although ShaderFilter will be the most straightforward way to define simple custom filter. |
| [`Glow`](Glow.md) | class | Adds a glow backdrop to the filtered Object. |
| [`Group`](Group.md) | class | Applies an array of Filters to a single Object with several limitations. |
| [`InnerGlow`](InnerGlow.md) | class | Adds a glow backdrop to the filtered Object. |
| [`Mask`](Mask.md) | class | Performs an arbitrary shape masking of the filtered Object. |
| [`Nothing`](Nothing.md) | class | A filter that renders nothing. |
| [`Outline`](Outline.md) | class | Provides a solid color outline to the filtered object by utilizing `h3d.pass.Outline` render pass. |
| [`Shader`](Shader.md) | class | The base class for simple filters that don't need specialized render passes and rely completely on the shaders. |
| [`ToneMapping`](ToneMapping.md) | class | Applies a color correction that emulates tonemapping. |
