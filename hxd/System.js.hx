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
		Sets the current cursor. It can be replaced by a custom function, which should call `setNativeCursor` with the cursor to display.
	**/
	public static var setCursor = setNativeCursor;
	/**
		Tells if the infinite loop check is enabled. Set it to `false` to temporarily disable it during long computations.
	**/
	public static var allowTimeout(get, set) : Bool;
	static var CLIPBOARD_TEXT : String = null;

	/**
		Notifies the infinite loop check that the application is still running. Call it frequently during long computations, or disable `allowTimeout`.
	**/
	public static function timeoutTick() : Void {
	}

	static var loopFunc : Void -> Void;

	// JS
	static var loopInit = false;
	static var currentNativeCursor:hxd.Cursor;
	static var currentCustomCursor:hxd.Cursor.CustomCursor;

	/** If greater than 0, this will reduce loop framerate to reduce CPU usage **/
	public static var fpsLimit = -1;

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
		if( !loopInit ) {
			loopInit = true;
			browserLoop();
		}
		loopFunc = f;
	}

	static function browserLoop() {
		if( js.Browser.supported ) {
			var window : Dynamic = js.Browser.window;
			var rqf : Dynamic = window.requestAnimationFrame ||
				window.webkitRequestAnimationFrame ||
				window.mozRequestAnimationFrame;
			if( fpsLimit>0 )
				js.Browser.window.setTimeout( ()->rqf(browserLoop), 1000/fpsLimit );
			else
				rqf(browserLoop);
		} else {
			#if (nodejs && hxnodejs)
			js.node.Timers.setTimeout(browserLoop, 0);
			#else
			throw "Cannot use browserLoop without Browser support nor defining nodejs + hxnodejs";
			#end
		}
		if( loopFunc != null ) loopFunc();
	}

	/**
		Initializes the system and calls the given function. On HashLink, the window is created with `createWindow` first, and the main loop then runs until the application exits. Called by `hxd.App`.
	**/
	public static function start( callb : Void -> Void ) : Void {
		callb();
	}

	/**
		Sets the displayed cursor. Meant to be called by a custom `setCursor`: calling it outside of the automatic interactive cursor update leads to undefined behavior.
	**/
	public static function setNativeCursor( c : Cursor ) : Void {
		if( currentNativeCursor != null && c.equals(currentNativeCursor) )
			return;
		currentNativeCursor = c;
		currentCustomCursor = null;
		var canvas = @:privateAccess hxd.Window.getInstance().canvas;
		if( canvas != null ) {
			canvas.style.cursor = switch( c ) {
			case Default: "default";
			case Button: "pointer";
			case Move: "move";
			case TextInput: "text";
			case Hide: "none";
			case ResizeNS: "ns-resize";
			case ResizeWE: "ew-resize"; // not a typo, WE is reversed in css
			case ResizeNWSE: "nwse-resize";
			case ResizeNESW: "nesw-resize";
			case Callback(_): throw "assert";
			case Custom(cur):
				if ( cur.alloc == null ) {
					cur.alloc = new Array();
					for ( frame in cur.frames ) {
						cur.alloc.push("url(\"" + frame.toNative().canvas.toDataURL("image/png") + "\") " + cur.offsetX + " " + cur.offsetY + ", default");
					}
				}
				if ( cur.frames.length > 1 ) {
					currentCustomCursor = cur;
					cur.reset();
				}
				cur.alloc[cur.frameIndex];
			};
		}
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
		return switch( s ) {
		case IsWindowed: true;
		case IsTouch: platform==Android || platform==IOS;
		case IsMobile: platform==Android || platform==IOS;
		default: false;
		}
	}

	/**
		Exits the application (does nothing on JS).
	**/
	public static function exit() : Void {
	}

	/**
		Opens the URL in the default browser (in a new tab on JS).
	**/
	public static function openURL( url : String ) : Void {
		js.Browser.window.open(url, '_blank');
	}

	static function updateCursor() : Void {
		if ( currentCustomCursor != null ) {
			var change = currentCustomCursor.update(hxd.Timer.elapsedTime);
			if ( change != -1 ) {
				var canvas = @:privateAccess hxd.Window.getInstance().canvas;
				if ( canvas != null ) {
					canvas.style.cursor = currentCustomCursor.alloc[change];
				}
			}
		}
	}

	/**
		Returns the text in the system clipboard, or `null` if not supported. On JS, returns the last text set with `setClipboardText`, since the browser clipboard can't be read synchronously.
	**/
	public static dynamic function getClipboardText() : String {
		return CLIPBOARD_TEXT;
	}

	/**
		Sets the text in the system clipboard. Returns `false` if not supported.
	**/
	public static dynamic function setClipboardText(text:String) : Bool {
		js.Browser.navigator.clipboard.writeText(text);
		CLIPBOARD_TEXT = text;
		return true;
	}

	/**
		Returns the locale of the user, including the region code (such as `"en-US"`), based on the system or browser language.
	**/
	public static function getLocale() : String {
		return js.Browser.navigator.language + "_" + js.Browser.navigator.language.toUpperCase();
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

	static function get_width() : Int return Math.round(js.Browser.document.body.clientWidth * js.Browser.window.devicePixelRatio);
	static function get_height() : Int return Math.round(js.Browser.document.body.clientHeight  * js.Browser.window.devicePixelRatio);
	static function get_lang() : String return js.Browser.navigator.language;
	static function get_platform() : Platform {
		var ua = js.Browser.navigator.userAgent.toLowerCase();
		if( ua.indexOf("android")>=0 )
			return Android;
		else if( ua.indexOf("ipad")>=0 || ua.indexOf("iphone")>=0 || ua.indexOf("ipod")>=0 )
			return IOS;
		else
			return PC;
	}
	static function get_screenDPI() : Int return 72;
	static function get_allowTimeout() return false;
	static function set_allowTimeout(b) return false;

	static function __init__() : Void {
		haxe.MainLoop.add(updateCursor, -1);
	}

}
