# Package `h3d.scene.fwd`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`DepthPass`](DepthPass.md) | class | Renders the objects having a `"depth"` pass into the `depthMap` shader global (a packed depth texture). |
| [`DirLight`](DirLight.md) | class | A directional light of the forward renderer, such as the sun: its rays are parallel and it has no position. |
| [`Light`](Light.md) | class | Base class of the lights of the forward renderer (`h3d.scene.fwd.Renderer`, the default renderer). |
| [`LightSystem`](LightSystem.md) | class | The light system of the forward renderer: each object is drawn with the ambient light and up to `maxLightsPerObject` lights shaders. |
| [`NormalPass`](NormalPass.md) | class | Renders the objects having a `"normal"` pass into the `normalMap` shader global (a packed normal texture). |
| [`PointLight`](PointLight.md) | class | A point light of the forward renderer, shining in all directions from its position. |
| [`Renderer`](Renderer.md) | class | The forward renderer, used by default (see `h3d.mat.MaterialSetup`). |
