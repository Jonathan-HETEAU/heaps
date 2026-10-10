# hxd.Key

**class** · package [`hxd`](README.md) · source [`hxd/Key.hx`](../../../../hxd/Key.hx)

The key codes, and the state of the keyboard and mouse buttons, to poll in the update loop.
Mouse buttons use the codes `0` to `6`, so they can be tested with the same functions as keys.
For Shift, Ctrl and Alt, both the generic code (`SHIFT`) and the located code (`LSHIFT` or `RSHIFT`) are reported.
`hxd.App` calls `initialize` automatically.

## Static variables

### BACKSPACE

```haxe
static inline var BACKSPACE:Int = 8
```

The Backspace key.

### TAB

```haxe
static inline var TAB:Int = 9
```

The Tab key.

### ENTER

```haxe
static inline var ENTER:Int = 13
```

The Enter key.

### SHIFT

```haxe
static inline var SHIFT:Int = 16
```

The Shift key.

### CTRL

```haxe
static inline var CTRL:Int = 17
```

The Ctrl key.

### ALT

```haxe
static inline var ALT:Int = 18
```

The Alt key.

### ESCAPE

```haxe
static inline var ESCAPE:Int = 27
```

The Escape key.

### SPACE

```haxe
static inline var SPACE:Int = 32
```

The Space key.

### PGUP

```haxe
static inline var PGUP:Int = 33
```

The Page Up key.

### PGDOWN

```haxe
static inline var PGDOWN:Int = 34
```

The Page Down key.

### END

```haxe
static inline var END:Int = 35
```

The End key.

### HOME

```haxe
static inline var HOME:Int = 36
```

The Home key.

### LEFT

```haxe
static inline var LEFT:Int = 37
```

The Left arrow key.

### UP

```haxe
static inline var UP:Int = 38
```

The Up arrow key.

### RIGHT

```haxe
static inline var RIGHT:Int = 39
```

The Right arrow key.

### DOWN

```haxe
static inline var DOWN:Int = 40
```

The Down arrow key.

### INSERT

```haxe
static inline var INSERT:Int = 45
```

The Insert key.

### DELETE

```haxe
static inline var DELETE:Int = 46
```

The Delete key.

### QWERTY_EQUALS

```haxe
static inline var QWERTY_EQUALS:Int = 187
```

The key of the `=` character on QWERTY keyboards.

### QWERTY_MINUS

```haxe
static inline var QWERTY_MINUS:Int = 189
```

The key of the `-` character on QWERTY keyboards.

### QWERTY_TILDE

```haxe
static inline var QWERTY_TILDE:Int = 192
```

The key of the ``` character on QWERTY keyboards.

### QWERTY_BRACKET_LEFT

```haxe
static inline var QWERTY_BRACKET_LEFT:Int = 219
```

The key of the `[` character on QWERTY keyboards.

### QWERTY_BRACKET_RIGHT

```haxe
static inline var QWERTY_BRACKET_RIGHT:Int = 221
```

The key of the `]` character on QWERTY keyboards.

### QWERTY_SEMICOLON

```haxe
static inline var QWERTY_SEMICOLON:Int = 186
```

The key of the `;` character on QWERTY keyboards.

### QWERTY_QUOTE

```haxe
static inline var QWERTY_QUOTE:Int = 222
```

The key of the `'` character on QWERTY keyboards.

### QWERTY_BACKSLASH

```haxe
static inline var QWERTY_BACKSLASH:Int = 220
```

The key of the `\` character on QWERTY keyboards.

### QWERTY_COMMA

```haxe
static inline var QWERTY_COMMA:Int = 188
```

The key of the `,` character on QWERTY keyboards.

### QWERTY_PERIOD

```haxe
static inline var QWERTY_PERIOD:Int = 190
```

The key of the `.` character on QWERTY keyboards.

### QWERTY_SLASH

```haxe
static inline var QWERTY_SLASH:Int = 191
```

The key of the `/` character on QWERTY keyboards.

### INTL_BACKSLASH

```haxe
static inline var INTL_BACKSLASH:Int = 226
```

The backslash key next to the left Shift on some keyboards. Not available on SDL.

### LEFT_WINDOW_KEY

```haxe
static inline var LEFT_WINDOW_KEY:Int = 91
```

The left Windows key.

### RIGHT_WINDOW_KEY

```haxe
static inline var RIGHT_WINDOW_KEY:Int = 92
```

The right Windows key.

### CONTEXT_MENU

```haxe
static inline var CONTEXT_MENU:Int = 93
```

The context menu key.

### AZERTY_DOLLAR

```haxe
static inline var AZERTY_DOLLAR:Int = 186
```

The key of the `$` character on AZERTY keyboards.

### AZERTY_EQUALS

```haxe
static inline var AZERTY_EQUALS:Int = 187
```

The key of the `=` character on AZERTY keyboards.

### AZERTY_COMMA

```haxe
static inline var AZERTY_COMMA:Int = 188
```

The key of the `,` character on AZERTY keyboards.

### AZERTY_SEMICOLON

```haxe
static inline var AZERTY_SEMICOLON:Int = 190
```

The key of the `;` character on AZERTY keyboards.

### AZERTY_COLON

```haxe
static inline var AZERTY_COLON:Int = 191
```

The key of the `:` character on AZERTY keyboards.

### AZERTY_MODULO

```haxe
static inline var AZERTY_MODULO:Int = 192
```

The key of the `ù` character on AZERTY keyboards.

### AZERTY_PARENT_CLOSE

```haxe
static inline var AZERTY_PARENT_CLOSE:Int = 219
```

The key of the `)` character on AZERTY keyboards.

### AZERTY_MULTIPLY

```haxe
static inline var AZERTY_MULTIPLY:Int = 220
```

The key of the `*` character on AZERTY keyboards.

### AZERTY_POWER

```haxe
static inline var AZERTY_POWER:Int = 221
```

The key of the `^` character on AZERTY keyboards.

### AZERTY_SQUARED

```haxe
static inline var AZERTY_SQUARED:Int = 222
```

The key of the `²` character on AZERTY keyboards.

### AZERTY_EXCLAM

```haxe
static inline var AZERTY_EXCLAM:Int = 223
```

The key of the `!` character on AZERTY keyboards.

### PAUSE_BREAK

```haxe
static inline var PAUSE_BREAK:Int = 19
```

The Pause/Break key.

### CAPS_LOCK

```haxe
static inline var CAPS_LOCK:Int = 20
```

The Caps Lock key.

### NUM_LOCK

```haxe
static inline var NUM_LOCK:Int = 144
```

The Num Lock key.

### SCROLL_LOCK

```haxe
static inline var SCROLL_LOCK:Int = 145
```

The Scroll Lock key.

### NUMBER_0

```haxe
static inline var NUMBER_0:Int = 48
```

The 0 key of the main keyboard.

### NUMBER_1

```haxe
static inline var NUMBER_1:Int = 49
```

The 1 key of the main keyboard.

### NUMBER_2

```haxe
static inline var NUMBER_2:Int = 50
```

The 2 key of the main keyboard.

### NUMBER_3

```haxe
static inline var NUMBER_3:Int = 51
```

The 3 key of the main keyboard.

### NUMBER_4

```haxe
static inline var NUMBER_4:Int = 52
```

The 4 key of the main keyboard.

### NUMBER_5

```haxe
static inline var NUMBER_5:Int = 53
```

The 5 key of the main keyboard.

### NUMBER_6

```haxe
static inline var NUMBER_6:Int = 54
```

The 6 key of the main keyboard.

### NUMBER_7

```haxe
static inline var NUMBER_7:Int = 55
```

The 7 key of the main keyboard.

### NUMBER_8

```haxe
static inline var NUMBER_8:Int = 56
```

The 8 key of the main keyboard.

### NUMBER_9

```haxe
static inline var NUMBER_9:Int = 57
```

The 9 key of the main keyboard.

### NUMPAD_0

```haxe
static inline var NUMPAD_0:Int = 96
```

The 0 key of the numeric keypad.

### NUMPAD_1

```haxe
static inline var NUMPAD_1:Int = 97
```

The 1 key of the numeric keypad.

### NUMPAD_2

```haxe
static inline var NUMPAD_2:Int = 98
```

The 2 key of the numeric keypad.

### NUMPAD_3

```haxe
static inline var NUMPAD_3:Int = 99
```

The 3 key of the numeric keypad.

### NUMPAD_4

```haxe
static inline var NUMPAD_4:Int = 100
```

The 4 key of the numeric keypad.

### NUMPAD_5

```haxe
static inline var NUMPAD_5:Int = 101
```

The 5 key of the numeric keypad.

### NUMPAD_6

```haxe
static inline var NUMPAD_6:Int = 102
```

The 6 key of the numeric keypad.

### NUMPAD_7

```haxe
static inline var NUMPAD_7:Int = 103
```

The 7 key of the numeric keypad.

### NUMPAD_8

```haxe
static inline var NUMPAD_8:Int = 104
```

The 8 key of the numeric keypad.

### NUMPAD_9

```haxe
static inline var NUMPAD_9:Int = 105
```

The 9 key of the numeric keypad.

### A

```haxe
static inline var A:Int = 65
```

The A key.

### B

```haxe
static inline var B:Int = 66
```

The B key.

### C

```haxe
static inline var C:Int = 67
```

The C key.

### D

```haxe
static inline var D:Int = 68
```

The D key.

### E

```haxe
static inline var E:Int = 69
```

The E key.

### F

```haxe
static inline var F:Int = 70
```

The F key.

### G

```haxe
static inline var G:Int = 71
```

The G key.

### H

```haxe
static inline var H:Int = 72
```

The H key.

### I

```haxe
static inline var I:Int = 73
```

The I key.

### J

```haxe
static inline var J:Int = 74
```

The J key.

### K

```haxe
static inline var K:Int = 75
```

The K key.

### L

```haxe
static inline var L:Int = 76
```

The L key.

### M

```haxe
static inline var M:Int = 77
```

The M key.

### N

```haxe
static inline var N:Int = 78
```

The N key.

### O

```haxe
static inline var O:Int = 79
```

The O key.

### P

```haxe
static inline var P:Int = 80
```

The P key.

### Q

```haxe
static inline var Q:Int = 81
```

The Q key.

### R

```haxe
static inline var R:Int = 82
```

The R key.

### S

```haxe
static inline var S:Int = 83
```

The S key.

### T

```haxe
static inline var T:Int = 84
```

The T key.

### U

```haxe
static inline var U:Int = 85
```

The U key.

### V

```haxe
static inline var V:Int = 86
```

The V key.

### W

```haxe
static inline var W:Int = 87
```

The W key.

### X

```haxe
static inline var X:Int = 88
```

The X key.

### Y

```haxe
static inline var Y:Int = 89
```

The Y key.

### Z

```haxe
static inline var Z:Int = 90
```

The Z key.

### F1

```haxe
static inline var F1:Int = 112
```

The F1 key.

### F2

```haxe
static inline var F2:Int = 113
```

The F2 key.

### F3

```haxe
static inline var F3:Int = 114
```

The F3 key.

### F4

```haxe
static inline var F4:Int = 115
```

The F4 key.

### F5

```haxe
static inline var F5:Int = 116
```

The F5 key.

### F6

```haxe
static inline var F6:Int = 117
```

The F6 key.

### F7

```haxe
static inline var F7:Int = 118
```

The F7 key.

### F8

```haxe
static inline var F8:Int = 119
```

The F8 key.

### F9

```haxe
static inline var F9:Int = 120
```

The F9 key.

### F10

```haxe
static inline var F10:Int = 121
```

The F10 key.

### F11

```haxe
static inline var F11:Int = 122
```

The F11 key.

### F12

```haxe
static inline var F12:Int = 123
```

The F12 key.

### F13

```haxe
static inline var F13:Int = 124
```

The F13 key.

### F14

```haxe
static inline var F14:Int = 125
```

The F14 key.

### F15

```haxe
static inline var F15:Int = 126
```

The F15 key.

### F16

```haxe
static inline var F16:Int = 127
```

The F16 key.

### F17

```haxe
static inline var F17:Int = 128
```

The F17 key.

### F18

```haxe
static inline var F18:Int = 129
```

The F18 key.

### F19

```haxe
static inline var F19:Int = 130
```

The F19 key.

### F20

```haxe
static inline var F20:Int = 131
```

The F20 key.

### F21

```haxe
static inline var F21:Int = 132
```

The F21 key.

### F22

```haxe
static inline var F22:Int = 133
```

The F22 key.

### F23

```haxe
static inline var F23:Int = 134
```

The F23 key.

### F24

```haxe
static inline var F24:Int = 135
```

The F24 key.

### NUMPAD_MULT

```haxe
static inline var NUMPAD_MULT:Int = 106
```

The `*` key of the numeric keypad.

### NUMPAD_ADD

```haxe
static inline var NUMPAD_ADD:Int = 107
```

The `+` key of the numeric keypad.

### NUMPAD_ENTER

```haxe
static inline var NUMPAD_ENTER:Int = 108
```

The Enter key of the numeric keypad.

### NUMPAD_SUB

```haxe
static inline var NUMPAD_SUB:Int = 109
```

The `-` key of the numeric keypad.

### NUMPAD_DOT

```haxe
static inline var NUMPAD_DOT:Int = 110
```

The `.` key of the numeric keypad.

### NUMPAD_DIV

```haxe
static inline var NUMPAD_DIV:Int = 111
```

The `/` key of the numeric keypad.

### MOUSE_LEFT

```haxe
static inline var MOUSE_LEFT:Int = 0
```

The left mouse button.

### MOUSE_RIGHT

```haxe
static inline var MOUSE_RIGHT:Int = 1
```

The right mouse button.

### MOUSE_MIDDLE

```haxe
static inline var MOUSE_MIDDLE:Int = 2
```

The middle mouse button.

### MOUSE_BACK

```haxe
static inline var MOUSE_BACK:Int = 3
```

The back mouse button.

### MOUSE_FORWARD

```haxe
static inline var MOUSE_FORWARD:Int = 4
```

The forward mouse button.

### MOUSE_WHEEL_UP

```haxe
static inline var MOUSE_WHEEL_UP:Int = 5
```

* Mouse wheel does not have an off signal, and should be checked only through `isPressed` method.
* Note that there may be multiple wheel scrolls between 2 frames, and to receive more accurate
* results, it is recommended to directly listen to wheel events which also provide OS-generated wheel delta value.
* See `Interactive.onWheel` for per-interactive events. For scene-based see `Scene.addEventListener`
* when event is `EWheel`. For global hook use `Window.addEventTarget` method.

### MOUSE_WHEEL_DOWN

```haxe
static inline var MOUSE_WHEEL_DOWN:Int = 6
```

* Mouse wheel does not have an off signal, and should be checked only through `isPressed` method.
* Note that there may be multiple wheel scrolls between 2 frames, and to receive more accurate
* results, it is recommended to directly listen to wheel events which also provide OS-generated wheel delta value.
* See `Interactive.onWheel` for per-interactive events. For scene-based see `Scene.addEventListener`
* when event is `EWheel`. For global hook use `Window.addEventTarget` method.

### LOC_LEFT

```haxe
static inline var LOC_LEFT:Int = 256
```

a bit that is set for left keys

### LOC_RIGHT

```haxe
static inline var LOC_RIGHT:Int = 512
```

a bit that is set for right keys

### LSHIFT

```haxe
static inline var LSHIFT:Int = SHIFT | LOC_LEFT
```

The left Shift key.

### RSHIFT

```haxe
static inline var RSHIFT:Int = SHIFT | LOC_RIGHT
```

The right Shift key.

### LCTRL

```haxe
static inline var LCTRL:Int = CTRL | LOC_LEFT
```

The left Ctrl key.

### RCTRL

```haxe
static inline var RCTRL:Int = CTRL | LOC_RIGHT
```

The right Ctrl key.

### LALT

```haxe
static inline var LALT:Int = ALT | LOC_LEFT
```

The left Alt key.

### RALT

```haxe
static inline var RALT:Int = ALT | LOC_RIGHT
```

The right Alt key.

### ALLOW_KEY_REPEAT

```haxe
static var ALLOW_KEY_REPEAT:Bool
```

This enable the native key repeat behavior, and will
report several times isPressed() in case a key is kept
pressed for a long time if this is allowed by the target
platform.

## Static methods

### isDown

```haxe
static function isDown(code:Int):Bool
```

Tells if the key or mouse button is currently down.

### getFrame

```haxe
static inline function getFrame():Int
```

Returns the frame number used to timestamp the key events.

### isPressed

```haxe
static function isPressed(code:Int):Bool
```

Tells if the key or mouse button was pressed since the last frame.

### isReleased

```haxe
static function isReleased(code:Int):Bool
```

Tells if the key or mouse button was released since the last frame.

### initialize

```haxe
static function initialize():Void
```

Starts listening to the events of the window. Called by `hxd.App`.

### dispose

```haxe
static function dispose():Void
```

Stops listening to the events of the window and clears the key states.

### getKeyName

```haxe
static function getKeyName(keyCode:Int):Null<String>
```

Returns a readable name for the key code, such as `"Escape"` or `"F1"`, or `null` if unknown.
