# hxd.tools.RenderDoc

**class** · package [`hxd.tools`](README.md) · source [`hxd/tools/RenderDoc.hx`](../../../../../hxd/tools/RenderDoc.hx) · available on hl/sdl, hl/directx

RenderDoc In-application API

Usage: Install RenderDoc and place/copy it's lib file in your PATH (e.g. `renderdoc.dll` for Windows).

## Static methods

### init

```haxe
static function init():Bool
```

Loads the RenderDoc library. Returns `false` if it is not available.

### setCaptureKeys

```haxe
static function setCaptureKeys(keys:Array<RenderDocInputButton>):Bool
```

Sets the keys triggering a capture.

### setCaptureFilePathTemplate

```haxe
static function setCaptureFilePathTemplate(pathTemplate:String):Bool
```

Sets the path template of the capture files.

### getCaptureFilePathTemplate

```haxe
static function getCaptureFilePathTemplate():String
```

Returns the path template of the capture files.

### getNumCaptures

```haxe
static function getNumCaptures():Int
```

Returns the number of captures made.

### getCapture

```haxe
static function getCapture(index:Int):String
```

Returns the file path of the capture, or `null`.

### triggerCapture

```haxe
static function triggerCapture():Bool
```

Captures the next frame.

### isTargetControlConnected

```haxe
static function isTargetControlConnected():Bool
```

Tells if the RenderDoc UI is connected to the application.

### launchReplayUi

```haxe
static function launchReplayUi(connectTargetControl:Bool, cmdline:String):Bool
```

Launches the RenderDoc UI, optionally connected to the application.

### startFrameCapture

```haxe
static function startFrameCapture(device:Dynamic, wndHandle:Dynamic):Bool
```

Pass `null` to use default

### isFrameCapturing

```haxe
static function isFrameCapturing():Bool
```

Tells if a frame is being captured.

### endFrameCapture

```haxe
static function endFrameCapture(device:Dynamic, wndHandle:Dynamic):Bool
```

Ends the capture started with `startFrameCapture`. Pass `null` to use the default device and window.
