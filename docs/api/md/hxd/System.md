# hxd.System

**class** · package [`hxd`](README.md) · source [`hxd/System.js.hx`](../../../../hxd/System.js.hx)

## Static variables

### width

```haxe
static var width(get, null):Int
```

### height

```haxe
static var height(get, null):Int
```

### lang

```haxe
static var lang(get, null):String
```

### platform

```haxe
static var platform(get, null):Platform
```

### screenDPI

```haxe
static var screenDPI(get, null):Float
```

### setCursor

```haxe
static var setCursor:(c:Cursor) -> Void
```

### allowTimeout

```haxe
static var allowTimeout(get, set):Bool
```

### fpsLimit _(js only)_

```haxe
static var fpsLimit:Int
```

If greater than 0, this will reduce loop framerate to reduce CPU usage

### allowLCID _(hl/sdl, hl/directx only)_

```haxe
static var allowLCID:Bool
```

## Static methods

### timeoutTick

```haxe
static function timeoutTick():Void
```

### getCurrentLoop

```haxe
static function getCurrentLoop():() -> Void
```

### setLoop

```haxe
static function setLoop(f:() -> Void):Void
```

### start

```haxe
static function start(callb:() -> Void):Void
```

### setNativeCursor

```haxe
static function setNativeCursor(c:Cursor):Void
```

### getDeviceName

```haxe
static function getDeviceName():String
```

### getDefaultFrameRate

```haxe
static function getDefaultFrameRate():Float
```

### getValue

```haxe
static function getValue(s:SystemValue):Bool
```

### exit

```haxe
static function exit():Void
```

### openURL

```haxe
static function openURL(url:String):Void
```

### getClipboardText

```haxe
static dynamic function getClipboardText():String
```

### setClipboardText

```haxe
static dynamic function setClipboardText(text:String):Bool
```

### getLocale

```haxe
static function getLocale():String
```

### getKeyboardLayout

```haxe
static function getKeyboardLayout():KeyboardLayout
```

### onKeyboardLayoutChange

```haxe
static dynamic function onKeyboardLayoutChange():Void
```

### createWindow _(hl/sdl, hl/directx only)_

```haxe
static dynamic function createWindow():Window
```

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
