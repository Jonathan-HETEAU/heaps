# Package `h3d.shader.pbr`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AlphaMask`](AlphaMask.md) | class | Makes the sky pixels (without geometry) transparent, for `h3d.scene.pbr.Renderer.enableTransparency`. |
| [`AlphaMultiply`](AlphaMultiply.md) | class | Multiplies the color by the alpha (premultiplied alpha), for the `AlphaMultiply` blend mode. |
| [`BRDF`](BRDF.md) | class | Shader functions of the PBR lighting model (GGX distribution, visibility and Fresnel terms), to be used by the lighting shaders. |
| [`BaseDecal`](BaseDecal.md) | class | Base of the PBR volume decal shaders: reconstructs the position of the surface inside the decal box from the depth. |
| [`CapsuleLight`](CapsuleLight.md) | class | The shader of `h3d.scene.pbr.CapsuleLight`. |
| [`ClusterCull`](ClusterCull.md) | class | Compute shader sorting the lights into the clusters of the view (see `h3d.scene.pbr.LightBuffer`). |
| [`ClusterLightOcclusion`](ClusterLightOcclusion.md) | class | Compute shader removing from the clusters the lights hidden by the opaque geometry, using the hierarchical depth buffer. |
| [`CubeLod`](CubeLod.md) | class | Displays a mip level of a cube texture (used to display the environment as sky). |
| [`DebugMode`](DebugMode.md) | enum abstract | The G-buffer channel displayed by the `Debug` display mode of the PBR renderer. |
| [`DecalOverlay`](DecalOverlay.md) | class | A decal drawing a colored texture over the surfaces. |
| [`DecalPBR`](DecalPBR.md) | class | A decal writing albedo, normal and PBR properties into the G-buffer. |
| [`DefaultForward`](DefaultForward.md) | class | Computes the PBR lighting of the objects drawn in the forward passes, from the light buffer (see `h3d.scene.pbr.LightBuffer`). |
| [`DirLight`](DirLight.md) | class | The shader of `h3d.scene.pbr.DirLight`. |
| [`Direct`](Direct.md) | class | Computes the direct lighting of a PBR light from the G-buffer. |
| [`Distortion`](Distortion.md) | class | Applies the distortion texture rendered by the `"distortion"` pass to the image. |
| [`GammaCorrect`](GammaCorrect.md) | class | Converts the color to linear space (approximated by squaring it), for unlit objects drawn in HDR (see `h3d.mat.PbrMaterial` `BeforeTonemapping` mode). |
| [`Indirect`](Indirect.md) | class | Computes the indirect lighting (environment diffuse and specular) and the sky of the PBR renderer. |
| [`Light`](Light.md) | class | Base of the shaders of the PBR lights: outputs the light color and direction used by the lighting shader. |
| [`LightEvaluation`](LightEvaluation.md) | class | Shader functions computing the intensity of the different kinds of PBR lights. |
| [`Performance`](Performance.md) | class | Counts the lights affecting each pixel (for the `Performance` display mode). |
| [`PerformanceViewer`](PerformanceViewer.md) | class | Displays the light count of each pixel with a color gradient (for the `Performance` display mode). |
| [`PointLight`](PointLight.md) | class | The shader of `h3d.scene.pbr.PointLight`. |
| [`PropsDefinition`](PropsDefinition.md) | class | Declares the PBR surface properties (albedo, normal, metalness, roughness, occlusion, emissive...) shared by the PBR shaders. |
| [`PropsImport`](PropsImport.md) | class | Reads the PBR surface properties of the pixel from the G-buffer textures. |
| [`PropsTexture`](PropsTexture.md) | class | Sets the PBR properties from a texture: metalness in red, glossiness in green (roughness is `1 - green²`), occlusion in blue and emissive (multiplied by `emissiveValue`) in alpha. |
| [`PropsValues`](PropsValues.md) | class | Sets the PBR properties of a material from constant values. |
| [`RectangleLight`](RectangleLight.md) | class | The shader of `h3d.scene.pbr.RectangleLight`. |
| [`SSR`](SSR.md) | class | Computes the screen space reflections by marching rays in the depth buffer (see `h3d.pass.SSR`). |
| [`SSRFilter`](SSRFilter.md) | class | Filters the screen space reflections according to the roughness. |
| [`SSRResolve`](SSRResolve.md) | class | Combines the screen space reflections with the lit image. |
| [`Slides`](Slides.md) | class | Displays the G-buffer channels for debugging (the `Debug` display mode of `h3d.scene.pbr.Renderer`). |
| [`SpotLight`](SpotLight.md) | class | The shader of `h3d.scene.pbr.SpotLight`. |
| [`StrengthValues`](StrengthValues.md) | class | The strength of each property written by a decal (albedo, normal, PBR properties, emissive), from `0` to `1`. |
| [`ToneMapping`](ToneMapping.md) | class | Converts the HDR image to displayable colors (exposure, tone mapping operator, gamma). |
