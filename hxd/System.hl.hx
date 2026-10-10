package hxd;

#if hlsdl
import sdl.Cursor;
#elseif hldx
import dx.Cursor;
#end

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

//@:coreApi
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
	public static var platform(get, null) : Platform;
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

	static var loopFunc : Void -> Void;
	static var dismissErrors = false;

	#if !usesys
	static var sentinel : hl.UI.Sentinel;
	#end
	#if ( target.threaded && (haxe_ver >= 4.2) )
	static var mainThread : sys.thread.Thread;
	#end

	// -- HL
	static var currentNativeCursor : hxd.Cursor = Default;
	static var currentCustomCursor : hxd.Cursor.CustomCursor;
	static var cursorVisible = true;

	/**
		If set, `lang` keeps the region code for the locales that need it (such as `"zh-TW"` for traditional Chinese).
	**/
	public static var allowLCID : Bool = false;
	static var lcidMapping = [ "zh-TW" => "zh-TW", "zh-HK" => "zh-TW", "zh-MO" => "zh-TW" ];

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

	static function mainLoop() {
		var engine = h3d.Engine.getCurrent();
		if( engine != null && engine.ready ) {
			engine.driver.upscaling.lowLatencySleep();
			engine.driver.upscaling.latencyMarker(SimulationStart);
		}

		// process events
		#if usesys
		haxe.System.emitEvents(@:privateAccess hxd.Window.dispatchEvent);
		#elseif hldx
		dx.Loop.processEvents(@:privateAccess hxd.Window.dispatchEvent);
		#elseif hlsdl
		sdl.Sdl.processEvents(@:privateAccess hxd.Window.dispatchEvent);
		#end

		// loop
		timeoutTick();
		if( loopFunc != null ) loopFunc();

		// present
		var cur = h3d.Engine.getCurrent();
		if( cur != null && cur.ready ) {
			#if hl_profile
			hl.Profile.event(-1); // pause
			#end
			cur.driver.present();
			#if hl_profile
			hl.Profile.event(0); // next frame
			hl.Profile.event(-2); // resume
			#end
		}
	}

	/**
		Creates the main window. Its size and title can be set with the `-D windowSize=WIDTHxHEIGHT`, `-D windowTitle=...` and `-D windowFixed=1` defines. Can be replaced to customize the window.
	**/
	public static dynamic function createWindow() {
		var width = 800;
		var height = 600;
		var size = haxe.macro.Compiler.getDefine("windowSize");
		var title = haxe.macro.Compiler.getDefine("windowTitle");
		var fixed = haxe.macro.Compiler.getDefine("windowFixed") == "1";
		if( title == null )
			title = "";
		if( size != null ) {
			var p = size.split("x");
			width = Std.parseInt(p[0]);
			height = Std.parseInt(p[1]);
		}
		return new Window(title, width, height, { fixed: fixed });
	}

	/**
		Initializes the system and calls the given function. On HashLink, the window is created with `createWindow` first, and the main loop then runs until the application exits. Called by `hxd.App`.
	**/
	public static function start( init : Void -> Void ) : Void {
		#if usesys
		if( !haxe.System.init() ) return;
		@:privateAccess Window.inst = new Window("", haxe.System.width, haxe.System.height);
		init();

		#else
		timeoutTick();
		#if hlsdl
		sdl.Sdl.init();
		@:privateAccess Window.initChars();
		#end

		@:privateAccess Window.inst = createWindow();

		init();
		#end
		timeoutTick();
		haxe.Timer.delay(runMainLoop, 0);
	}

	static function isAlive() {
		#if usesys
		return true;
		#else
		return hxd.Window.hasWindow();
		#end
	}

	static function runMainLoop() {
		#if (haxe_ver >= 4.1)
		var reportError = function(e:Dynamic) reportError((e is haxe.Exception)?e:new haxe.Exception(Std.string(e),null,e));
		#else
		var reportError = function(e) reportError(e);
		#end
		#if ( target.threaded && (haxe_ver >= 4.2) && heaps_unsafe_events)
		var eventRecycle = [];
		#end
		while( isAlive() ) {
			#if !heaps_no_error_trap
			try {
				hl.Api.setErrorHandler(reportError); // set exception trap
			#end
				#if ( haxe_ver >= 5 )
				haxe.EventLoop.getThreadLoop(mainThread).loopOnce();
				#elseif ( target.threaded && (haxe_ver >= 4.2) )
				// Due to how 4.2+ timers work, instead of MainLoop, thread events have to be updated.
				// Unsafe events rely on internal implementation of EventLoop, but utilize the recycling feature
				// which in turn provides better optimization.
				#if heaps_unsafe_events
				@:privateAccess mainThread.events.__progress(Sys.time(), eventRecycle);
				#else
				mainThread.events.progress();
				#end
				#else
				@:privateAccess haxe.MainLoop.tick();
				#end

				mainLoop();
			#if !heaps_no_error_trap
			} catch( e : Dynamic ) {
				hl.Api.setErrorHandler(null);
			}
			#end
			#if hot_reload
			if( check_reload() ) onReload();
			#end
		}
		var engine = h3d.Engine.getCurrent();
		if( engine != null )
			engine.driver.upscaling.dispose();
		Sys.exit(0);
	}

	#if hot_reload
	@:hlNative("std","sys_check_reload")
	static function check_reload( ?debug : hl.Bytes ) return false;
	#end

	/**
		onReload() is called when app hot reload is enabled with -D hot-reload and is also enabled when running hashlink.
		The later can be done by running `hl --hot-reload` or by setting hotReload:true in VSCode launch props.
	**/
	public dynamic static function onReload() {}

	/**
		Called when an uncaught exception occurs in the main loop. By default, writes the error and its call stack to stderr, and on Windows also shows them in a dialog. Can be replaced to log or report errors.
	**/
	public dynamic static function reportError( e : Dynamic ) {
		#if (haxe_ver >= 4.1)
		var exc = Std.downcast(e, haxe.Exception);
		var stack = haxe.CallStack.toString(exc != null ? exc.stack : haxe.CallStack.exceptionStack(true));
		#else
		var stack = haxe.CallStack.toString(haxe.CallStack.exceptionStack());
		#end

		var err = try Std.string(e) catch( _ : Dynamic ) "????";
		#if usesys
		haxe.System.reportError(err + stack);
		#else
		try Sys.stderr().writeString( err + stack + "\r\n" ) catch( e : Dynamic ) {};

		if ( Sys.systemName() != 'Windows' )
			return;

		if( dismissErrors )
			return;

		#if (hlsdl && !multidriver)
		// New UI window does not force SDL leave relative mouse mode, do it manually
		var window = hxd.Window.getInstance();
		var prevMouseMode = window?.mouseMode;
		if (window != null)
			window.mouseMode = Absolute;
		#end
		var f = new hl.UI.WinLog("Uncaught Exception", 500, 400);
		f.setTextContent(err+"\n"+stack);
		var but = new hl.UI.Button(f, "Continue");
		but.onClick = function() {
			hl.UI.stopLoop();
			#if (hlsdl && !multidriver)
			if (prevMouseMode != null)
				hxd.Window.getInstance().mouseMode = prevMouseMode;
			#end
		};

		var but = new hl.UI.Button(f, "Dismiss all");
		but.onClick = function() {
			dismissErrors = true;
			hl.UI.stopLoop();
			#if (hlsdl && !multidriver)
			if (prevMouseMode != null)
				hxd.Window.getInstance().mouseMode = prevMouseMode;
			#end
		};

		var but = new hl.UI.Button(f, "Exit");
		but.onClick = function() {
			Sys.exit(0);
		};

		while( hl.UI.loop(true) != Quit )
			timeoutTick();
		f.destroy();
		#end
	}

	/**
		Sets the displayed cursor. Meant to be called by a custom `setCursor`: calling it outside of the automatic interactive cursor update leads to undefined behavior.
	**/
	public static function setNativeCursor( c : hxd.Cursor ) : Void {
		#if (hlsdl || hldx)
		if( c.equals(currentNativeCursor) )
			return;
		currentNativeCursor = c;
		currentCustomCursor = null;
		if( c == Hide ) {
			cursorVisible = false;
			Cursor.show(false);
			return;
		}
		var cur : Cursor;
		switch( c ) {
		case Default:
			cur = Cursor.createSystem(Arrow);
		case Button:
			cur = Cursor.createSystem(Hand);
		case Move:
			cur = Cursor.createSystem(SizeALL);
		case TextInput:
			cur = Cursor.createSystem(IBeam);
		#if (hlsdl || hldx >= version("1.16.0"))
		case ResizeNS:
			cur = Cursor.createSystem(SizeNS);
		case ResizeWE:
			cur = Cursor.createSystem(SizeWE);
		case ResizeNWSE:
			cur = Cursor.createSystem(SizeNWSE);
		case ResizeNESW:
			cur = Cursor.createSystem(SizeNESW);
		#else
		// fallback for old hldx versions that don't have all the CursorKind values for SizeXX
		case ResizeNS, ResizeWE, ResizeNWSE, ResizeNESW:
			cur = Cursor.createSystem(SizeALL);
		#end
		case Callback(_), Hide:
			throw "assert";
		case Custom(c):
			if( c.alloc == null ) {
				c.alloc = new Array();
				for ( frame in c.frames ) {
					var pixels = frame.getPixels();
					pixels.convert(BGRA);
					#if hlsdl
					if (c.offsetX < 0 || c.offsetX >= pixels.width || c.offsetY < 0 || c.offsetY >= pixels.height) {
						throw "SDL2 does not allow creation of cursors with offset outside of cursor image bounds.";
					}
					var surf = sdl.Surface.fromBGRA(pixels.bytes, pixels.width, pixels.height);
					c.alloc.push(sdl.Cursor.create(surf, c.offsetX, c.offsetY));
					surf.free();
					#elseif hldx
					c.alloc.push(dx.Cursor.createCursor(pixels.width, pixels.height, pixels.bytes, c.offsetX, c.offsetY));
					#end
					pixels.dispose();
				}
			}
			if ( c.frames.length > 1 ) {
				currentCustomCursor = c;
				c.reset();
			}
			cur = c.alloc[c.frameIndex];
		}
		cur.set();
		if( !cursorVisible ) {
			cursorVisible = true;
			Cursor.show(true);
		}
		#end
	}

	#if (hlsdl || hldx)
	static function updateCursor() : Void {
		if (currentCustomCursor != null)
		{
			var change = currentCustomCursor.update(hxd.Timer.elapsedTime);
			if (change != -1) {
				currentCustomCursor.alloc[change].set();
			}
		}
	}
	#end

	#if (hl_ver < version("1.12.0"))
	/**
		Returns the text in the system clipboard, or `null` if not supported. On JS, returns the last text set with `setClipboardText`, since the browser clipboard can't be read synchronously.
	**/
	public static function getClipboardText() : String {
		return null;
	}

	/**
		Sets the text in the system clipboard. Returns `false` if not supported.
	**/
	public static function setClipboardText(text:String) : Bool {
		return false;
	}
	#elseif hlsdl
	/**
		Returns the text in the system clipboard, or `null` if not supported. On JS, returns the last text set with `setClipboardText`, since the browser clipboard can't be read synchronously.
	**/
	public static function getClipboardText() : String {
		return sdl.Sdl.getClipboardText();
	}

	/**
		Sets the text in the system clipboard. Returns `false` if not supported.
	**/
	public static function setClipboardText(text:String) : Bool {
		return sdl.Sdl.setClipboardText(text);
	}
	#else
	/**
		Returns the text in the system clipboard, or `null` if not supported. On JS, returns the last text set with `setClipboardText`, since the browser clipboard can't be read synchronously.
	**/
	public static function getClipboardText() : String {
		return hl.UI.getClipboardText();
	}

	/**
		Sets the text in the system clipboard. Returns `false` if not supported.
	**/
	public static function setClipboardText(text:String) : Bool {
		return hl.UI.setClipboardText(text);
	}
	#end

	/**
		Returns a description of the device, such as `"PC/"` followed by the graphics device name (`"Unknown"` on JS).
	**/
	public static function getDeviceName() : String {
		#if usesys
		return haxe.System.name;
		#elseif hlsdl
		return "PC/" + sdl.Sdl.getDevices()[0];
		#elseif (hldx && dx12)
		return "PC/" + dx.Dx12.getDeviceName();
		#elseif hldx
		return "PC/" + dx.Driver.getDeviceName();
		#else
		return "PC/Commandline";
		#end
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
		#if !usesys
		case IsWindowed:
			platform == PC;
		case IsMobile:
			platform == IOS || platform == Android;
		case IsTouch:
			// TODO: check PC touch screens?
			platform == IOS || platform == Android;
		#end
		default:
			return false;
		}
	}

	/**
		Exits the application (does nothing on JS).
	**/
	public static function exit() : Void {
		try {
			Sys.exit(0);
		} catch( e : Dynamic ) {
			// access violation sometimes ?
			exit();
		}
	}

	/**
		Opens the URL in the default browser (in a new tab on JS).
	**/
	public static function openURL( url : String ) : Void {
		switch Sys.systemName() {
			case 'Windows': Sys.command('start ${url}');
			case 'Linux': Sys.command('xdg-open ${url}');
			case 'Mac': Sys.command('open ${url}');
			case 'Android' | 'iOS' | 'tvOS':
			default:
		}
	}

	@:hlNative("std","sys_locale") static function sys_locale() : hl.Bytes { return null; }

	static var _lang : String;
	static function get_lang() : String {
		if( _lang == null ) {
			var loc = getLocale();
			if( allowLCID && lcidMapping.exists(loc) )
				_lang = lcidMapping[loc];
			else
				_lang = loc.split("-")[0];
		}
		return _lang;
	}

	/**
	 * Returns the locale including region code ()
	**/
	static var _loc : String;
	/**
		Returns the locale of the user, including the region code (such as `"en-US"`), based on the system or browser language.
	**/
	public static function getLocale() {
		if( _loc == null ) {
			var str = @:privateAccess Sys.makePath(sys_locale());
			if( str == null ) str = "en";
			_loc = ~/[.@]/g.split(str)[0];
			_loc = ~/_/g.replace(_loc, "-");
		}
		return _loc;
	}

	/**
		Returns the detected keyboard layout, or `Unknown` if it can't be detected (always on JS). The value isn't reliable on SDL without a window.
	**/
	public static function getKeyboardLayout() : KeyboardLayout {
		var layoutStr = null;
		#if hlsdl
		layoutStr = sdl.Sdl.detectKeyboardLayout();
		#elseif (hldx >= version("1.16.0"))
		layoutStr = dx.Window.detectKeyboardLayout();
		#elseif (hldx && !dx12)
		layoutStr = dx.Driver.detectKeyboardLayout();
		#end
		return switch(layoutStr) {
			case "qwerty": QWERTY;
			case "azerty": AZERTY;
			case "qwertz": QWERTZ;
			case "qzerty": QZERTY;
			case null, _: Unknown;
		};
	}

	/**
		Called when the keyboard layout changes.
	**/
	public static dynamic function onKeyboardLayoutChange() : Void {}

	// getters

	#if usesys
	static function get_width() : Int return haxe.System.width;
	static function get_height() : Int return haxe.System.height;
	static function get_platform() : Platform return Console;
	#elseif hldx
	static function get_width() : Int return dx.Window.getScreenWidth();
	static function get_height() : Int return dx.Window.getScreenHeight();
	static function get_platform() : Platform return PC; // TODO : Xbox ?
	#elseif hlsdl
	#if (hl_ver >= version("1.12.0"))
	static function get_width() : Int return sdl.Sdl.getScreenWidth(@:privateAccess Window.inst.window);
	static function get_height() : Int return sdl.Sdl.getScreenHeight(@:privateAccess Window.inst.window);
	#else
	static function get_width() : Int return sdl.Sdl.getScreenWidth();
	static function get_height() : Int return sdl.Sdl.getScreenHeight();
	#end
	static function get_platform() : Platform {
		if (platform == null)
			platform = switch Sys.systemName() {
						case 'Windows' | 'Linux'| 'Mac': PC;
						case 'iOS' | 'tvOS': IOS;
						case 'Android': Android;
						default: PC;
					}
		return platform;
	}
	#else
	static function get_width() : Int return 800;
	static function get_height() : Int return 600;
	static function get_platform() : Platform return PC;
	#end

	static function get_screenDPI() : Int return 72; // TODO

	/**
		Notifies the infinite loop check that the application is still running. Call it frequently during long computations, or disable `allowTimeout`.
	**/
	public static function timeoutTick() : Void @:privateAccess {
		#if !usesys
		sentinel.tick();
		#end
	}

	static function get_allowTimeout() @:privateAccess {
		#if usesys
		return false;
		#else
		return !sentinel.pause;
		#end
	}

	static function set_allowTimeout(b) @:privateAccess {
		#if usesys
		return false;
		#else
		return sentinel.pause = !b;
		#end
	}

	static function __init__() {
		#if !usesys
		#if (haxe_ver >= 4.1)
		var reportError = function(e:Dynamic) reportError((e is haxe.Exception)?e:new haxe.Exception(Std.string(e),null,e));
		#else
		var reportError = function(e) reportError(e);
		#end
		hl.Api.setErrorHandler(reportError); // initialization error
		sentinel = new hl.UI.Sentinel(30, function() throw "Program timeout (infinite loop?)");
		#end
		#if ( target.threaded && (haxe_ver >= 4.2) )
		mainThread = sys.thread.Thread.current();
		#end
	}

	#if (hlsdl || hldx)
	@:keep static var _ = {
		haxe.MainLoop.add(timeoutTick, -1).isBlocking = false;
		haxe.MainLoop.add(updateCursor, -1).isBlocking = false;
	}
	#end

}
