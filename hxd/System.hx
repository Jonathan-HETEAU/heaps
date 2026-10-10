package hxd;

/**
	The kind of platform the application runs on (see `System.platform`).
**/
enum Platform {
	IOS;
	Android;
	WebGL;
	PC;
	Console;
	FlashPlayer;
}

/**
	Boolean system properties, queried with `System.getValue`.
**/
enum SystemValue {
	IsTouch;
	IsWindowed;
	IsMobile;
}

/**
	The detected keyboard layout (see `System.getKeyboardLayout`).
**/
enum KeyboardLayout {
	QWERTY;
	AZERTY;
	QWERTZ;
	QZERTY;
	Unknown;
}

/**
	Platform-specific services: main loop, cursor, clipboard, locale, and screen information.
	Each target has its own implementation (`System.hl.hx`, `System.js.hx`).
**/
class System {

	/**
		The width of the screen in pixels (of the page on JS: the body width multiplied by the device pixel ratio).
	**/
	public static var width(get,never) : Int;
	/**
		The height of the screen in pixels (of the page on JS: the body height multiplied by the device pixel ratio).
	**/
	public static var height(get, never) : Int;
	/**
		The language code of the user, such as `"en"`.
	**/
	public static var lang(get, never) : String;
	/**
		The platform the application runs on.
	**/
	public static var platform(get, never) : Platform;
	/**
		The resolution of the screen in dots per inch (currently always `72`).
	**/
	public static var screenDPI(get,never) : Float;
	/**
		Sets current cursor and can be replaced by custom function to manually operate displayed cursor.
		When called, it should call `hxd.System.setNativeCursor` and pass desired `hxd.Cursor` to it.
	**/
	public static var setCursor : Cursor -> Void = setNativeCursor;

	/**
		Can be used to temporarly disable infinite loop check
	**/
	public static var allowTimeout(get, set) : Bool;

	/**
		If you have a time consuming calculus that might trigger a timeout, you can either disable timeouts with [allowTimeout] or call timeoutTick() frequently.
	**/
	public static function timeoutTick() : Void {
	}

	static var loopFunc : Void -> Void;

	/**
		Returns the function called every frame, set with `setLoop`.
	**/
	public static function getCurrentLoop() : Void -> Void {
		return loopFunc;
	}

	/**
		Sets the function called every frame by the main loop.
	**/
	public static function setLoop( f : Void -> Void ) : Void {
		loopFunc = f;
	}

	/**
		Initializes the system and calls the given function. On HashLink, the window is created with `createWindow` first, and the main loop then runs until the application exits. Called by `hxd.App`.
	**/
	public static function start( callb : Void -> Void ) : Void {
	}

	/**
		Sets currently shown cursor.
		This method is designated to be used by custom `hxd.System.setCursor`.
		Calling it outside of automated Interactive cursor update system leads to undefined behavior, and not advised.
	**/
	public static function setNativeCursor( c : Cursor ) : Void {
	}

	/**
		Returns a description of the device, such as `"PC/"` followed by the graphics device name (`"Unknown"` on JS).
	**/
	public static function getDeviceName() : String {
		return "Unknown";
	}

	/**
		Returns the default frame rate of the platform.
	**/
	public static function getDefaultFrameRate() : Float {
		return 60.;
	}

	/**
		Returns the value of a system property.
	**/
	public static function getValue( s : SystemValue ) : Bool {
		return false;
	}

	/**
		Exits the application (does nothing on JS).
	**/
	public static function exit() : Void {
	}

	/**
		Opens the URL in the default browser (in a new tab on JS).
	**/
	public static function openURL( url : String ) : Void {}

	/**
		Sets the text in the system clipboard. Returns `false` if not supported.
	**/
	public static function setClipboardText( text : String ) : Bool {
		return false;
	}

	/**
		Returns the text in the system clipboard, or `null` if not supported. On JS, returns the last text set with `setClipboardText`, since the browser clipboard can't be read synchronously.
	**/
	public static function getClipboardText() : String {
		return null;
	}

	/**
		Returns the locale of the user, including the region code (such as `"en-US"`), based on the system or browser language.
	**/
	public static function getLocale() : String {
		return "en_EN";
	}

	/**
		Returns the detected keyboard layout, or `Unknown` if it can't be detected (always on JS). The value isn't reliable on SDL without a window.
	**/
	public static function getKeyboardLayout() : KeyboardLayout {
		return Unknown;
	}

	/**
		Called when the keyboard layout changes.
	**/
	public static dynamic function onKeyboardLayoutChange() : Void {}

	// getters

	static function get_width() : Int return 0;
	static function get_height() : Int return 0;
	static function get_lang() : String return "en";
	static function get_platform() : Platform return PC;
	static function get_screenDPI() : Int return 72;
	static function get_allowTimeout() return false;
	static function set_allowTimeout(b) return false;

}
