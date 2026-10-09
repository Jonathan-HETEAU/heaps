# hxd.Pad

**class** · package [`hxd`](README.md) · source [`hxd/Pad.hx`](../../../../hxd/Pad.hx)

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

### CONFIG_SDL _(hl/sdl only)_

```haxe
static var CONFIG_SDL:{ start:Int, ranalogY:Int, ranalogX:Int, ranalogClick:Int, names:Array<Null<String>>, dpadUp:Int, dpadRight:Int, dpadLeft:Int, dpadDown:Int, back:Int, analogY:Int, analogX:Int, analogClick:Int, Y:Int, X:Int, RT:Int, RB:Int, LT:Int, LB:Int, B:Int, A:Int }
```

Works with both DualShock and XBox controllers

### ANALOG_BUTTON_THRESHOLDS _(hl/sdl, hl/directx only)_

```haxe
static var ANALOG_BUTTON_THRESHOLDS:{ release:Float, press:Float }
```

## Static methods

### pickConfig _(js only)_

```haxe
static function pickConfig(name:String):PadConfig
```

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

### name

```haxe
var name(get, null):String
```

### index

```haxe
var index:Int
```

### config

```haxe
var config:PadConfig
```

### xAxis

```haxe
var xAxis(get, null):Float
```

### yAxis

```haxe
var yAxis(get, null):Float
```

### rxAxis

```haxe
var rxAxis(get, null):Float
```

### ryAxis

```haxe
var ryAxis(get, null):Float
```

### axisDeadZone

```haxe
var axisDeadZone:Float
```

### buttons

```haxe
var buttons:Array<Bool>
```

### values

```haxe
var values:Array<Float>
```

### prevValues

```haxe
var prevValues:Array<Float>
```

## Methods

### onDisconnect

```haxe
dynamic function onDisconnect():Void
```

### isDown

```haxe
function isDown(button:Int):Bool
```

### isPressed

```haxe
function isPressed(button:Int):Bool
```

### isReleased

```haxe
function isReleased(button:Int):Bool
```

### reset

```haxe
function reset():Void
```

### rumble

```haxe
function rumble(strength:Float, time_s:Float):Void
```
