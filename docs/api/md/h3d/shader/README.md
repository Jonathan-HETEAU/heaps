# Package `h3d.shader`

[← API index](../../README.md)

Sub-packages: [`h3d.shader.pbr`](pbr/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AlphaChannel`](AlphaChannel.md) | class | Debug: makes the output opaque, and with `showAlpha` displays the alpha channel as grey levels. |
| [`AlphaMSDF`](AlphaMSDF.md) | class | Uses a multi-channel signed distance field texture as alpha mask, for sharp shapes at any scale (for instance MSDF fonts). |
| [`AlphaMap`](AlphaMap.md) | class | Multiplies the alpha by a channel of a texture (blue by default, or alpha with `useAlphaChannel`). |
| [`AlphaMult`](AlphaMult.md) | class | Multiplies the alpha by `alpha`. |
| [`AmbientLight`](AmbientLight.md) | class | The ambient light of the forward renderer, combined with the light shaders (see `h3d.scene.fwd.LightSystem`). |
| [`AnimatedTexture`](AnimatedTexture.md) | class | Plays an animation stored as a grid of frames in a texture (a sprite sheet), optionally blending between frames. |
| [`ApplyTransformShader`](ApplyTransformShader.md) | class | Applies an additional transform to the model matrices (used by `h3d.scene.Batcher` with `isRelative`). |
| [`Base2d`](Base2d.md) | class | The base shader of the 2D objects (`h2d.Drawable`): transforms the 2D vertices and applies the texture, color and filters. |
| [`BaseMesh`](BaseMesh.md) | class | The base shader of the 3D meshes: transforms the vertices by the object and camera matrices, and outputs the color, depth and normal. |
| [`Blendshape`](Blendshape.md) | class | Applies the blend shapes (morph targets) of a mesh on the GPU (see `h3d.prim.Blendshape`). |
| [`Bloom`](Bloom.md) | class | Extracts the bright parts of an image (above `power`), for a bloom post process. |
| [`Blur`](Blur.md) | class | One pass of a separable blur, used by `h3d.pass.Blur`. |
| [`BufferKind`](BufferKind.md) | enum abstract | The kinds of shader data uploaded to the GPU. |
| [`Buffers`](Buffers.md) | class | The data of the vertex and fragment stages of a shader, filled before a draw call. |
| [`CascadeShadow`](CascadeShadow.md) | class | Applies the cascaded shadows of a directional light (see `h3d.pass.CascadeShadowMap`). |
| [`Checker`](Checker.md) | class | Debug: draws a black and white checker pattern from the texture coordinates. |
| [`CheckerboardDepth`](CheckerboardDepth.md) | class | Downsamples a depth texture by taking alternatively the minimum and maximum of each 2x2 block (checkerboard pattern). |
| [`ColorAdd`](ColorAdd.md) | class | Adds a color to the output color. |
| [`ColorKey`](ColorKey.md) | class | Discards the pixels of a given color (color keying). |
| [`ColorMatrix`](ColorMatrix.md) | class | Transforms the output color by a matrix (see the color methods of `h3d.Matrix`). |
| [`ColorMult`](ColorMult.md) | class | Multiplies the output color by `color`, blended by `amount`. |
| [`ColorSpaces`](ColorSpaces.md) | class | Shader functions converting colors between color spaces and packing colors in integers, to be used by other shaders. |
| [`CubeMap`](CubeMap.md) | class | Applies a cube texture: sampled with the normal, or with the reflected view direction if `reflection` is set. |
| [`CubeMinMaxShader`](CubeMinMaxShader.md) | class | Outputs the minimum (or maximum with `isMax`) of two cube textures, for a cube face. |
| [`DepthAwareUpsampling`](DepthAwareUpsampling.md) | class | Upsamples a low resolution image using the depths to avoid bleeding across edges. |
| [`DirLight`](DirLight.md) | class | The shader of `h3d.scene.fwd.DirLight`. |
| [`DirShadow`](DirShadow.md) | class | Applies the shadows of a directional shadow map (see `h3d.pass.DirShadowMap`). |
| [`Displacement`](Displacement.md) | class | Displaces the pixels of a texture according to a normal map (for distortion effects). |
| [`DisplacementDisplay`](DisplacementDisplay.md) | class | Debug: displays the alpha channel of a displacement texture. |
| [`DistanceFade`](DistanceFade.md) | class | Fades the objects in near the camera (between `nearMinFade` and `nearMaxFade`) and out far from it (between `farMinFade` and `farMaxFade`). |
| [`FixedColor`](FixedColor.md) | class | Replaces the output color by a fixed color. |
| [`FlipBackFaceNormal`](FlipBackFaceNormal.md) | class | Flips the normal of back faces, for double sided lighting. |
| [`GenTexture`](GenTexture.md) | class | Generates simple textures (a disc, see `h3d.mat.Texture.genDisc`). |
| [`GpuParticle`](GpuParticle.md) | class | Animates the particles of `h3d.parts.GpuParticles` on the GPU. |
| [`HZB`](HZB.md) | class | Builds a mip level of a hierarchical depth buffer, keeping the minimum or maximum depth of each 2x2 block. |
| [`InstanceIndirect`](InstanceIndirect.md) | class | Culls instances and selects their level of detail, writing their indirect draw commands. |
| [`InstanceIndirectBase`](InstanceIndirectBase.md) | class | Base of the compute shaders culling instances and writing indirect draw commands (see `h3d.scene.GPUMeshBatch`). |
| [`KillAlpha`](KillAlpha.md) | class | Discards the pixels whose alpha is below `threshold`. |
| [`LineShader`](LineShader.md) | class | Draws the quads of `h3d.scene.Graphics` as screen space lines of constant `width` in pixels. |
| [`LinearShadowDepth`](LinearShadowDepth.md) | class | Outputs the distance to the camera divided by its far plane as depth (for omnidirectional shadow maps). |
| [`MinMaxShader`](MinMaxShader.md) | class | Outputs the minimum (or maximum with `isMax`) of two textures. |
| [`NoiseLib`](NoiseLib.md) | class | Shader functions computing gradient noise (`psrdnoise`), to be used by other shaders. |
| [`NormalMap`](NormalMap.md) | class | Applies a tangent space normal map (the mesh needs tangents). |
| [`Outline`](Outline.md) | class | Draws an outline by inflating the mesh along its normals by `size` (to use in a pass drawn behind the object). |
| [`Outline2D`](Outline2D.md) | class | Draws an outline around the opaque pixels of a texture (see `h3d.pass.Outline`). |
| [`Parallax`](Parallax.md) | class | Parallax occlusion mapping: offsets the texture coordinates according to a height map, to simulate relief. |
| [`ParticleShader`](ParticleShader.md) | class | Expands the particles of `h3d.parts.Particles` into camera facing quads. |
| [`PointLight`](PointLight.md) | class | The shader of `h3d.scene.fwd.PointLight`. |
| [`PointShadow`](PointShadow.md) | class | Applies the shadows of a cube shadow map (see `h3d.pass.CubeShadowMap`). |
| [`SAO`](SAO.md) | class | Screen space ambient occlusion. |
| [`ScreenShader`](ScreenShader.md) | class | Base class of the full screen shaders used with `h3d.pass.ScreenFx`: it provides the `calculatedUV` of each pixel of the screen quad. |
| [`ShaderBufferData`](ShaderBufferData.md) | typedef | The float data of a shader stage. |
| [`ShaderBuffers`](ShaderBuffers.md) | class | The data of a shader stage (vertex or fragment) filled before a draw call. |
| [`Shadow`](Shadow.md) | class | Receives the shadows of the forward renderer shadow map (see `h3d.pass.DefaultShadowMap` and `h3d.mat.Material.receiveShadows`). |
| [`ShadowSampling`](ShadowSampling.md) | class | Shader functions sampling shadow maps (hard, ESM or PCF), to be used by the shadow shaders. |
| [`SignedDistanceField`](SignedDistanceField.md) | class | Uses a channel of a signed distance field texture as alpha, for sharp shapes at any scale (for instance SDF fonts). |
| [`SinusDeform`](SinusDeform.md) | class | Deforms the texture coordinates with a moving sine wave. |
| [`Skin`](Skin.md) | class | The skinning shader of `h3d.scene.Skin`: deforms the vertices by up to 4 bones. |
| [`SkinBase`](SkinBase.md) | class | Base of the skinning shaders: holds the bone matrices. |
| [`SkinTangent`](SkinTangent.md) | class | The skinning shader for meshes with tangents (normal maps). |
| [`SpecularTexture`](SpecularTexture.md) | class | Multiplies the specular amount by a texture (see `h3d.mat.Material.specularTexture`). |
| [`SpotShadow`](SpotShadow.md) | class | Applies the shadows of a perspective shadow map (see `h3d.pass.ProjectedShadowMap`). |
| [`SubPartInstanceIndirect`](SubPartInstanceIndirect.md) | class | Culls instances of sub meshes and selects their level of detail, writing their indirect draw commands. |
| [`Texture`](Texture.md) | class | Applies a texture to the output color (see `h3d.mat.Material.texture`). |
| [`Texture2`](Texture2.md) | class | This is similar to [Texture] shader but uses a second UV set. |
| [`UVAnim`](UVAnim.md) | class | Animates the texture coordinates through a grid of frames (a sprite sheet). |
| [`UVDelta`](UVDelta.md) | class | Scales and offsets the texture coordinates. |
| [`UVScroll`](UVScroll.md) | class | Scrolls the texture coordinates over time. |
| [`Utils`](Utils.md) | class | Shader functions applying the bone matrices to points and vectors. |
| [`VertexColor`](VertexColor.md) | class | Multiplies (or adds with `additive`) the output color by the vertex color (RGB). |
| [`VertexColorAlpha`](VertexColorAlpha.md) | class | Multiplies (or adds with `additive`) the output color by the vertex color (RGBA). |
| [`VertexDensity`](VertexDensity.md) | class | Debug: displays the density of vertices on screen with a color ramp. |
| [`VolumeDecal`](VolumeDecal.md) | class | Projects a texture on the surfaces inside a box volume (the decal mesh), using the depth buffer. |
| [`WhiteAlpha`](WhiteAlpha.md) | class | Replaces the texture color by white, keeping its alpha. |
| [`ZCut`](ZCut.md) | class | Clamps the projected depth between `zMin` and `zMax`. |
