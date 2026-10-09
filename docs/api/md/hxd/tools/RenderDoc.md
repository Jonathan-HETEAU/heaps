# hxd.tools.RenderDoc

**class** · package [`hxd.tools`](README.md) · source [`hxd/tools/RenderDoc.hx`](../../../../../hxd/tools/RenderDoc.hx) · available on hl/sdl, hl/directx

RenderDoc In-application API

Usage: Install RenderDoc and place/copy it's lib file in your PATH (e.g. `renderdoc.dll` for Windows).

## Static methods

### init

```haxe
static function init():Bool
```

### setCaptureKeys

```haxe
static function setCaptureKeys(keys:Array<RenderDocInputButton>):Bool
```

### setCaptureFilePathTemplate

```haxe
static function setCaptureFilePathTemplate(pathTemplate:String):Bool
```

### getCaptureFilePathTemplate

```haxe
static function getCaptureFilePathTemplate():String
```

### getNumCaptures

```haxe
static function getNumCaptures():Int
```

### getCapture

```haxe
static function getCapture(index:Int):String
```

### triggerCapture

```haxe
static function triggerCapture():Bool
```

### isTargetControlConnected

```haxe
static function isTargetControlConnected():Bool
```

### launchReplayUi

```haxe
static function launchReplayUi(connectTargetControl:Bool, cmdline:String):Bool
```

### startFrameCapture

```haxe
static function startFrameCapture(device:Dynamic, wndHandle:Dynamic):Bool
```

Pass `null` to use default

### isFrameCapturing

```haxe
static function isFrameCapturing():Bool
```

### endFrameCapture

```haxe
static function endFrameCapture(device:Dynamic, wndHandle:Dynamic):Bool
```
