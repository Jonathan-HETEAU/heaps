# Package `h2d.filter`

[← retour](../DEPENDENCIES.md)

## h2d.filter.AbstractMask

- Fichier : `h2d/filter/AbstractMask.hx` — 148 lignes — 3 blocs doc
- Types : `class Hide`, `class AbstractMask`
- Héritage : `Hide` extends `Filter`, `AbstractMask` extends `Filter`
- Dépend de : `h2d.Object`, `h2d.RenderContext`, `h2d.Tile`, `h2d.col.Polynomial`, `h2d.filter.Filter` (extends/use)
- Utilisé par : `h2d.filter.Ambient`, `h2d.filter.Mask`

## h2d.filter.Ambient

- Fichier : `h2d/filter/Ambient.hx` — 48 lignes — 4 blocs doc
- Types : `class Ambient`
- Héritage : `Ambient` extends `AbstractMask`
- Dépend de : `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.AbstractMask` (extends/use), `h3d.Matrix`, `h3d.pass.ColorMatrix`

## h2d.filter.Bloom

- Fichier : `h2d/filter/Bloom.hx` — 52 lignes — 4 blocs doc
- Types : `class Bloom`
- Héritage : `Bloom` extends `Blur`
- Dépend de : `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.Blur` (extends/use), `h3d.pass.Copy`, `h3d.pass.ScreenFx`, `h3d.shader.Bloom`

## h2d.filter.Blur

- Fichier : `h2d/filter/Blur.hx` — 65 lignes — 6 blocs doc
- Types : `class Blur`
- Héritage : `Blur` extends `Filter`
- Dépend de : `h2d.Object`, `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.Filter` (extends/use), `h3d.pass.Blur`
- Utilisé par : `h2d.domkit.BaseComponents`, `h2d.filter.Bloom`, `h2d.filter.Glow`, `h2d.filter.InnerGlow`

## h2d.filter.ColorMatrix

- Fichier : `h2d/filter/ColorMatrix.hx` — 64 lignes — 4 blocs doc
- Types : `class ColorMatrix`
- Héritage : `ColorMatrix` extends `Filter`
- Dépend de : `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.Filter` (extends/use), `h3d.Matrix`, `h3d.pass.ColorMatrix`
- Utilisé par : `h2d.domkit.BaseComponents`

## h2d.filter.Displacement

- Fichier : `h2d/filter/Displacement.hx` — 70 lignes — 6 blocs doc
- Types : `class Displacement`
- Héritage : `Displacement` extends `Filter`
- Dépend de : `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.Filter` (extends/use), `h3d.pass.ScreenFx`, `h3d.shader.Displacement`, `hxd.Math` (import/use)

## h2d.filter.DropShadow

- Fichier : `h2d/filter/DropShadow.hx` — 58 lignes — 4 blocs doc
- Types : `class DropShadow`
- Héritage : `DropShadow` extends `Glow`
- Dépend de : `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.Glow` (extends/use), `h3d.mat.Pass`, `h3d.pass.Copy`, `h3d.shader.UVDelta`, `hxd.Math` (import/use)

## h2d.filter.Filter

- Fichier : `h2d/filter/Filter.hx` — 116 lignes — 13 blocs doc
- Types : `class Filter`
- Dépend de : `h2d.Object`, `h2d.RenderContext`, `h2d.Tile`, `h2d.col.Bounds`, `h2d.col.Point`
- Utilisé par : `h2d.Object`, `h2d.domkit.BaseComponents`, `h2d.filter.AbstractMask`, `h2d.filter.Blur`, `h2d.filter.ColorMatrix`, `h2d.filter.Displacement`, `h2d.filter.Group`, `h2d.filter.Nothing`, `h2d.filter.Outline`, `h2d.filter.Shader`, `h2d.filter.ToneMapping`

## h2d.filter.Glow

- Fichier : `h2d/filter/Glow.hx` — 64 lignes — 6 blocs doc
- Types : `class Glow`
- Héritage : `Glow` extends `Blur`
- Dépend de : `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.Blur` (extends/use), `h3d.pass.Copy`
- Utilisé par : `h2d.domkit.BaseComponents`, `h2d.filter.DropShadow`

## h2d.filter.Group

- Fichier : `h2d/filter/Group.hx` — 105 lignes — 4 blocs doc
- Types : `class Group`
- Héritage : `Group` extends `Filter`
- Dépend de : `h2d.Object`, `h2d.RenderContext`, `h2d.Tile`, `h2d.col.Bounds`, `h2d.col.Point`, `h2d.filter.Filter` (extends/use)
- Utilisé par : `h2d.domkit.BaseComponents`

## h2d.filter.InnerGlow

- Fichier : `h2d/filter/InnerGlow.hx` — 83 lignes — 2 blocs doc
- Types : `class GlowShader`, `class GlowBlendShader`, `class InnerGlow`
- Héritage : `GlowShader` extends `h3d.shader.ScreenShader`, `GlowBlendShader` extends `h3d.shader.ScreenShader`, `InnerGlow` extends `Blur`
- Dépend de : `h2d.BlendMode`, `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.Blur` (extends/use), `h3d.pass.Copy`, `h3d.pass.ScreenFx`, `h3d.shader.ScreenShader` (extends/use)

## h2d.filter.Mask

- Fichier : `h2d/filter/Mask.hx` — 72 lignes — 3 blocs doc
- Types : `class MaskShader`, `class Mask`
- Héritage : `MaskShader` extends `h3d.shader.ScreenShader`, `Mask` extends `AbstractMask`
- Dépend de : `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.AbstractMask` (extends/use), `h3d.pass.ScreenFx`, `h3d.shader.ScreenShader` (extends/use)

## h2d.filter.Nothing

- Fichier : `h2d/filter/Nothing.hx` — 19 lignes — 2 blocs doc
- Types : `class Nothing`
- Héritage : `Nothing` extends `Filter`
- Dépend de : `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.Filter` (extends/use)
- Utilisé par : `h2d.domkit.BaseComponents`

## h2d.filter.Outline

- Fichier : `h2d/filter/Outline.hx` — 79 lignes — 7 blocs doc
- Types : `class Outline`
- Héritage : `Outline` extends `Filter`
- Dépend de : `h2d.Object`, `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.Filter` (extends/use), `h3d.pass.Outline`
- Utilisé par : `h2d.domkit.BaseComponents`

## h2d.filter.Shader

- Fichier : `h2d/filter/Shader.hx` — 82 lignes — 5 blocs doc
- Types : `class Shader`
- Héritage : `Shader` extends `Filter`
- Dépend de : `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.Filter` (extends/use), `h3d.pass.ScreenFx`, `h3d.shader.ScreenShader`

## h2d.filter.ToneMapping

- Fichier : `h2d/filter/ToneMapping.hx` — 40 lignes — 3 blocs doc
- Types : `class ToneMapping`
- Héritage : `ToneMapping` extends `Filter`
- Dépend de : `h2d.RenderContext`, `h2d.Tile`, `h2d.filter.Filter` (extends/use), `h3d.pass.ScreenFx`, `h3d.shader.pbr.ToneMapping`
