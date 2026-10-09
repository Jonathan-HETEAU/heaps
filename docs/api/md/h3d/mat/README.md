# Package `h3d.mat`

[← API index](../../README.md)

Sub-packages: [`h3d.mat.noise`](noise/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`BaseMaterial`](BaseMaterial.md) | class | Base class of the materials: a linked list of render passes (`Pass`), each with its own render states and shaders. |
| [`BigTexture`](BigTexture.md) | class | A texture atlas packing many images in a single square texture, so that objects using different images can be drawn together (used by `h3d.scene.World`). |
| [`BigTextureElement`](BigTextureElement.md) | class | An area of a `BigTexture` holding one image. |
| [`Blend`](Blend.md) | enum | A blend factor: the value the source (pixel being drawn) or destination (pixel in the target) color is multiplied by before being combined (see `Pass.blend`). |
| [`BlendMode`](BlendMode.md) | typedef | The blend modes of materials, shared with 2D: see `h2d.BlendMode`. |
| [`Compare`](Compare.md) | enum | A comparison function, used by the depth test (see `Pass.depthTest`) and the stencil test. |
| [`Defaults`](Defaults.md) | class | Global defaults of the materials. |
| [`Face`](Face.md) | enum | The faces culled by a pass (see `Pass.culling`). |
| [`Filter`](Filter.md) | enum | How the pixels of a texture are interpolated when sampled (see `Texture.filter`). |
| [`Material`](Material.md) | class | The standard material of the 3D meshes, created by `MaterialSetup.current.createMaterial()` or `Material.create`. |
| [`MaterialDatabase`](MaterialDatabase.md) | class | Stores the properties of the materials of models in `materials.props` JSON files, one per resource directory, indexed by material setup name and material name. |
| [`MaterialSetup`](MaterialSetup.md) | class | Defines the rendering setup: which renderer, light system and material class are used by the scenes and models. |
| [`MipMap`](MipMap.md) | enum | How the mip levels of a texture are sampled (see `Texture.mipMap`). |
| [`Operation`](Operation.md) | enum | How the source and destination colors (multiplied by their blend factors) are combined (see `Pass.blendOp`). |
| [`Pass`](Pass.md) | class |  |
| [`PbrBlend`](PbrBlend.md) | enum abstract | The blend mode of a `PbrMaterial` (see `h3d.mat.BlendMode`). |
| [`PbrCullingMode`](PbrCullingMode.md) | enum abstract | The face culling of a `PbrMaterial` (see `h3d.mat.Data.Face`). |
| [`PbrDepthTest`](PbrDepthTest.md) | enum abstract | The depth test of a `PbrMaterial` (see `h3d.mat.Data.Compare`). |
| [`PbrDepthWrite`](PbrDepthWrite.md) | enum abstract | The depth write of a `PbrMaterial`: `Default` writes depth only for opaque blend modes. |
| [`PbrMaterial`](PbrMaterial.md) | class | The material of the PBR renderer (`MaterialSetup` `PbrMaterialSetup`). |
| [`PbrMaterialSetup`](PbrMaterialSetup.md) | class | The material setup of the physically based rendering: it creates `PbrMaterial` materials, the `h3d.scene.pbr.Renderer` renderer and the `h3d.scene.pbr.LightSystem`. |
| [`PbrMode`](PbrMode.md) | enum abstract | Where a `PbrMaterial` is drawn in the PBR renderer pipeline. |
| [`PbrProps`](PbrProps.md) | class | The properties of a `PbrMaterial`, stored as `props` and edited in Hide. |
| [`PbrStencilCompare`](PbrStencilCompare.md) | enum abstract | A stencil test of a `PbrMaterial` (see `h3d.mat.Data.Compare`). |
| [`PbrStencilOp`](PbrStencilOp.md) | enum abstract | A stencil operation of a `PbrMaterial` (see `h3d.mat.Data.StencilOp`). |
| [`Stencil`](Stencil.md) | class |  |
| [`StencilOp`](StencilOp.md) | enum | An operation applied to the stencil buffer value (see `Stencil`). |
| [`Texture`](Texture.md) | class |  |
| [`Texture3D`](Texture3D.md) | class | A 3D (volume) texture of `width` x `height` x `depth` pixels. |
| [`TextureArray`](TextureArray.md) | class | A texture array: several 2D textures (layers) of the same size and format, sampled with a layer index in shaders. |
| [`TextureChannels`](TextureChannels.md) | class | A texture whose channels (red, green, blue, alpha) are filled separately from different images, for instance to pack the roughness, metalness and occlusion maps in a single texture. |
| [`TextureFlags`](TextureFlags.md) | enum | The flags of a `Texture`, given at creation. |
| [`TextureFormat`](TextureFormat.md) | typedef | The pixel format of a texture, see `hxd.PixelFormat`. |
| [`TextureHandle`](TextureHandle.md) | class | A bindless handle of a texture: an identifier allowing shaders to access the texture without binding it. |
| [`Wrap`](Wrap.md) | enum | How texture coordinates outside of the `[0, 1]` range are handled (see `Texture.wrap`). |
