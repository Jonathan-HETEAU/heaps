# Package `h2d.domkit`

[← retour](../DEPENDENCIES.md)

## h2d.domkit.BaseComponents

- Fichier : `h2d/domkit/BaseComponents.hx` — 1357 lignes — 32 blocs doc — contient du `#if`
- Types : `typedef FlowBg`, `class CustomParser`, `class ObjectComp`, `class DrawableComp`, `class MaskComp`, `class VideoComp`, `class BitmapComp`, `class TextComp`, `class HtmlTextComp`, `class ScaleGridComp`, `class FlowComp`, `class InputComp`
- Héritage : `CustomParser` extends `domkit.CssValue.ValueParser`, `ObjectComp` implements `h2d.domkit.Object`, `ObjectComp` implements `domkit.Component.ComponentDecl`, `DrawableComp` extends `ObjectComp`, `DrawableComp` implements `domkit.Component.ComponentDecl`, `MaskComp` extends `ObjectComp`, `MaskComp` implements `domkit.Component.ComponentDecl`, `VideoComp` extends `DrawableComp`, `VideoComp` implements `domkit.Component.ComponentDecl`, `BitmapComp` extends `DrawableComp`, `BitmapComp` implements `domkit.Component.ComponentDecl`, `TextComp` extends `DrawableComp`, `TextComp` implements `domkit.Component.ComponentDecl`, `HtmlTextComp` extends `TextComp`, `HtmlTextComp` implements `domkit.Component.ComponentDecl`, `ScaleGridComp` extends `DrawableComp`, `ScaleGridComp` implements `domkit.Component.ComponentDecl`, `FlowComp` extends `ObjectComp`, `FlowComp` implements `domkit.Component.ComponentDecl`, `InputComp` extends `TextComp`, `InputComp` implements `domkit.Component.ComponentDecl`
- Dépend de : `h2d.Bitmap`, `h2d.BlendMode`, `h2d.Drawable`, `h2d.Flow`, `h2d.Font`, `h2d.HtmlText`, `h2d.Mask`, `h2d.Object`, `h2d.ScaleGrid`, `h2d.Text`, `h2d.TextInput`, `h2d.Tile`, `h2d.Video`, `h2d.domkit.Object` (implements/use), `h2d.filter.Blur`, `h2d.filter.ColorMatrix`, `h2d.filter.Filter`, `h2d.filter.Glow`, `h2d.filter.Group`, `h2d.filter.Nothing`, `h2d.filter.Outline`, `h3d.Matrix`, `h3d.Vector4`, `h3d.mat.Texture`, `hxd.Cursor`, `hxd.Math`, `hxd.res.Any`, `hxd.res.BitmapFont`, `hxd.res.DefaultFont`, `hxd.res.Loader`, `hxd.res.NotFound`
- Utilisé par : `h2d.domkit.InitComponents`, `h2d.domkit.Object`

## h2d.domkit.InitComponents

- Fichier : `h2d/domkit/InitComponents.hx` — 32 lignes — 3 blocs doc
- Types : `class InitComponents`
- Dépend de : `h2d.domkit.BaseComponents` (import)
- Utilisé par : `h2d.domkit.Object`

## h2d.domkit.Object

- Fichier : `h2d/domkit/Object.hx` — 10 lignes — 1 blocs doc
- Types : `interface Object`
- Dépend de : `h2d.domkit.BaseComponents` (import), `h2d.domkit.InitComponents`
- Utilisé par : `h2d.domkit.BaseComponents`

## h2d.domkit.Style

- Fichier : `h2d/domkit/Style.hx` — 811 lignes — 20 blocs doc — contient du `#if`
- Types : `typedef SourceFile`, `class Style`
- Héritage : `Style` extends `domkit.CssStyle`
- Dépend de : `h2d.Bitmap`, `h2d.Flow`, `h2d.HtmlText`, `h2d.Object`, `h2d.Text`, `h2d.Tile`, `h2d.col.Point`, `h3d.scene.Scene`, `hxd.Key`, `hxd.Math`, `hxd.Pad`, `hxd.System.js`, `hxd.Timer`, `hxd.Window.js`, `hxd.fs.FileEntry`, `hxd.fs.LocalFileSystem`, `hxd.res.DefaultFont`, `hxd.res.Loader`, `hxd.res.Resource`
