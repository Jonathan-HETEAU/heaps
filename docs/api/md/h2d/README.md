# Package `h2d`

[← API index](../README.md)

Sub-packages: [`h2d.col`](col/README.md), [`h2d.filter`](filter/README.md), [`h2d.impl`](impl/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Align`](Align.md) | enum | `Text` alignment rules. |
| [`Anim`](Anim.md) | class | Displays an animated sequence of bitmap Tiles on the screen. |
| [`BasicElement`](BasicElement.md) | class | A simple `BatchElement` that provides primitive simulation of velocity, friction and gravity. |
| [`BatchElement`](BatchElement.md) | class | A base class for `SpriteBatch` elements which can be extended with custom logic. |
| [`Bitmap`](Bitmap.md) | class | Displays a single bitmap Tile on the screen. |
| [`BlendMode`](BlendMode.md) | enum | The blending rules when rendering a Tile/Material. |
| [`Camera`](Camera.md) | class | A 2D camera representation attached to `h2d.Scene`. |
| [`CdbLevel`](CdbLevel.md) | class | A decoder and renderer for levels created with the CastleDB 2D level editor. |
| [`CheckBox`](CheckBox.md) | class | A simple Interactive checkbox button with a label. |
| [`Console`](Console.md) | class | A simple debug console integration. |
| [`ConsoleArg`](ConsoleArg.md) | enum | The console argument type. |
| [`ConsoleArgDesc`](ConsoleArgDesc.md) | typedef | A descriptor for an argument of a console command. |
| [`Drawable`](Drawable.md) | class | A base class for all 2D objects that will draw something on the screen. |
| [`Dropdown`](Dropdown.md) | class | A simple UI component that creates an interactive drop-down list. |
| [`Flow`](Flow.md) | class | An automatic layout system. |
| [`FlowAlign`](FlowAlign.md) | enum | `Flow` content alignment rules. |
| [`FlowLayout`](FlowLayout.md) | enum | The `Flow.layout` type. |
| [`FlowOverflow`](FlowOverflow.md) | enum | The `Flow.overflow` rules. |
| [`FlowProperties`](FlowProperties.md) | class | An individual `Flow` element properties. |
| [`Font`](Font.md) | class | An instance of a text font. |
| [`FontChar`](FontChar.md) | class | A single `Font` character descriptor. |
| [`FontType`](FontType.md) | enum | The rendering type of the of the `Font` instance. |
| [`Graphics`](Graphics.md) | class | A simple interface to draw arbitrary 2D geometry. |
| [`HtmlText`](HtmlText.md) | class | A simple HTML text renderer. |
| [`ImageVerticalAlign`](ImageVerticalAlign.md) | enum | `HtmlText` img tag vertical alignment rules. |
| [`Interactive`](Interactive.md) | class | A user input handler. |
| [`Kerning`](Kerning.md) | class | A `FontChar` kerning information as well as linked list of kernings. |
| [`KeyFrames`](KeyFrames.md) | class | Adobe After effect player, see [Keyframes](https://github.com/heapsio/keyframes/) library. |
| [`KeyframesLayer`](KeyframesLayer.md) | typedef | [Keyframes](https://github.com/heapsio/keyframes/) integration; A `KeyFrames` animation layer. |
| [`LayerSpec`](LayerSpec.md) | typedef | [CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder. |
| [`Layers`](Layers.md) | class | A layer-based container for Objects. |
| [`LevelGroup`](LevelGroup.md) | class | [CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder. |
| [`LevelLayer`](LevelLayer.md) | class | [CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder. |
| [`LevelLayerData`](LevelLayerData.md) | enum | [CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder. |
| [`LevelObject`](LevelObject.md) | class | [CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder. |
| [`LevelObjectInstance`](LevelObjectInstance.md) | class | [CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder. |
| [`LevelSpec`](LevelSpec.md) | typedef | [CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder. |
| [`LevelTileset`](LevelTileset.md) | class | [CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder. |
| [`LineHeightMode`](LineHeightMode.md) | enum | The `HtmlText` line height calculation rules. |
| [`LoadingScene`](LoadingScene.md) | class | A scene that can be rendered during a long synchronous loading: each call to `render` processes the window events and presents the frame, at most once every `presentCooldown` seconds. |
| [`Mask`](Mask.md) | class | Restricts rendering area within the `[width, height]` rectangle. |
| [`Object`](Object.md) | class | A base 2D class that all scene tree elements inherit from. |
| [`ObjectFollower`](ObjectFollower.md) | class | Follows the 3D object position in current 3D camera, synchronizing the follower position to projected 2D position of the followed object. |
| [`PartEmitMode`](PartEmitMode.md) | enum | The particle emission pattern modes. |
| [`ParticleGroup`](ParticleGroup.md) | class | An emitter of a single particle group. |
| [`Particles`](Particles.md) | class | A 2D particle system with wide range of customizability. |
| [`RenderContext`](RenderContext.md) | class | A 2D scene renderer. |
| [`SDFChannel`](SDFChannel.md) | enum abstract | Channel reading method for `FontType.SignedDistanceField`. |
| [`ScaleGrid`](ScaleGrid.md) | class | A simple 9-slice bitmap renderer. |
| [`ScaleMode`](ScaleMode.md) | enum | Scaling mode of the 2D Scene. |
| [`ScaleModeAlign`](ScaleModeAlign.md) | enum | Viewport alignment when scaling mode supports it. |
| [`Scene`](Scene.md) | class | The root class for a 2D scene. |
| [`Scene3D`](Scene3D.md) | class | A flow displaying its own 3D scene (and 2D scene above it), rendered into a texture of the size of the flow. |
| [`Slider`](Slider.md) | class | A simple interactive horizontal numerical slider. |
| [`SpriteBatch`](SpriteBatch.md) | class | An active batched tile renderer. |
| [`Text`](Text.md) | class | A basic text renderer with multiline support. |
| [`TextInput`](TextInput.md) | class | A skinnable text input handler. |
| [`Tile`](Tile.md) | class | A core 2D rendering component representing a region of an underlying `h3d.mat.Texture`. |
| [`TileGroup`](TileGroup.md) | class | A static Tile batch renderer. |
| [`TileSpec`](TileSpec.md) | typedef | [CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder. |
| [`Video`](Video.md) | class | A video file playback Drawable. |
| [`ZGroup`](ZGroup.md) | class | An advanced double-pass rendering class that utilizes a z-culling on an opaque objects. |
