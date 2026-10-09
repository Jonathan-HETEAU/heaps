# Package `h3d.scene.pbr`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`CapsuleLight`](CapsuleLight.md) | class | A capsule shaped light of the PBR renderer (a segment of `length` along the X axis, with a `radius`), such as a neon tube, up to `range`. |
| [`CubeToPanorama`](CubeToPanorama.md) | class | Converts a cube map into an equirectangular (panorama) texture. |
| [`Decal`](Decal.md) | class | A projected decal for the PBR renderer: a box volume (usually a unit cube) whose material uses a `h3d.shader.pbr.VolumeDecal` shader to project a texture on the surfaces inside the box. |
| [`DepthCopy`](DepthCopy.md) | class | Copies a depth channel texture to the output color. |
| [`DirLight`](DirLight.md) | class | A directional light of the PBR renderer, such as the sun: its rays are parallel and it lights the whole scene. |
| [`DisplayMode`](DisplayMode.md) | enum abstract | What the PBR renderer displays: the lit scene or a debug view. |
| [`Environment`](Environment.md) | class | The environment lighting of the PBR renderer (image based lighting): the sky texture and the diffuse and specular lighting textures computed from it, used for the indirect lighting and the reflections. |
| [`IrradBase`](IrradBase.md) | class | Base shader of the environment lighting precomputations (importance sampling helpers). |
| [`IrradLut`](IrradLut.md) | class | Computes the BRDF lookup texture shared by all environments (see `Environment.getDefaultLUT`). |
| [`IrradShader`](IrradShader.md) | class | Computes the diffuse irradiance and the prefiltered specular cube maps of an `Environment`. |
| [`Light`](Light.md) | class | Base class of the lights of the PBR renderer (`h3d.scene.pbr.Renderer`). |
| [`LightBuffer`](LightBuffer.md) | class | Packs the lights of the frame in a GPU buffer read by the forward shader (`h3d.shader.pbr.DefaultForward`), so that the objects drawn in the forward passes (such as transparent objects) are lit by the PBR lights. |
| [`LightSystem`](LightSystem.md) | class | The light system of the PBR renderer. |
| [`PanoramaToCube`](PanoramaToCube.md) | class | Converts an equirectangular (panorama) texture into the faces of a cube map. |
| [`PointLight`](PointLight.md) | class | A point light of the PBR renderer, shining in all directions from its position up to `range`. |
| [`RectangleLight`](RectangleLight.md) | class | A rectangular area light of the PBR renderer, such as a window or a screen. |
| [`RenderProps`](RenderProps.md) | typedef | The properties of the PBR renderer (see `hxd.impl.AnyProps.props`), usually edited in Hide. |
| [`Renderer`](Renderer.md) | class | The physically based deferred renderer. |
| [`SkyMode`](SkyMode.md) | enum abstract | What the PBR renderer displays where no object is drawn. |
| [`SpotLight`](SpotLight.md) | class | A spot light of the PBR renderer: a cone of light along the X axis of the object (see `Object.setDirection`), up to `range`. |
| [`TonemapMap`](TonemapMap.md) | enum abstract | The tone mapping operators converting the HDR lighting to displayable colors. |
