# Package `h2d`

[← retour](../DEPENDENCIES.md)

## h2d.Anim

- Fichier : `h2d/Anim.hx` — 159 lignes — 11 blocs doc
- Types : `class Anim`
- Héritage : `Anim` extends `Drawable`
- Dépend de : `h2d.Drawable` (extends/use), `h2d.Object`, `h2d.RenderContext`, `h2d.Tile`, `h2d.col.Bounds`

## h2d.Bitmap

- Fichier : `h2d/Bitmap.hx` — 94 lignes — 5 blocs doc
- Types : `class Bitmap`
- Héritage : `Bitmap` extends `Drawable`
- Dépend de : `h2d.Drawable` (extends/use), `h2d.Object`, `h2d.RenderContext`, `h2d.Tile`, `h2d.col.Bounds`
- Utilisé par : `h2d.CheckBox`, `h2d.Console`, `h2d.Dropdown`, `h2d.HtmlText`, `h2d.KeyFrames`, `h2d.Scene`, `h2d.domkit.BaseComponents`, `h2d.domkit.Style`

## h2d.BlendMode

- Fichier : `h2d/BlendMode.hx` — 60 lignes — 13 blocs doc
- Types : `enum BlendMode`
- Utilisé par : `h2d.Object`, `h2d.Particles`, `h2d.RenderContext`, `h2d.domkit.BaseComponents`, `h2d.filter.InnerGlow`, `h3d.mat.BlendMode`, `hxd.BitmapData`, `hxd.fmt.hmd.Reader`, `hxd.fmt.spine.Data`, `hxd.fmt.spine.Library`

## h2d.Camera

- Fichier : `h2d/Camera.hx` — 514 lignes — 43 blocs doc
- Types : `class Camera`
- Dépend de : `h2d.Object`, `h2d.RenderContext`, `h2d.Scene`, `h2d.col.Point`, `hxd.Pad`
- Utilisé par : `h2d.RenderContext`, `h2d.Scene`

## h2d.CdbLevel

- Fichier : `h2d/CdbLevel.hx` — 712 lignes — 82 blocs doc — contient du `#if`
- Types : `typedef TileSpec`, `typedef LayerSpec`, `typedef LevelSpec`, `class LevelTileset`, `class LevelObject`, `class LevelGroup`, `class LevelObjectInstance`, `enum LevelLayerData`, `class LevelLayer`, `class CdbLevel`
- Héritage : `CdbLevel` extends `Layers`
- Dépend de : `h2d.Layers` (extends/use), `h2d.Object`, `h2d.RenderContext`, `h2d.Tile`, `h2d.TileGroup`, `h2d.col.Bounds`, `hxd.res.Image`, `hxd.res.Loader`

## h2d.CheckBox

- Fichier : `h2d/CheckBox.hx` — 102 lignes — 6 blocs doc
- Types : `class CheckBox`
- Héritage : `CheckBox` extends `h2d.Flow`
- Dépend de : `h2d.Bitmap`, `h2d.Flow` (extends/use), `h2d.Text`, `h2d.Tile`, `hxd.res.DefaultFont`

## h2d.Console

- Fichier : `h2d/Console.hx` — 623 lignes — 24 blocs doc — contient du `#if`
- Types : `enum ConsoleArg`, `typedef ConsoleArgDesc`, `class Console`
- Dépend de : `h2d.Bitmap`, `h2d.Font`, `h2d.HtmlText`, `h2d.Object`, `h2d.RenderContext`, `h2d.Text`, `h2d.TextInput`, `h2d.Tile`, `hxd.Key` (import/use), `hxd.Pad`

## h2d.Drawable

- Fichier : `h2d/Drawable.hx` — 258 lignes — 13 blocs doc
- Types : `class Drawable`
- Héritage : `Drawable` extends `Object`
- Dépend de : `h2d.Object` (extends/use), `h2d.RenderContext`, `h2d.Tile`, `h3d.Matrix`, `h3d.Vector`, `h3d.Vector4`, `h3d.shader.ColorAdd`, `h3d.shader.ColorKey`, `h3d.shader.ColorMatrix`, `hxsl.Shader`, `hxsl.ShaderList`
- Utilisé par : `h2d.Anim`, `h2d.Bitmap`, `h2d.Graphics`, `h2d.Object`, `h2d.Particles`, `h2d.RenderContext`, `h2d.SpriteBatch`, `h2d.Text`, `h2d.TileGroup`, `h2d.Video`, `h2d.ZGroup`, `h2d.domkit.BaseComponents`

## h2d.Dropdown

- Fichier : `h2d/Dropdown.hx` — 310 lignes — 19 blocs doc
- Types : `class Fake`, `class Dropdown`
- Héritage : `Fake` extends `Object`, `Dropdown` extends `Flow`
- Dépend de : `h2d.Bitmap`, `h2d.Flow` (extends/use), `h2d.Object` (extends/use), `h2d.Tile`, `h2d.col.Bounds`, `h2d.col.Point`, `hxd.Math`, `hxd.Pad`

## h2d.Flow

- Fichier : `h2d/Flow.hx` — 1920 lignes — 88 blocs doc — contient du `#if`
- Types : `enum FlowAlign`, `enum FlowLayout`, `enum FlowOverflow`, `class FlowProperties`, `class Flow`
- Héritage : `Flow` extends `Object`
- Dépend de : `h2d.Graphics`, `h2d.Interactive`, `h2d.Mask`, `h2d.Object` (extends/use), `h2d.RenderContext`, `h2d.ScaleGrid`, `h2d.Tile`, `h2d.col.Bounds`, `h2d.col.Point`, `hxd.Math`, `hxd.Pad`
- Utilisé par : `h2d.CheckBox`, `h2d.Dropdown`, `h2d.ObjectFollower`, `h2d.Scene3D`, `h2d.domkit.BaseComponents`, `h2d.domkit.Style`, `h3d.impl.Benchmark`, `h3d.impl.FpsGraph`, `hxd.res.Atlas`

## h2d.Font

- Fichier : `h2d/Font.hx` — 345 lignes — 41 blocs doc
- Types : `class Kerning`, `class FontChar`, `enum_abstract SDFChannel`, `enum FontType`, `class Font`
- Dépend de : `h2d.Tile`, `hxd.Charset`
- Utilisé par : `h2d.Console`, `h2d.HtmlText`, `h2d.Text`, `h2d.TextInput`, `h2d.domkit.BaseComponents`, `h3d.impl.Benchmark`, `hxd.fmt.bfnt.FontParser`, `hxd.fmt.bfnt.Reader`, `hxd.fmt.bfnt.Writer`, `hxd.res.BDFFont`, `hxd.res.BitmapFont`, `hxd.res.DefaultFont`, `hxd.res.Font`, `hxd.res.FontBuilder`

## h2d.Graphics

- Fichier : `h2d/Graphics.hx` — 880 lignes — 21 blocs doc
- Types : `typedef GraphicsPoint`, `class GPoint`, `class GraphicsContent`, `class Graphics`
- Héritage : `GraphicsContent` extends `h3d.prim.Primitive`, `Graphics` extends `Drawable`
- Dépend de : `h2d.Drawable` (extends/use), `h2d.RenderContext`, `h2d.Tile`, `h2d.impl.BatchDrawState` (import/use), `h3d.Buffer`, `h3d.Engine`, `h3d.Indexes`, `h3d.prim.Primitive` (extends/use), `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.Math` (import/use), `hxd.earcut.Earcut`, `hxd.impl.AllocPos`, `hxd.impl.Allocator` (import/use), `hxd.poly2tri.Point`
- Utilisé par : `h2d.Flow`, `h3d.impl.Benchmark`, `h3d.impl.FpsGraph`, `hxd.fmt.pak.Loader`

## h2d.HtmlText

- Fichier : `h2d/HtmlText.hx` — 948 lignes — 26 blocs doc
- Types : `enum LineHeightMode`, `enum ImageVerticalAlign`, `class HtmlText`, `typedef LineInfo`, `typedef SplitNode`
- Héritage : `HtmlText` extends `Text`
- Dépend de : `h2d.Bitmap`, `h2d.Font`, `h2d.Interactive`, `h2d.Object`, `h2d.RenderContext`, `h2d.Text` (extends/import/use), `h2d.Tile`, `h2d.TileGroup`, `h2d.col.Bounds`, `h3d.shader.ColorMatrix`, `h3d.shader.SignedDistanceField`, `hxd.Math`, `hxsl.Shader`
- Utilisé par : `h2d.Console`, `h2d.domkit.BaseComponents`, `h2d.domkit.Style`

## h2d.Interactive

- Fichier : `h2d/Interactive.hx` — 439 lignes — 35 blocs doc
- Types : `class Interactive`
- Héritage : `Interactive` extends `Object`, `Interactive` implements `hxd.SceneEvents.Interactive`
- Dépend de : `h2d.Object` (extends/use), `h2d.RenderContext`, `h2d.Scene`, `h2d.Tile`, `h2d.col.Bounds`, `h2d.col.Collider`, `h2d.col.Point`, `hxd.Cursor`, `hxd.Pad`, `hxd.SceneEvents` (implements/use), `hxd.Timer`
- Utilisé par : `h2d.Flow`, `h2d.HtmlText`, `h2d.Scene`, `h2d.Slider`, `h2d.TextInput`, `h3d.impl.Benchmark`

## h2d.KeyFrames

- Fichier : `h2d/KeyFrames.hx` — 357 lignes — 21 blocs doc
- Types : `typedef KeyframesLayer`, `class KeyFrames`
- Héritage : `KeyFrames` extends `Mask`
- Dépend de : `h2d.Bitmap`, `h2d.Mask` (extends/use), `h2d.Object`, `h2d.RenderContext`, `h2d.Tile`, `hxd.Math`, `hxd.fmt.kframes.Data` (import/use), `hxd.res.Loader`

## h2d.Layers

- Fichier : `h2d/Layers.hx` — 264 lignes — 7 blocs doc — contient du `#if`
- Types : `class Layers`
- Héritage : `Layers` extends `Object`
- Dépend de : `h2d.Object` (extends/use), `h2d.RenderContext`, `hxd.Math`, `hxd.impl.ArrayIterator`
- Utilisé par : `h2d.CdbLevel`, `h2d.Scene`, `h2d.ZGroup`

## h2d.LoadingScene

- Fichier : `h2d/LoadingScene.hx` — 51 lignes — 2 blocs doc — contient du `#if`
- Types : `class LoadingScene`
- Héritage : `LoadingScene` extends `h2d.Scene`
- Dépend de : `h2d.Scene` (extends/use), `h3d.Engine`, `h3d.mat.Texture`, `h3d.pass.Copy`, `hxd.Window.js`

## h2d.Mask

- Fichier : `h2d/Mask.hx` — 155 lignes — 11 blocs doc
- Types : `class Mask`
- Héritage : `Mask` extends `Object`
- Dépend de : `h2d.Object` (extends/use), `h2d.RenderContext`, `h2d.col.Bounds`, `hxd.Math`
- Utilisé par : `h2d.Flow`, `h2d.KeyFrames`, `h2d.domkit.BaseComponents`

## h2d.Object

- Fichier : `h2d/Object.hx` — 1136 lignes — 60 blocs doc — contient du `#if`
- Types : `class Object`
- Dépend de : `h2d.BlendMode`, `h2d.Drawable`, `h2d.RenderContext`, `h2d.Scene`, `h2d.Tile`, `h2d.col.Bounds`, `h2d.col.Point`, `h2d.col.Polynomial`, `h2d.filter.Filter`, `h3d.mat.Texture`, `hxd.Math` (import/use), `hxd.impl.ArrayIterator`, `hxsl.Output`
- Utilisé par : `h2d.Anim`, `h2d.Bitmap`, `h2d.Camera`, `h2d.CdbLevel`, `h2d.Console`, `h2d.Drawable`, `h2d.Dropdown`, `h2d.Flow`, `h2d.HtmlText`, `h2d.Interactive`, `h2d.KeyFrames`, `h2d.Layers`, `h2d.Mask`, `h2d.ObjectFollower`, `h2d.Particles`, `h2d.RenderContext`, `h2d.Scene`, `h2d.Sprite`, `h2d.Text`, `h2d.TextInput`, `h2d.TileGroup`, `h2d.Video`, `h2d.ZGroup`, `h2d.domkit.BaseComponents`, `h2d.domkit.Style`, `h2d.filter.AbstractMask`, `h2d.filter.Blur`, `h2d.filter.Filter`, `h2d.filter.Group`, `h2d.filter.Outline`, `h3d.impl.FpsGraph`, `h3d.impl.SceneProf`, `hxd.fmt.pak.Loader`

## h2d.ObjectFollower

- Fichier : `h2d/ObjectFollower.hx` — 213 lignes — 14 blocs doc
- Types : `class ObjectFollower`
- Héritage : `ObjectFollower` extends `Object`
- Dépend de : `h2d.Flow`, `h2d.Object` (extends/use), `h2d.RenderContext`, `h2d.col.Bounds`, `h3d.Engine`, `h3d.Matrix`, `h3d.Vector`, `h3d.mat.Data`, `h3d.scene.Object`

## h2d.Particles

- Fichier : `h2d/Particles.hx` — 769 lignes — 65 blocs doc
- Types : `enum PartSortMode`, `enum PartEmitMode`, `class ParticleShader`, `class Particle`, `class ParticleGroup`, `class Particles`
- Héritage : `ParticleShader` extends `hxsl.Shader`, `Particle` extends `h2d.SpriteBatch.BatchElement`, `Particles` extends `Drawable`
- Dépend de : `h2d.BlendMode`, `h2d.Drawable` (extends/use), `h2d.Object`, `h2d.RenderContext`, `h2d.SpriteBatch` (extends/use), `h2d.Tile`, `h3d.Engine`, `h3d.mat.Texture`, `hxd.Math`, `hxd.res.Loader`, `hxsl.Shader` (extends/use)

## h2d.RenderContext

- Fichier : `h2d/RenderContext.hx` — 828 lignes — 40 blocs doc — contient du `#if`
- Types : `typedef ViewportStackEntry`, `typedef CameraStackEntry`, `typedef TargetStackEntry`, `typedef RenderZoneStack`, `typedef FilterStack`, `class RenderContext`
- Héritage : `RenderContext` extends `h3d.impl.RenderContext`
- Dépend de : `h2d.BlendMode`, `h2d.Camera`, `h2d.Drawable`, `h2d.Object`, `h2d.Scene`, `h2d.Tile`, `h2d.col.Bounds`, `h2d.col.Point`, `h3d.Buffer`, `h3d.impl.RenderContext` (extends/use), `h3d.impl.SceneProf`, `h3d.mat.Pass`, `h3d.mat.Texture`, `h3d.pass.OutputShader`, `h3d.shader.Base2d`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.Math`, `hxsl.Channel`, `hxsl.RuntimeShader`, `hxsl.ShaderList`
- Utilisé par : `h2d.Anim`, `h2d.Bitmap`, `h2d.Camera`, `h2d.CdbLevel`, `h2d.Console`, `h2d.Drawable`, `h2d.Flow`, `h2d.Graphics`, `h2d.HtmlText`, `h2d.Interactive`, `h2d.KeyFrames`, `h2d.Layers`, `h2d.Mask`, `h2d.Object`, `h2d.ObjectFollower`, `h2d.Particles`, `h2d.ScaleGrid`, `h2d.Scene`, `h2d.Scene3D`, `h2d.Slider`, `h2d.SpriteBatch`, `h2d.Text`, `h2d.TextInput`, `h2d.TileGroup`, `h2d.Video`, `h2d.ZGroup`, `h2d.filter.AbstractMask`, `h2d.filter.Ambient`, `h2d.filter.Bloom`, `h2d.filter.Blur`, `h2d.filter.ColorMatrix`, `h2d.filter.Displacement`, `h2d.filter.DropShadow`, `h2d.filter.Filter`, `h2d.filter.Glow`, `h2d.filter.Group`, `h2d.filter.InnerGlow`, `h2d.filter.Mask`, `h2d.filter.Nothing`, `h2d.filter.Outline`, `h2d.filter.Shader`, `h2d.filter.ToneMapping`, `h2d.impl.BatchDrawState`, `hxd.fmt.pak.Loader`

## h2d.ScaleGrid

- Fichier : `h2d/ScaleGrid.hx` — 388 lignes — 14 blocs doc
- Types : `class ScaleGrid`
- Héritage : `ScaleGrid` extends `h2d.TileGroup`
- Dépend de : `h2d.RenderContext`, `h2d.Tile`, `h2d.TileGroup` (extends/use)
- Utilisé par : `h2d.Flow`, `h2d.domkit.BaseComponents`

## h2d.Scene

- Fichier : `h2d/Scene.hx` — 940 lignes — 53 blocs doc — contient du `#if`
- Types : `enum ScaleModeAlign`, `enum ScaleMode`, `class Scene`
- Héritage : `Scene` extends `Layers`, `Scene` implements `h3d.IDrawable`, `Scene` implements `hxd.SceneEvents.InteractiveScene`
- Dépend de : `h2d.Bitmap`, `h2d.Camera`, `h2d.Interactive`, `h2d.Layers` (extends/use), `h2d.Object`, `h2d.RenderContext`, `h2d.Tile`, `h2d.col.Bounds`, `h2d.col.Point`, `h3d.Engine`, `h3d.IDrawable` (implements/use), `h3d.impl.RenderContext`, `h3d.impl.SceneProf`, `h3d.mat.Texture`, `hxd.Math` (import/use), `hxd.Pad`, `hxd.SceneEvents` (implements/use), `hxd.Window.js`, `hxsl.Output`
- Utilisé par : `h2d.Camera`, `h2d.Interactive`, `h2d.LoadingScene`, `h2d.Object`, `h2d.RenderContext`, `h2d.Scene3D`, `hxd.App`, `hxd.fmt.pak.Loader`

## h2d.Scene3D

- Fichier : `h2d/Scene3D.hx` — 156 lignes — 7 blocs doc
- Types : `class Scene3D`
- Héritage : `Scene3D` extends `h2d.Flow`
- Dépend de : `h2d.Flow` (extends/use), `h2d.RenderContext`, `h2d.Scene`, `h2d.Tile`, `h3d.mat.Texture`, `h3d.scene.Mesh`, `h3d.scene.Scene`, `h3d.scene.pbr.Renderer`, `hxd.SceneEvents`, `hxd.Timer`

## h2d.Slider

- Fichier : `h2d/Slider.hx` — 132 lignes — 8 blocs doc
- Types : `class Slider`
- Héritage : `Slider` extends `h2d.Interactive`
- Dépend de : `h2d.Interactive` (extends/use), `h2d.RenderContext`, `h2d.Tile`, `hxd.Pad`

## h2d.Sprite

- Fichier : `h2d/Sprite.hx` — 8 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef Sprite`
- Dépend de : `h2d.Object`

## h2d.SpriteBatch

- Fichier : `h2d/SpriteBatch.hx` — 480 lignes — 33 blocs doc
- Types : `class ElementsIterator`, `class BatchElement`, `class BasicElement`, `class SpriteBatch`
- Héritage : `BasicElement` extends `BatchElement`, `SpriteBatch` extends `Drawable`
- Dépend de : `h2d.Drawable` (extends/use), `h2d.RenderContext` (import/use), `h2d.Tile`, `h2d.impl.BatchDrawState` (import/use), `h3d.Buffer`, `hxd.BufferFormat`, `hxd.FloatBuffer`
- Utilisé par : `h2d.Particles`

## h2d.Text

- Fichier : `h2d/Text.hx` — 580 lignes — 27 blocs doc
- Types : `enum Align`, `class Text`
- Héritage : `Text` extends `Drawable`
- Dépend de : `h2d.Drawable` (extends/use), `h2d.Font`, `h2d.Object`, `h2d.RenderContext`, `h2d.Tile`, `h2d.TileGroup`, `h2d.col.Bounds`, `h3d.shader.SignedDistanceField`, `hxd.Math`
- Utilisé par : `h2d.CheckBox`, `h2d.Console`, `h2d.HtmlText`, `h2d.TextInput`, `h2d.domkit.BaseComponents`, `h2d.domkit.Style`, `h3d.impl.Benchmark`, `h3d.impl.FpsGraph`

## h2d.TextInput

- Fichier : `h2d/TextInput.hx` — 969 lignes — 40 blocs doc
- Types : `typedef TextHistoryElement`, `class TextInput`
- Héritage : `TextInput` extends `Text`
- Dépend de : `h2d.Font`, `h2d.Interactive`, `h2d.Object`, `h2d.RenderContext`, `h2d.Text` (extends/use), `h2d.Tile`, `h2d.col.Bounds`, `h2d.col.Point`, `hxd.Key` (import/use), `hxd.Math`, `hxd.Pad`, `hxd.System.js`
- Utilisé par : `h2d.Console`, `h2d.domkit.BaseComponents`

## h2d.Tile

- Fichier : `h2d/Tile.hx` — 445 lignes — 35 blocs doc — contient du `#if`
- Types : `class Tile`
- Dépend de : `h3d.mat.Texture`, `hxd.BitmapData`, `hxd.Pixels`
- Utilisé par : `h2d.Anim`, `h2d.Bitmap`, `h2d.CdbLevel`, `h2d.CheckBox`, `h2d.Console`, `h2d.Drawable`, `h2d.Dropdown`, `h2d.Flow`, `h2d.Font`, `h2d.Graphics`, `h2d.HtmlText`, `h2d.Interactive`, `h2d.KeyFrames`, `h2d.Object`, `h2d.Particles`, `h2d.RenderContext`, `h2d.ScaleGrid`, `h2d.Scene`, `h2d.Scene3D`, `h2d.Slider`, `h2d.SpriteBatch`, `h2d.Text`, `h2d.TextInput`, `h2d.TileGroup`, `h2d.Video`, `h2d.domkit.BaseComponents`, `h2d.domkit.Style`, `h2d.filter.AbstractMask`, `h2d.filter.Ambient`, `h2d.filter.Bloom`, `h2d.filter.Blur`, `h2d.filter.ColorMatrix`, `h2d.filter.Displacement`, `h2d.filter.DropShadow`, `h2d.filter.Filter`, `h2d.filter.Glow`, `h2d.filter.Group`, `h2d.filter.InnerGlow`, `h2d.filter.Mask`, `h2d.filter.Nothing`, `h2d.filter.Outline`, `h2d.filter.Shader`, `h2d.filter.ToneMapping`, `h2d.impl.BatchDrawState`, `h3d.impl.Benchmark`, `h3d.impl.TextureCache`, `h3d.parts.Data`, `h3d.parts.Particles`, `hxd.fmt.bfnt.FontParser`, `hxd.fmt.bfnt.Reader`, `hxd.fs.Convert`, `hxd.res.Atlas`, `hxd.res.BDFFont`, `hxd.res.BitmapFont`, `hxd.res.FontBuilder`, `hxd.res.Gradients`, `hxd.res.Image`

## h2d.TileGroup

- Fichier : `h2d/TileGroup.hx` — 728 lignes — 35 blocs doc — contient du `#if`
- Types : `class TileLayerContent`, `class TileGroup`
- Héritage : `TileLayerContent` extends `h3d.prim.Primitive`, `TileGroup` extends `Drawable`
- Dépend de : `h2d.Drawable` (extends/use), `h2d.Object`, `h2d.RenderContext` (import/use), `h2d.Tile`, `h2d.col.Bounds`, `h2d.impl.BatchDrawState` (import/use), `h3d.Buffer`, `h3d.Engine`, `h3d.Vector4`, `h3d.impl.SceneProf`, `h3d.prim.Primitive` (extends/use), `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.Math`, `hxd.impl.Allocator`
- Utilisé par : `h2d.CdbLevel`, `h2d.HtmlText`, `h2d.ScaleGrid`, `h2d.Text`

## h2d.Video

- Fichier : `h2d/Video.hx` — 507 lignes — 29 blocs doc — contient du `#if`
- Types : `enum FrameState`, `typedef Frame`, `class FrameCache`, `class Video`
- Héritage : `Video` extends `Drawable`
- Dépend de : `h2d.Drawable` (extends/use), `h2d.Object`, `h2d.RenderContext`, `h2d.Tile`, `h2d.col.Bounds`, `h3d.impl.GlDriver`, `h3d.mat.Texture`, `hxd.Pixels`, `hxd.res.Resource`
- Utilisé par : `h2d.domkit.BaseComponents`

## h2d.ZGroup

- Fichier : `h2d/ZGroup.hx` — 219 lignes — 2 blocs doc
- Types : `class State`, `class DepthEntry`, `class DepthMap`, `class ZGroup`
- Héritage : `ZGroup` extends `Layers`
- Dépend de : `h2d.Drawable`, `h2d.Layers` (extends/use), `h2d.Object`, `h2d.RenderContext`, `h3d.mat.Data`
