# Package `hxd`

[← API index](../README.md)

Sub-packages: [`hxd.clipper`](clipper/README.md), [`hxd.earcut`](earcut/README.md), [`hxd.fs`](fs/README.md), [`hxd.impl`](impl/README.md), [`hxd.net`](net/README.md), [`hxd.poly2tri`](poly2tri/README.md), [`hxd.res`](res/README.md), [`hxd.snd`](snd/README.md), [`hxd.tools`](tools/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`App`](App.md) | class | Base class for a Heaps application. |
| [`BitmapData`](BitmapData.md) | class | A CPU image that can be drawn into, used for icons, cursors and fonts. |
| [`BitmapInnerData`](BitmapInnerData.md) | typedef | The native data of a `BitmapData`: a canvas 2D context on JS, an array of pixels on other targets. |
| [`BitmapInnerDataImpl`](BitmapInnerDataImpl.md) | class | The native data of a `BitmapData` on non JS targets: an array of 32 bit pixels. |
| [`BrowseOptions`](BrowseOptions.md) | typedef | Options for `File.browse` and `File.saveAs`. |
| [`BrowseSelect`](BrowseSelect.md) | typedef | The file selected by `File.browse`. |
| [`BufferFormat`](BufferFormat.md) | class | The vertex layout of a `h3d.Buffer`: the list of its inputs. |
| [`BufferInput`](BufferInput.md) | class | An input (vertex attribute) of a `BufferFormat`: its name, type and precision. |
| [`BufferMapping`](BufferMapping.md) | abstract | The location of a shader input in the buffers of a mesh: the index of the buffer, the byte offset in a vertex, and the precision. |
| [`ByteConversions`](ByteConversions.md) | class | * Tries to provide consistent access to haxe.io.bytes from any primitive |
| [`BytesBuffer`](BytesBuffer.md) | abstract | A growable byte buffer for writing binary data. |
| [`Channel`](Channel.md) | enum abstract | A color channel. |
| [`Charset`](Charset.md) | class | Character set helpers used by the fonts: the default characters, the fallback characters used when a glyph is missing (for instance curly quotes replaced by straight ones), and line breaking rules (spaces, CJK charact... |
| [`Cursor`](Cursor.md) | enum | A mouse cursor (see `hxd.System.setCursor` and `h2d.Interactive.cursor`). |
| [`CustomCursor`](CustomCursor.md) | class | A cursor made of bitmaps, possibly animated. |
| [`Direction`](Direction.md) | enum abstract | One of the 4 directions on a 2D grid, with Y pointing down. |
| [`DisplayMode`](DisplayMode.md) | enum | How the window is displayed (see `Window.displayMode`). |
| [`DisplaySetting`](DisplaySetting.md) | typedef | A display mode of a monitor: resolution and refresh rate. |
| [`DropFileEvent`](DropFileEvent.md) | class | The drag&drop operation event. |
| [`DroppedFile`](DroppedFile.md) | class | The information about the dropped file. |
| [`Event`](Event.md) | class | An input event, sent by the window and dispatched to the interactives by `SceneEvents`. |
| [`EventKind`](EventKind.md) | enum | The kinds of `Event`. |
| [`File`](File.md) | class | Cross-platform file access. |
| [`Flags`](Flags.md) | enum | Flags of a `Pixels`. |
| [`FloatBuffer`](FloatBuffer.md) | abstract | A growable array of 32-bit floats, used to build vertex data. |
| [`FloatBufferLoader`](FloatBufferLoader.md) | class | Writes values sequentially into a `FloatBuffer`, starting at a given position. |
| [`IndexBuffer`](IndexBuffer.md) | abstract | A growable array of integer indexes, used to build index data. |
| [`InputFormat`](InputFormat.md) | enum abstract | The type of a buffer input. |
| [`Interactive`](Interactive.md) | interface | An object which can receive events from `SceneEvents`, such as `h2d.Interactive` and `h3d.scene.Interactive`. |
| [`InteractiveScene`](InteractiveScene.md) | interface | A scene which can receive events from `SceneEvents`, such as `h2d.Scene` and `h3d.scene.Scene`. |
| [`Key`](Key.md) | class | The key codes, and the state of the keyboard and mouse buttons, to poll in the update loop. |
| [`KeyboardLayout`](KeyboardLayout.md) | enum | The detected keyboard layout (see `System.getKeyboardLayout`). |
| [`Math`](Math.md) | class | Math helpers, inlined where possible: most functions call `std.Math`, with `Int` and `Float` variants and game-oriented additions (angles, interpolation, random). |
| [`Monitor`](Monitor.md) | typedef | A monitor, as returned by `Window.getMonitors`. |
| [`MultiFormat`](MultiFormat.md) | class | The combination of the formats of several buffers, used to draw a mesh with more than one vertex buffer. |
| [`MultiFormatCache`](MultiFormatCache.md) | typedef | The cache of `MultiFormat.make`, indexed by format uids. |
| [`Pad`](Pad.md) | class | A game pad (controller). |
| [`PadConfig`](PadConfig.md) | typedef | The mapping of the buttons and axes of a game pad: each field is the index of the button or axis in `Pad.buttons` and `Pad.values`. |
| [`Perlin`](Perlin.md) | class | Gradient (Perlin) noise generator in 1D, 2D and 3D, with fractal (multi-octave) and ridged variants. |
| [`PixelFormat`](PixelFormat.md) | enum | The pixel formats of textures and `Pixels`: color formats (8 bits, half and full floats per channel), compressed formats (`S3TC`) and depth formats. |
| [`Pixels`](Pixels.md) | class | An image in CPU memory: its bytes, size and `PixelFormat`. |
| [`PixelsARGB`](PixelsARGB.md) | abstract | `Pixels` converted to the `ARGB` format, with fast pixel access. |
| [`PixelsFloat`](PixelsFloat.md) | abstract | `Pixels` converted to the `R32F` format, with fast pixel access. |
| [`PixelsFloatRGBA`](PixelsFloatRGBA.md) | abstract | `Pixels` converted to the `RGBA32F` format, with fast pixel access. |
| [`Platform`](Platform.md) | enum | The kind of platform the application runs on (see `System.platform`). |
| [`Precision`](Precision.md) | enum abstract | The storage precision of a buffer input. |
| [`Rand`](Rand.md) | class | `hxd.Rand` is a seeded random number generator, that allows to get always the same results starting from a given seed. |
| [`Save`](Save.md) | class | Save provides simple interface to save and load serialized user data. |
| [`SceneEvents`](SceneEvents.md) | class | Dispatches the window input events to the interactives of one or more scenes. |
| [`System`](System.md) | class | Platform-specific services: main loop, cursor, clipboard, locale, and screen information. |
| [`SystemValue`](SystemValue.md) | enum | Boolean system properties, queried with `System.getValue`. |
| [`Timer`](Timer.md) | class | The Timer class acts as a global time measurement that can be accessed from various parts of the engine. |
| [`WaitEvent`](WaitEvent.md) | class | A list of callbacks updated every frame, to run code after a delay or until a condition is met. |
| [`Window`](Window.md) | class | The application window, which receives the input events and resize notifications. |
