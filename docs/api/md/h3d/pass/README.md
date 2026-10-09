# Package `h3d.pass`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`ArrayCopy`](ArrayCopy.md) | class | Copies a layer of a texture array to a texture. |
| [`Blur`](Blur.md) | class |  |
| [`Border`](Border.md) | class | Draws a solid frame of `size` pixels along the edges of a `width` x `height` target (used for instance to avoid sampling outside of shadow maps). |
| [`CapsuleShadowMap`](CapsuleShadowMap.md) | class | The shadow map of a `h3d.scene.pbr.CapsuleLight`: a cube shadow map rendered from the light center. |
| [`CascadeCamera`](CascadeCamera.md) | typedef | The shadow camera of a cascade. |
| [`CascadeParams`](CascadeParams.md) | typedef | The depth bias settings of a cascade. |
| [`CascadeShadowMap`](CascadeShadowMap.md) | class | Cascaded shadow maps of a directional light: the view frustum is split in `cascade` ranges of distance, each with its own shadow map, so that near shadows get more resolution than far ones. |
| [`ColorMatrix`](ColorMatrix.md) | class | Transforms the colors of a texture by a color matrix (see the `color*` methods of `h3d.Matrix`). |
| [`ColorMatrixShader`](ColorMatrixShader.md) | class | Transforms the colors of a texture by a matrix, with an optional mask. |
| [`Copy`](Copy.md) | class | Copies a texture to another texture (or to the current target), with an optional blend mode. |
| [`CubeCopy`](CubeCopy.md) | class | Copies the 6 faces of a cube texture to another cube texture. |
| [`CubeFaceFlag`](CubeFaceFlag.md) | enum | The faces of a cube shadow map. |
| [`CubeShadowMap`](CubeShadowMap.md) | class | Base class of the omnidirectional shadow maps: the shadows are rendered in the 6 faces of a cube texture around the light. |
| [`DefaultShadowMap`](DefaultShadowMap.md) | class | The shadow map of the forward renderer (`h3d.scene.fwd.Renderer`): a directional shadow map from the shadow light, exposed to the shaders through the `shadow.*` globals. |
| [`DirShadowMap`](DirShadowMap.md) | class | The shadow map of a directional light: an orthographic projection from the light covering the visible scene (or the bounds given by `calcShadowBounds`). |
| [`FXAA`](FXAA.md) | class | Fast approximate anti-aliasing: smooths the edges of an image as a post process. |
| [`Merge`](Merge.md) | class | Interpolates between two textures (or two layers) into an output texture. |
| [`MergeShader`](MergeShader.md) | class | Interpolates between two textures. |
| [`MipMaps`](MipMaps.md) | class | Generates the mip levels of a texture with shaders (each level averages 2x2 pixels of the previous one). |
| [`Outline`](Outline.md) | class |  |
| [`Output`](Output.md) | class | A render pass of a renderer: draws a list of object passes (`PassList`) to the current render target, linking each object shaders with the output shader of the pass (which writes the given values, such as `output.colo... |
| [`OutputShader`](OutputShader.md) | class | Links the shaders of a pass with an output shader writing the given values to the render targets. |
| [`PassList`](PassList.md) | class | A linked list of `PassObject` to draw, with a list of discarded passes which can be restored. |
| [`PassListIterator`](PassListIterator.md) | class | An iterator on a `PassList`. |
| [`PassObject`](PassObject.md) | class | A material pass of an object emitted for the current frame (see `h3d.scene.RenderContext.emitPass`). |
| [`PointShadowMap`](PointShadowMap.md) | class | The shadow map of a `h3d.scene.pbr.PointLight`: a cube shadow map rendered from the light position. |
| [`ProjectedShadowMap`](ProjectedShadowMap.md) | class | Base class of the shadow maps rendered with a perspective projection from the light (spot and rectangle lights). |
| [`RectangleShadowMap`](RectangleShadowMap.md) | class | The shadow map of a `h3d.scene.pbr.RectangleLight`: a perspective projection from the light. |
| [`RenderMode`](RenderMode.md) | enum | How the shadow map of a light is computed. |
| [`SSR`](SSR.md) | class | Screen space reflections for the PBR renderer: reflections are found by marching rays in the depth buffer, after the forward passes. |
| [`ScalableAO`](ScalableAO.md) | class | Scalable ambient obscurance: computes a screen space ambient occlusion from the depth and normal textures. |
| [`ScreenFx`](ScreenFx.md) | class | A full screen pass: renders a quad covering the current target with a screen shader (see `h3d.shader.ScreenShader`). |
| [`ShadowSamplingKind`](ShadowSamplingKind.md) | enum abstract | How the shadow map is sampled when drawing the lit objects. |
| [`Shadows`](Shadows.md) | class | The shadow map of a light: renders the `"shadow"` pass of the shadow casters from the light point of view, and provides the shader applying the shadows to the lit objects. |
| [`SortByMaterial`](SortByMaterial.md) | class | Sorts draw passes by shader then texture, to minimize the GPU state changes. |
| [`SpotShadowMap`](SpotShadowMap.md) | class | The shadow map of a `h3d.scene.pbr.SpotLight`: a perspective projection matching the spot cone. |
| [`Timeout`](Timeout.md) | class | Debug: renders a shader which never ends, to test the GPU timeout (device lost) handling. |
| [`TimeoutShader`](TimeoutShader.md) | class | A shader running an endless loop, used to test the GPU timeout handling. |
