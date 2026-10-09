# Package `h3d.scene.fwd`

[← retour](../DEPENDENCIES.md)

## h3d.scene.fwd.DirLight

- Fichier : `h3d/scene/fwd/DirLight.hx` — 41 lignes — 0 blocs doc
- Types : `class DirLight`
- Héritage : `DirLight` extends `Light`
- Dépend de : `h3d.Vector`, `h3d.scene.fwd.Light` (extends/use), `h3d.shader.DirLight`

## h3d.scene.fwd.Light

- Fichier : `h3d/scene/fwd/Light.hx` — 19 lignes — 0 blocs doc
- Types : `class Light`
- Héritage : `Light` extends `h3d.scene.Light`
- Dépend de : `h3d.scene.Light` (extends/use)
- Utilisé par : `h3d.scene.fwd.DirLight`, `h3d.scene.fwd.LightSystem`, `h3d.scene.fwd.PointLight`

## h3d.scene.fwd.LightSystem

- Fichier : `h3d/scene/fwd/LightSystem.hx` — 108 lignes — 1 blocs doc
- Types : `class LightSystem`
- Héritage : `LightSystem` extends `h3d.scene.LightSystem`
- Dépend de : `h3d.Vector`, `h3d.col.Sphere`, `h3d.scene.Light`, `h3d.scene.LightSystem` (extends/use), `h3d.scene.Object`, `h3d.scene.fwd.Light`, `h3d.shader.AmbientLight`, `hxd.Math`, `hxsl.Globals`, `hxsl.Shader`, `hxsl.ShaderList`
- Utilisé par : `h3d.mat.MaterialSetup`

## h3d.scene.fwd.PointLight

- Fichier : `h3d/scene/fwd/PointLight.hx` — 51 lignes — 0 blocs doc
- Types : `class PointLight`
- Héritage : `PointLight` extends `Light`
- Dépend de : `h3d.Vector`, `h3d.scene.fwd.Light` (extends/use), `h3d.shader.PointLight`, `hxd.Math`

## h3d.scene.fwd.Renderer

- Fichier : `h3d/scene/fwd/Renderer.hx` — 85 lignes — 0 blocs doc
- Types : `class DepthPass`, `class NormalPass`, `class Renderer`
- Héritage : `DepthPass` extends `h3d.pass.Output`, `NormalPass` extends `h3d.pass.Output`, `Renderer` extends `h3d.scene.Renderer`
- Dépend de : `h3d.pass.DefaultShadowMap`, `h3d.pass.Output` (extends/use), `h3d.scene.Renderer` (extends/use), `hxsl.Globals`
- Utilisé par : `h3d.mat.MaterialSetup`
