# hxd.System

**class** · package [`hxd`](README.md) · source [`hxd/System.js.hx`](../../../../hxd/System.js.hx)

Platform-specific services: main loop, cursor, clipboard, locale, and screen information.
Each target has its own implementation (`System.hl.hx`, `System.js.hx`).

## Static variables

### width

```haxe
static var width(get, null):Int
```

The width of the screen in pixels (of the page on JS: the body width multiplied by the device pixel ratio).

### height

```haxe
static var height(get, null):Int
```

The height of the screen in pixels (of the page on JS: the body height multiplied by the device pixel ratio).

### lang

```haxe
static var lang(get, null):String
```

The language code of the user, such as `"en"`.

### platform

```haxe
static var platform(get, null):Platform
```

The platform the application runs on.

### screenDPI

```haxe
static var screenDPI(get, null):Float
```

The resolution of the screen in dots per inch (currently always `72`).

### setCursor

```haxe
static var setCursor:(c:Cursor) -> Void
```

Sets the current cursor. It can be replaced by a custom function, which should call `setNativeCursor` with the cursor to display.

### allowTimeout

```haxe
static var allowTimeout(get, set):Bool
```

Tells if the infinite loop check is enabled. Set it to `false` to temporarily disable it during long computations.

### fpsLimit _(js only)_

```haxe
static var fpsLimit:Int
```

If greater than 0, this will reduce loop framerate to reduce CPU usage

### allowLCID _(hl/sdl, hl/directx only)_

```haxe
static var allowLCID:Bool
```

If set, `lang` keeps the region code for the locales that need it (such as `"zh-TW"` for traditional Chinese).

## Static methods

### timeoutTick

```haxe
static function timeoutTick():Void
```

Notifies the infinite loop check that the application is still running. Call it frequently during long computations, or disable `allowTimeout`.

### getCurrentLoop

```haxe
static function getCurrentLoop():() -> Void
```

Returns the function called every frame, set with `setLoop`.

### setLoop

```haxe
static function setLoop(f:() -> Void):Void
```

Sets the function called every frame by the main loop.

### start

```haxe
static function start(callb:() -> Void):Void
```

Initializes the system and calls the given function. On HashLink, the window is created with `createWindow` first, and the main loop then runs until the application exits. Called by `hxd.App`.

### setNativeCursor

```haxe
static function setNativeCursor(c:Cursor):Void
```

Sets the displayed cursor. Meant to be called by a custom `setCursor`: calling it outside of the automatic interactive cursor update leads to undefined behavior.

### getDeviceName

```haxe
static function getDeviceName():String
```

Returns a description of the device, such as `"PC/"` followed by the graphics device name (`"Unknown"` on JS).

### getDefaultFrameRate

```haxe
static function getDefaultFrameRate():Float
```

Returns the default frame rate of the platform.

### getValue

```haxe
static function getValue(s:SystemValue):Bool
```

Returns the value of a system property.

### exit

```haxe
static function exit():Void
```

Exits the application (does nothing on JS).

### openURL

```haxe
static function openURL(url:String):Void
```

Opens the URL in the default browser (in a new tab on JS).

### getClipboardText

```haxe
static dynamic function getClipboardText():String
```

Returns the text in the system clipboard, or `null` if not supported. On JS, returns the last text set with `setClipboardText`, since the browser clipboard can't be read synchronously.

### setClipboardText

```haxe
static dynamic function setClipboardText(text:String):Bool
```

Sets the text in the system clipboard. Returns `false` if not supported.

### getLocale

```haxe
static function getLocale():String
```

Returns the locale of the user, including the region code (such as `"en-US"`), based on the system or browser language.

### getKeyboardLayout

```haxe
static function getKeyboardLayout():KeyboardLayout
```

Returns the detected keyboard layout, or `Unknown` if it can't be detected (always on JS). The value isn't reliable on SDL without a window.

### onKeyboardLayoutChange

```haxe
static dynamic function onKeyboardLayoutChange():Void
```

Called when the keyboard layout changes.

### createWindow _(hl/sdl, hl/directx only)_

```haxe
static dynamic function createWindow():Window
```

Creates the main window. Its size and title can be set with the `-D windowSize=WIDTHxHEIGHT`, `-D windowTitle=...` and `-D windowFixed=1` defines. Can be replaced to customize the window.

### onReload _(hl/sdl, hl/directx only)_

```haxe
static dynamic function onReload():Void
```

onReload() is called when app hot reload is enabled with -D hot-reload and is also enabled when running hashlink.
The later can be done by running `hl --hot-reload` or by setting hotReload:true in VSCode launch props.

### reportError _(hl/sdl, hl/directx only)_

```haxe
static dynamic function reportError(e:Dynamic):Void
```

Called when an uncaught exception occurs in the main loop. By default, writes the error and its call stack to stderr, and on Windows also shows them in a dialog. Can be replaced to log or report errors.
