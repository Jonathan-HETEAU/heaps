# hxd.Pad

**class** · package [`hxd`](README.md) · source [`hxd/Pad.hx`](../../../../hxd/Pad.hx)

A game pad (controller). Use `Pad.wait` to be notified of connected pads, and read `buttons`, `values` and the axes every frame.
`Pad.createDummy` returns an unconnected pad that can be used before a real one is connected.

## Static variables

### CONFIG_JS_STD _(js only)_

```haxe
static var CONFIG_JS_STD:{ start:Int, ranalogY:Int, ranalogX:Int, ranalogClick:Int, names:Array<String>, dpadUp:Int, dpadRight:Int, dpadLeft:Int, dpadDown:Int, back:Int, analogY:Int, analogX:Int, analogClick:Int, Y:Int, X:Int, RT:Int, RB:Int, LT:Int, LB:Int, B:Int, A:Int }
```

Standard mapping

### CONFIG_JS_DS4 _(js only)_

```haxe
static var CONFIG_JS_DS4:{ start:Int, ranalogY:Int, ranalogX:Int, ranalogClick:Int, names:Array<String>, dpadUp:Int, dpadRight:Int, dpadLeft:Int, dpadDown:Int, back:Int, analogY:Int, analogX:Int, analogClick:Int, Y:Int, X:Int, RT:Int, RB:Int, LT:Int, LB:Int, B:Int, A:Int }
```

Mapping for Dualshock 4

### CONFIG_JS_DS4_FF _(js only)_

```haxe
static var CONFIG_JS_DS4_FF:{ start:Int, ranalogY:Int, ranalogX:Int, ranalogClick:Int, names:Array<String>, dpadUp:Int, dpadRight:Int, dpadLeft:Int, dpadDown:Int, back:Int, analogY:Int, analogX:Int, analogClick:Int, Y:Int, X:Int, RT:Int, RB:Int, LT:Int, LB:Int, B:Int, A:Int }
```

Mapping for Dualshock 4 (Firefox)

D-Pad isn't working

### DEFAULT_CONFIG

```haxe
static var DEFAULT_CONFIG:PadConfig
```

The default configuration for the current platform.

### CONFIG_SDL _(hl/sdl only)_

```haxe
static var CONFIG_SDL:{ start:Int, ranalogY:Int, ranalogX:Int, ranalogClick:Int, names:Array<Null<String>>, dpadUp:Int, dpadRight:Int, dpadLeft:Int, dpadDown:Int, back:Int, analogY:Int, analogX:Int, analogClick:Int, Y:Int, X:Int, RT:Int, RB:Int, LT:Int, LB:Int, B:Int, A:Int }
```

Works with both DualShock and XBox controllers

### ANALOG_BUTTON_THRESHOLDS _(hl/sdl, hl/directx only)_

```haxe
static var ANALOG_BUTTON_THRESHOLDS:{ release:Float, press:Float }
```

The values at which an analog input (trigger or axis) is considered as pressed and released in `buttons`.

## Static methods

### pickConfig _(js only)_

```haxe
static function pickConfig(name:String):PadConfig
```

Returns the configuration matching the pad name reported by the browser.

### createDummy

```haxe
static function createDummy():Pad
```

Creates a new dummy unconnected game pad, which can be used instead of checking for null everytime. Use wait() to get real physical game pad access.

### wait

```haxe
static function wait(onPad:() -> Void):Void
```

Wait until a gamepad gets connected. On some platforms, this might require the user to press a button until it activates

## Variables

### connected

```haxe
var connected(default, null):Bool
```

Tells if the pad is connected. It is `false` for a dummy pad and after a disconnection.

### name

```haxe
var name(get, null):String
```

The name of the pad, as reported by the system.

### index

```haxe
var index:Int
```

The index of the pad, or `-1` for a dummy pad.

### config

```haxe
var config:PadConfig
```

The mapping of the buttons and axes, used to read `buttons` and `values` by name, as in `pad.isDown(pad.config.A)`.

### xAxis

```haxe
var xAxis(get, null):Float
```

The X axis of the left stick, from `-1` to `1`. It is `0` when the stick is inside `axisDeadZone`.

### yAxis

```haxe
var yAxis(get, null):Float
```

The Y axis of the left stick, from `-1` to `1`. It is `0` when the stick is inside `axisDeadZone`.

### rxAxis

```haxe
var rxAxis(get, null):Float
```

The X axis of the right stick, from `-1` to `1`. It is `0` when the stick is inside `axisDeadZone`.

### ryAxis

```haxe
var ryAxis(get, null):Float
```

The Y axis of the right stick, from `-1` to `1`. It is `0` when the stick is inside `axisDeadZone`.

### axisDeadZone

```haxe
var axisDeadZone:Float
```

The radius around the center under which the sticks report `0`.

### buttons

```haxe
var buttons:Array<Bool>
```

The state of each button, indexed as in `config`.

### values

```haxe
var values:Array<Float>
```

The value of each button (`0` to `1`) or axis (`-1` to `1`), indexed as in `config`.

### prevValues

```haxe
var prevValues:Array<Float>
```

The values of the previous frame.

## Methods

### onDisconnect

```haxe
dynamic function onDisconnect():Void
```

Called when the pad is disconnected.

### isDown

```haxe
function isDown(button:Int):Bool
```

Tells if the button is down.

### isPressed

```haxe
function isPressed(button:Int):Bool
```

Tells if the button was pressed since the previous frame.

### isReleased

```haxe
function isReleased(button:Int):Bool
```

Tells if the button was released since the previous frame.

### reset

```haxe
function reset():Void
```

Resets all buttons and axes to their released state.

### rumble

```haxe
function rumble(strength:Float, time_s:Float):Void
```

Makes the pad vibrate with the given `strength` (`0` to `1`) for `time_s` seconds, if supported.
