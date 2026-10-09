package hxd;

/**
	The key codes, and the state of the keyboard and mouse buttons, to poll in the update loop.
	Mouse buttons use the codes `0` to `6`, so they can be tested with the same functions as keys.
	For Shift, Ctrl and Alt, both the generic code (`SHIFT`) and the located code (`LSHIFT` or `RSHIFT`) are reported.
	`hxd.App` calls `initialize` automatically.
**/
class Key {

	// SDL note: Because SDL uses different mapping, it should be set accordingly in the Window.hl.hx in `initChars` function.

	/** The Backspace key. **/
	public static inline var BACKSPACE	= 8;
	/** The Tab key. **/
	public static inline var TAB		= 9;
	/** The Enter key. **/
	public static inline var ENTER		= 13;
	/** The Shift key. **/
	public static inline var SHIFT		= 16;
	/** The Ctrl key. **/
	public static inline var CTRL		= 17;
	/** The Alt key. **/
	public static inline var ALT		= 18;
	/** The Escape key. **/
	public static inline var ESCAPE		= 27;
	/** The Space key. **/
	public static inline var SPACE		= 32;
	/** The Page Up key. **/
	public static inline var PGUP		= 33;
	/** The Page Down key. **/
	public static inline var PGDOWN		= 34;
	/** The End key. **/
	public static inline var END		= 35;
	/** The Home key. **/
	public static inline var HOME		= 36;
	/** The Left arrow key. **/
	public static inline var LEFT		= 37;
	/** The Up arrow key. **/
	public static inline var UP			= 38;
	/** The Right arrow key. **/
	public static inline var RIGHT		= 39;
	/** The Down arrow key. **/
	public static inline var DOWN		= 40;
	/** The Insert key. **/
	public static inline var INSERT		= 45;
	/** The Delete key. **/
	public static inline var DELETE		= 46;

	/** The key of the `=` character on QWERTY keyboards. **/
	public static inline var QWERTY_EQUALS = 187;
	/** The key of the `-` character on QWERTY keyboards. **/
	public static inline var QWERTY_MINUS = 189;
	/** The key of the ``` character on QWERTY keyboards. **/
	public static inline var QWERTY_TILDE = 192;
	/** The key of the `[` character on QWERTY keyboards. **/
	public static inline var QWERTY_BRACKET_LEFT = 219;
	/** The key of the `]` character on QWERTY keyboards. **/
	public static inline var QWERTY_BRACKET_RIGHT = 221;
	/** The key of the `;` character on QWERTY keyboards. **/
	public static inline var QWERTY_SEMICOLON = 186;
	/** The key of the `'` character on QWERTY keyboards. **/
	public static inline var QWERTY_QUOTE = 222;
	/** The key of the `\` character on QWERTY keyboards. **/
	public static inline var QWERTY_BACKSLASH = 220;
	/** The key of the `,` character on QWERTY keyboards. **/
	public static inline var QWERTY_COMMA = 188;
	/** The key of the `.` character on QWERTY keyboards. **/
	public static inline var QWERTY_PERIOD = 190;
	/** The key of the `/` character on QWERTY keyboards. **/
	public static inline var QWERTY_SLASH = 191;
	/** The backslash key next to the left Shift on some keyboards. Not available on SDL. **/
	public static inline var INTL_BACKSLASH = 226;
	/** The left Windows key. **/
	public static inline var LEFT_WINDOW_KEY = 91;
	/** The right Windows key. **/
	public static inline var RIGHT_WINDOW_KEY = 92;
	/** The context menu key. **/
	public static inline var CONTEXT_MENU = 93;
	
	/** The key of the `$` character on AZERTY keyboards. **/
	public static inline var AZERTY_DOLLAR = 186;
	/** The key of the `=` character on AZERTY keyboards. **/
	public static inline var AZERTY_EQUALS = 187;
	/** The key of the `,` character on AZERTY keyboards. **/
	public static inline var AZERTY_COMMA = 188;
	/** The key of the `;` character on AZERTY keyboards. **/
	public static inline var AZERTY_SEMICOLON = 190;
	/** The key of the `:` character on AZERTY keyboards. **/
	public static inline var AZERTY_COLON = 191;
	/** The key of the `ù` character on AZERTY keyboards. **/
	public static inline var AZERTY_MODULO = 192;
	/** The key of the `)` character on AZERTY keyboards. **/
	public static inline var AZERTY_PARENT_CLOSE = 219;
	/** The key of the `*` character on AZERTY keyboards. **/
	public static inline var AZERTY_MULTIPLY = 220;
	/** The key of the `^` character on AZERTY keyboards. **/
	public static inline var AZERTY_POWER = 221;
	/** The key of the `²` character on AZERTY keyboards. **/
	public static inline var AZERTY_SQUARED = 222;
	/** The key of the `!` character on AZERTY keyboards. **/
	public static inline var AZERTY_EXCLAM = 223;
	// public static inline var PRINT_SCREEN = // Only available on SDL

	/** The Pause/Break key. **/
	public static inline var PAUSE_BREAK = 19;
	/** The Caps Lock key. **/
	public static inline var CAPS_LOCK = 20;
	/** The Num Lock key. **/
	public static inline var NUM_LOCK = 144;
	/** The Scroll Lock key. **/
	public static inline var SCROLL_LOCK = 145;

	/** The 0 key of the main keyboard. **/
	public static inline var NUMBER_0	= 48;
	/** The 1 key of the main keyboard. **/
	public static inline var NUMBER_1	= 49;
	/** The 2 key of the main keyboard. **/
	public static inline var NUMBER_2	= 50;
	/** The 3 key of the main keyboard. **/
	public static inline var NUMBER_3	= 51;
	/** The 4 key of the main keyboard. **/
	public static inline var NUMBER_4	= 52;
	/** The 5 key of the main keyboard. **/
	public static inline var NUMBER_5	= 53;
	/** The 6 key of the main keyboard. **/
	public static inline var NUMBER_6	= 54;
	/** The 7 key of the main keyboard. **/
	public static inline var NUMBER_7	= 55;
	/** The 8 key of the main keyboard. **/
	public static inline var NUMBER_8	= 56;
	/** The 9 key of the main keyboard. **/
	public static inline var NUMBER_9	= 57;

	/** The 0 key of the numeric keypad. **/
	public static inline var NUMPAD_0	= 96;
	/** The 1 key of the numeric keypad. **/
	public static inline var NUMPAD_1	= 97;
	/** The 2 key of the numeric keypad. **/
	public static inline var NUMPAD_2	= 98;
	/** The 3 key of the numeric keypad. **/
	public static inline var NUMPAD_3	= 99;
	/** The 4 key of the numeric keypad. **/
	public static inline var NUMPAD_4	= 100;
	/** The 5 key of the numeric keypad. **/
	public static inline var NUMPAD_5	= 101;
	/** The 6 key of the numeric keypad. **/
	public static inline var NUMPAD_6	= 102;
	/** The 7 key of the numeric keypad. **/
	public static inline var NUMPAD_7	= 103;
	/** The 8 key of the numeric keypad. **/
	public static inline var NUMPAD_8	= 104;
	/** The 9 key of the numeric keypad. **/
	public static inline var NUMPAD_9	= 105;

	/** The A key. **/
	public static inline var A			= 65;
	/** The B key. **/
	public static inline var B			= 66;
	/** The C key. **/
	public static inline var C			= 67;
	/** The D key. **/
	public static inline var D			= 68;
	/** The E key. **/
	public static inline var E			= 69;
	/** The F key. **/
	public static inline var F			= 70;
	/** The G key. **/
	public static inline var G			= 71;
	/** The H key. **/
	public static inline var H			= 72;
	/** The I key. **/
	public static inline var I			= 73;
	/** The J key. **/
	public static inline var J			= 74;
	/** The K key. **/
	public static inline var K			= 75;
	/** The L key. **/
	public static inline var L			= 76;
	/** The M key. **/
	public static inline var M			= 77;
	/** The N key. **/
	public static inline var N			= 78;
	/** The O key. **/
	public static inline var O			= 79;
	/** The P key. **/
	public static inline var P			= 80;
	/** The Q key. **/
	public static inline var Q			= 81;
	/** The R key. **/
	public static inline var R			= 82;
	/** The S key. **/
	public static inline var S			= 83;
	/** The T key. **/
	public static inline var T			= 84;
	/** The U key. **/
	public static inline var U			= 85;
	/** The V key. **/
	public static inline var V			= 86;
	/** The W key. **/
	public static inline var W			= 87;
	/** The X key. **/
	public static inline var X			= 88;
	/** The Y key. **/
	public static inline var Y			= 89;
	/** The Z key. **/
	public static inline var Z			= 90;

	/** The F1 key. **/
	public static inline var F1			= 112;
	/** The F2 key. **/
	public static inline var F2			= 113;
	/** The F3 key. **/
	public static inline var F3			= 114;
	/** The F4 key. **/
	public static inline var F4			= 115;
	/** The F5 key. **/
	public static inline var F5			= 116;
	/** The F6 key. **/
	public static inline var F6			= 117;
	/** The F7 key. **/
	public static inline var F7			= 118;
	/** The F8 key. **/
	public static inline var F8			= 119;
	/** The F9 key. **/
	public static inline var F9			= 120;
	/** The F10 key. **/
	public static inline var F10		= 121;
	/** The F11 key. **/
	public static inline var F11		= 122;
	/** The F12 key. **/
	public static inline var F12		= 123;
	// Extended F keys
	/** The F13 key. **/
	public static inline var F13		= 124;
	/** The F14 key. **/
	public static inline var F14		= 125;
	/** The F15 key. **/
	public static inline var F15		= 126;
	/** The F16 key. **/
	public static inline var F16		= 127;
	/** The F17 key. **/
	public static inline var F17		= 128;
	/** The F18 key. **/
	public static inline var F18		= 129;
	/** The F19 key. **/
	public static inline var F19		= 130;
	/** The F20 key. **/
	public static inline var F20		= 131;
	/** The F21 key. **/
	public static inline var F21		= 132;
	/** The F22 key. **/
	public static inline var F22		= 133;
	/** The F23 key. **/
	public static inline var F23		= 134;
	/** The F24 key. **/
	public static inline var F24		= 135;

	/** The `*` key of the numeric keypad. **/
	public static inline var NUMPAD_MULT = 106;
	/** The `+` key of the numeric keypad. **/
	public static inline var NUMPAD_ADD	= 107;
	/** The Enter key of the numeric keypad. **/
	public static inline var NUMPAD_ENTER = 108;
	/** The `-` key of the numeric keypad. **/
	public static inline var NUMPAD_SUB = 109;
	/** The `.` key of the numeric keypad. **/
	public static inline var NUMPAD_DOT = 110;
	/** The `/` key of the numeric keypad. **/
	public static inline var NUMPAD_DIV = 111;

	/** The left mouse button. **/
	public static inline var MOUSE_LEFT = 0;
	/** The right mouse button. **/
	public static inline var MOUSE_RIGHT = 1;
	/** The middle mouse button. **/
	public static inline var MOUSE_MIDDLE = 2;
	/** The back mouse button. **/
	public static inline var MOUSE_BACK = 3;
	/** The forward mouse button. **/
	public static inline var MOUSE_FORWARD = 4;
	/**
	 * Mouse wheel does not have an off signal, and should be checked only through `isPressed` method.
	 * Note that there may be multiple wheel scrolls between 2 frames, and to receive more accurate
	 * results, it is recommended to directly listen to wheel events which also provide OS-generated wheel delta value.
	 * See `Interactive.onWheel` for per-interactive events. For scene-based see `Scene.addEventListener`
	 * when event is `EWheel`. For global hook use `Window.addEventTarget` method.
	 */
	public static inline var MOUSE_WHEEL_UP = 5;
	/**
	 * Mouse wheel does not have an off signal, and should be checked only through `isPressed` method.
	 * Note that there may be multiple wheel scrolls between 2 frames, and to receive more accurate
	 * results, it is recommended to directly listen to wheel events which also provide OS-generated wheel delta value.
	 * See `Interactive.onWheel` for per-interactive events. For scene-based see `Scene.addEventListener`
	 * when event is `EWheel`. For global hook use `Window.addEventTarget` method.
	 */
	public static inline var MOUSE_WHEEL_DOWN = 6;

	/** a bit that is set for left keys **/
	public static inline var LOC_LEFT = 256;
	/** a bit that is set for right keys **/
	public static inline var LOC_RIGHT = 512;

	/** The left Shift key. **/
	public static inline var LSHIFT = SHIFT | LOC_LEFT;
	/** The right Shift key. **/
	public static inline var RSHIFT = SHIFT | LOC_RIGHT;
	/** The left Ctrl key. **/
	public static inline var LCTRL = CTRL | LOC_LEFT;
	/** The right Ctrl key. **/
	public static inline var RCTRL = CTRL | LOC_RIGHT;
	/** The left Alt key. **/
	public static inline var LALT = ALT | LOC_LEFT;
	/** The right Alt key. **/
	public static inline var RALT = ALT | LOC_RIGHT;

	static var initDone = false;
	static var keyPressed : Array<Int> = [];

	/**
		This enable the native key repeat behavior, and will
		report several times isPressed() in case a key is kept
		pressed for a long time if this is allowed by the target
		platform.
	**/
	public static var ALLOW_KEY_REPEAT = false;

	/**
		Tells if the key or mouse button is currently down.
	**/
	public static function isDown( code : Int ) {
		return keyPressed[code] > 0;
	}

	/**
		Returns the frame number used to timestamp the key events.
	**/
	public static inline function getFrame() {
		return hxd.Timer.frameCount + 2;
	}

	/**
		Tells if the key or mouse button was pressed since the last frame.
	**/
	public static function isPressed( code : Int ) {
		return keyPressed[code] == getFrame() - 1;
	}

	/**
		Tells if the key or mouse button was released since the last frame.
	**/
	public static function isReleased( code : Int ) {
		return keyPressed[code] == -getFrame() + 1;
	}

	/**
		Starts listening to the events of the window. Called by `hxd.App`.
	**/
	public static function initialize() {
		if( initDone )
			dispose();
		initDone = true;
		keyPressed = [];
		Window.getInstance().addEventTarget(onEvent);
	}

	/**
		Stops listening to the events of the window and clears the key states.
	**/
	public static function dispose() {
		if( initDone ) {
			Window.getInstance().removeEventTarget(onEvent);
			initDone = false;
			keyPressed = [];
		}
	}

	static function onEvent( e : Event ) {
		switch( e.kind ) {
		case EKeyDown:
			if( !ALLOW_KEY_REPEAT && keyPressed[e.keyCode] > 0 ) return;
			keyPressed[e.keyCode] = getFrame();
		case EKeyUp:
			keyPressed[e.keyCode] = -getFrame();
		case EPush:
			if( e.button < 5 ) keyPressed[e.button] = getFrame();
		case ERelease:
			if( e.button < 5 ) keyPressed[e.button] = -getFrame();
		case EReleaseOutside:
			keyPressed = [];
		case EWheel:
			keyPressed[e.wheelDelta > 0 ? MOUSE_WHEEL_DOWN : MOUSE_WHEEL_UP] = getFrame();
		default:
		}
	}

	/**
		Returns a readable name for the key code, such as `"Escape"` or `"F1"`, or `null` if unknown.
	**/
	public static function getKeyName( keyCode : Int ) {
		var c = keyCode;
		return switch( c ) {
		case BACKSPACE: "Backspace";
		case TAB: "Tab";
		case ENTER: "Enter";
		case SHIFT: "Shift";
		case CTRL: "Ctrl";
		case ALT: "Alt";
		case ESCAPE: "Escape";
		case SPACE: "Space";
		case PGUP: "PageUp";
		case PGDOWN: "PageDown";
		case END: "End";
		case HOME: "Home";
		case LEFT: "Left";
		case UP: "Up";
		case RIGHT: "Right";
		case DOWN: "Down";
		case INSERT: "Insert";
		case DELETE: "Delete";
		case NUMPAD_MULT: "NumPad*";
		case NUMPAD_ADD: "NumPad+";
		case NUMPAD_ENTER: "NumPadEnter";
		case NUMPAD_SUB: "NumPad-";
		case NUMPAD_DOT: "NumPad.";
		case NUMPAD_DIV: "NumPad/";
		case LSHIFT: "LShift";
		case RSHIFT: "RShift";
		case LCTRL: "LCtrl";
		case RCTRL: "RCtrl";
		case LALT: "LAlt";
		case RALT: "RAlt";
		case QWERTY_TILDE: "Tilde";
		case QWERTY_MINUS: "Minus";
		case QWERTY_EQUALS: "Equals";
		case QWERTY_BRACKET_LEFT: "BracketLeft";
		case QWERTY_BRACKET_RIGHT: "BracketRight";
		case QWERTY_SEMICOLON: "Semicolon";
		case QWERTY_QUOTE: "Quote";
		case QWERTY_BACKSLASH: "Backslash";
		case QWERTY_COMMA: "Comma";
		case QWERTY_PERIOD: "Period";
		case QWERTY_SLASH: "Slash";
		case INTL_BACKSLASH: "IntlBackslash";
		case LEFT_WINDOW_KEY: "LeftWindowKey";
		case RIGHT_WINDOW_KEY: "RightWindowKey";
		case CONTEXT_MENU: "ContextMenu";
		case PAUSE_BREAK: "PauseBreak";
		case CAPS_LOCK: "CapsLock";
		case SCROLL_LOCK: "ScrollLock";
		case NUM_LOCK: "NumLock";
		case MOUSE_LEFT: "MouseLeft";
		case MOUSE_MIDDLE: "MouseMiddle";
		case MOUSE_RIGHT: "MouseRight";
		case MOUSE_BACK: "Mouse3";
		case MOUSE_FORWARD: "Mouse4";
		default:
			if( c >= NUMBER_0 && c <= NUMBER_9 )
				""+(c - NUMBER_0);
			else if( c >= NUMPAD_0 && c <= NUMPAD_9 )
				"NumPad"+(c - NUMPAD_0);
			else if( c >= A && c <= Z )
				String.fromCharCode("A".code + c - A);
			else if( c >= F1 && c <= F24 )
				"F" + (c - F1 + 1);
			else
				null;
		}
	}

}

