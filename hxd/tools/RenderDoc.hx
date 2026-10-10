package hxd.tools;

#if hl
/**
	The keys that can trigger a RenderDoc capture.
**/
enum abstract RenderDocInputButton(Int) {
	// '0' - '9' matches ASCII values
	/** The 0 key. **/
	var Key_0 = 0x30;
	/** The 1 key. **/
	var Key_1 = 0x31;
	/** The 2 key. **/
	var Key_2 = 0x32;
	/** The 3 key. **/
	var Key_3 = 0x33;
	/** The 4 key. **/
	var Key_4 = 0x34;
	/** The 5 key. **/
	var Key_5 = 0x35;
	/** The 6 key. **/
	var Key_6 = 0x36;
	/** The 7 key. **/
	var Key_7 = 0x37;
	/** The 8 key. **/
	var Key_8 = 0x38;
	/** The 9 key. **/
	var Key_9 = 0x39;

	// 'A' - 'Z' matches ASCII values
	/** The A key. **/
	var Key_A = 0x41;
	/** The B key. **/
	var Key_B = 0x42;
	/** The C key. **/
	var Key_C = 0x43;
	/** The D key. **/
	var Key_D = 0x44;
	/** The E key. **/
	var Key_E = 0x45;
	/** The F key. **/
	var Key_F = 0x46;
	/** The G key. **/
	var Key_G = 0x47;
	/** The H key. **/
	var Key_H = 0x48;
	/** The I key. **/
	var Key_I = 0x49;
	/** The J key. **/
	var Key_J = 0x4A;
	/** The K key. **/
	var Key_K = 0x4B;
	/** The L key. **/
	var Key_L = 0x4C;
	/** The M key. **/
	var Key_M = 0x4D;
	/** The N key. **/
	var Key_N = 0x4E;
	/** The O key. **/
	var Key_O = 0x4F;
	/** The P key. **/
	var Key_P = 0x50;
	/** The Q key. **/
	var Key_Q = 0x51;
	/** The R key. **/
	var Key_R = 0x52;
	/** The S key. **/
	var Key_S = 0x53;
	/** The T key. **/
	var Key_T = 0x54;
	/** The U key. **/
	var Key_U = 0x55;
	/** The V key. **/
	var Key_V = 0x56;
	/** The W key. **/
	var Key_W = 0x57;
	/** The X key. **/
	var Key_X = 0x58;
	/** The Y key. **/
	var Key_Y = 0x59;
	/** The Z key. **/
	var Key_Z = 0x5A;

	// leave the rest of the ASCII range free
	// in case we want to use it later
	/** The start of the non printable keys (not a key). **/
	var Key_NonPrintable = 0x100;

	/** The `/` key of the numeric keypad. **/
	var Key_Divide;
	/** The `*` key of the numeric keypad. **/
	var Key_Multiply;
	/** The `-` key of the numeric keypad. **/
	var Key_Subtract;
	/** The `+` key of the numeric keypad. **/
	var Key_Plus;

	/** The F1 key. **/
	var Key_F1;
	/** The F2 key. **/
	var Key_F2;
	/** The F3 key. **/
	var Key_F3;
	/** The F4 key. **/
	var Key_F4;
	/** The F5 key. **/
	var Key_F5;
	/** The F6 key. **/
	var Key_F6;
	/** The F7 key. **/
	var Key_F7;
	/** The F8 key. **/
	var Key_F8;
	/** The F9 key. **/
	var Key_F9;
	/** The F10 key. **/
	var Key_F10;
	/** The F11 key. **/
	var Key_F11;
	/** The F12 key. **/
	var Key_F12;

	/** The Home key. **/
	var Key_Home;
	/** The End key. **/
	var Key_End;
	/** The Insert key. **/
	var Key_Insert;
	/** The Delete key. **/
	var Key_Delete;
	/** The Page Up key. **/
	var Key_PageUp;
	/** The Page Down key. **/
	var Key_PageDn;

	/** The Backspace key. **/
	var Key_Backspace;
	/** The Tab key. **/
	var Key_Tab;
	/** The Print Screen key. **/
	var Key_PrtScrn;
	/** The Pause key. **/
	var Key_Pause;

	/** The number of key codes (not a key). **/
	var Key_Max;
}

/**
	The native bindings of `RenderDoc`.
**/
@:hlNative("?heaps", "rdoc_")
class RenderDocNative {
	static function init() : Bool {
		return false;
	}

	static function setCaptureKeys(keys:hl.Bytes, num:Int) : Bool {
		return false;
	}

	static function setCaptureFilePathTemplate(pathTemplate:hl.Bytes) : Bool {
		return false;
	}

	static function getCaptureFilePathTemplate() : hl.Bytes {
		return null;
	}

	static function getNumCaptures() : Int {
		return -1;
	}

	static function getCapture(index:Int, filename:hl.Bytes, pathlength:hl.Ref<Int>, timestamp:hl.Ref<haxe.Int64>) : Bool {
		return false;
	}

	static function triggerCapture() : Bool {
		return false;
	}

	static function isTargetControlConnected() : Bool {
		return false;
	}

	static function launchReplayUi(connectTargetControl:Int, cmdline:hl.Bytes) : Bool {
		return false;
	}

	static function startFrameCapture(device:Dynamic, wndHandle:Dynamic) : Bool {
		return false;
	}

	static function isFrameCapturing() : Bool {
		return false;
	}

	static function endFrameCapture(device:Dynamic, wndHandle:Dynamic) : Bool {
		return false;
	}
}

/**
	RenderDoc In-application API

	Usage: Install RenderDoc and place/copy it's lib file in your PATH (e.g. `renderdoc.dll` for Windows).
**/
@:access(hxd.tools.RenderDocNative)
class RenderDoc {

	/**
		Loads the RenderDoc library. Returns `false` if it is not available.
	**/
	public static function init() : Bool {
		return RenderDocNative.init();
	}

	/**
		Sets the keys triggering a capture.
	**/
	public static function setCaptureKeys(keys:Array<RenderDocInputButton>) : Bool {
		var bytes = hl.Bytes.getArray(keys);
		return RenderDocNative.setCaptureKeys(bytes, keys.length);
	}

	/**
		Sets the path template of the capture files.
	**/
	public static function setCaptureFilePathTemplate(pathTemplate:String) : Bool {
		return RenderDocNative.setCaptureFilePathTemplate(pathTemplate == null ? null : @:privateAccess pathTemplate.toUtf8());
	}

	/**
		Returns the path template of the capture files.
	**/
	public static function getCaptureFilePathTemplate() : String {
		var bytes = RenderDocNative.getCaptureFilePathTemplate();
		return bytes == null ? null : @:privateAccess String.fromUTF8(bytes);
	}

	/**
		Returns the number of captures made.
	**/
	public static function getNumCaptures() {
		return RenderDocNative.getNumCaptures();
	}

	/**
		Returns the file path of the capture, or `null`.
	**/
	public static function getCapture(index:Int) : String {
		var length = 0;
		if( RenderDocNative.getCapture(index, null, length, null) ) {
			var bytes = new hl.Bytes(length);
			RenderDocNative.getCapture(index, bytes, null, null);
			return @:privateAccess String.fromUTF8(bytes);
		}
		return null;
	}

	/**
		Captures the next frame.
	**/
	public static function triggerCapture() : Bool {
		return RenderDocNative.triggerCapture();
	}

	/**
		Tells if the RenderDoc UI is connected to the application.
	**/
	public static function isTargetControlConnected() : Bool {
		return RenderDocNative.isTargetControlConnected();
	}

	/**
		Launches the RenderDoc UI, optionally connected to the application.
	**/
	public static function launchReplayUi(connectTargetControl:Bool, cmdline:String) : Bool {
		var cmd = cmdline == null ? null : @:privateAccess cmdline.toUtf8();
		return RenderDocNative.launchReplayUi(connectTargetControl ? 1 : 0, cmd);
	}

	/**
		Pass `null` to use default
	**/
	public static function startFrameCapture(device:Dynamic, wndHandle:Dynamic) : Bool {
		return RenderDocNative.startFrameCapture(device, wndHandle);
	}

	/**
		Tells if a frame is being captured.
	**/
	public static function isFrameCapturing() : Bool {
		return RenderDocNative.isFrameCapturing();
	}

	/**
		Ends the capture started with `startFrameCapture`. Pass `null` to use the default device and window.
	**/
	public static function endFrameCapture(device:Dynamic, wndHandle:Dynamic) : Bool {
		return RenderDocNative.endFrameCapture(device, wndHandle);
	}
}
#end
