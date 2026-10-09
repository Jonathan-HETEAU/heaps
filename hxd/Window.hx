package hxd;

import hxd.impl.MouseMode;

/**
	How the window is displayed (see `Window.displayMode`).
**/
enum DisplayMode {
	/**
		A normal window.
	**/
	Windowed;
	/**
		A window without borders covering the whole screen.
	**/
	Borderless;
	/**
		Exclusive fullscreen.
	**/
	Fullscreen;
}

/**
	The application window, which receives the input events and resize notifications.
	On JS, it is a canvas of the page. Use `Window.getInstance()` to get the current window.
	Each target has its own implementation (`Window.hl.hx`, `Window.js.hx`).
**/
class Window {

	var resizeEvents : List<Void -> Void>;
	var eventTargets : List<Event -> Void>;

	/**
		The X position of the window on the screen (of the canvas in the page on JS).
	**/
	public var x(get, never) : Int;
	/**
		The Y position of the window on the screen (of the canvas in the page on JS).
	**/
	public var y(get, never) : Int;
	/**
		The width of the drawable area in pixels.
	**/
	public var width(get, never) : Int;
	/**
		The height of the drawable area in pixels.
	**/
	public var height(get, never) : Int;
	/**
		The X position of the mouse, relative to the window.
	**/
	public var mouseX(get, never) : Int;
	/**
		The Y position of the mouse, relative to the window.
	**/
	public var mouseY(get, never) : Int;
	/**
		Tells if the mouse is locked. Deprecated: use `mouseMode = AbsoluteUnbound(true)`.
	**/
	@:deprecated("Use mouseMode = AbsoluteUnbound(true)")
	public var mouseLock(get, set) : Bool;
	/**
		If set, will restrain the mouse cursor within the window boundaries.
	**/
	public var mouseClip(get, set) : Bool;
	/**
		Set the mouse movement input handling mode.

		@see `hxd.impl.MouseMode` for more details on each mode.
	**/
	public var mouseMode(default, set) : MouseMode = Absolute;
	/**
		Tells if the rendering is synchronized with the screen refresh. It can't be disabled on JS.
	**/
	public var vsync(get, set) : Bool;
	/**
		Tells if the window has the focus.
	**/
	public var isFocused(get, never) : Bool;

	/**
		The title of the window (of the page on JS).
	**/
	public var title(get, set) : String;
	/**
		The display mode of the window: windowed, borderless or fullscreen. On JS, any mode other than `Windowed` requests the browser fullscreen.
	**/
	public var displayMode(get, set) : DisplayMode;

	/**
		Creates a window.
	**/
	public function new() : Void {
		eventTargets = new List();
		resizeEvents = new List();
	}

	/**
		Called when the user asks to close the window. Return `false` to keep it open.
	**/
	public dynamic function onClose() : Bool {
		return true;
	}

	/**
		An event called when `mouseMode` is changed.

		Note that changing from `Relative(callbackA)` to `Relative(callbackB)` would also cause this event as any other parameter changes.

		@returns Force-override of the mouse mode that will be used as an active mode or null.
	**/
	public dynamic function onMouseModeChange( from : MouseMode, to : MouseMode ) : Null<MouseMode> {
		return null;
	}

	/**
		Sets the icon of the window (not supported on JS).
	**/
	public function setIcon(icon: hxd.BitmapData) : Void {
	}

	/**
		Moves the window on the screen (not supported on JS).
	**/
	public function setPosition(x: Int, y: Int) {
	}

	/**
		Sends an event to all the event targets.
	**/
	public function event( e : hxd.Event ) : Void {
		for( et in eventTargets )
			et(e);
	}

	/**
		Adds a function called for every input event of the window.
	**/
	public function addEventTarget( et : Event->Void ) : Void {
		eventTargets.add(et);
	}

	/**
		Removes a function added with `addEventTarget`.
	**/
	public function removeEventTarget( et : Event->Void ) : Void {
		for( e in eventTargets )
			if( Reflect.compareMethods(e,et) ) {
				eventTargets.remove(e);
				break;
			}
	}

	/**
		Adds a function called when the window is resized.
	**/
	public function addResizeEvent( f : Void -> Void ) : Void {
		resizeEvents.push(f);
	}

	/**
		Removes a function added with `addResizeEvent`.
	**/
	public function removeResizeEvent( f : Void -> Void ) : Void {
		for( e in resizeEvents )
			if( Reflect.compareMethods(e,f) ) {
				resizeEvents.remove(f);
				break;
			}
	}

	function onResize(e:Dynamic) : Void {
		for( r in resizeEvents )
			r();
	}

	/**
		Resizes the window (not supported on JS). In fullscreen mode, it also changes the screen resolution to the closest available one.
	**/
	public function resize( width : Int, height : Int ) : Void {
	}

	/**
		Add a drag&drop events callback.
	**/
	public function addDragAndDropTarget( f : ( event : DropFileEvent ) -> Void ) : Void {
	}

	/**
		Remove a drag&drop events callback.
	**/
	public function removeDragAndDropTarget( f : ( event : DropFileEvent ) -> Void ) : Void {
	}

	/**
		Enables or disables fullscreen mode. Deprecated: use `displayMode`.
	**/
	@:deprecated("Use the displayMode property instead")
	public function setFullScreen( v : Bool ) : Void {
	}

	/**
		Set the hardware mouse cursor position relative to window boundaries.
	**/
	public function setCursorPos( x : Int, y : Int, emitEvent : Bool = false ) : Void {
		throw "Not implemented";
	}

	/**
		Makes this window the current one, returned by `getInstance`.
	**/
	public function setCurrent() {
	}

	static var inst : Window = null;
	/**
		Returns the current window.
	**/
	public static function getInstance() : Window {
		if( inst == null ) inst = new Window();
		return inst;
	}

	function get_x() : Int {
		return 0;
	}

	function get_y() : Int {
		return 0;
	}

	function get_mouseX() : Int {
		return 0;
	}

	function get_mouseY() : Int {
		return 0;
	}

	function get_width() : Int {
		return 0;
	}

	function get_height() : Int {
		return 0;
	}

	function get_mouseLock() : Bool {
		return switch (mouseMode) { case AbsoluteUnbound(_): true; default: false; };
	}

	function set_mouseLock(v:Bool) : Bool {
		return set_mouseMode(v ? AbsoluteUnbound(true) : Absolute).equals(AbsoluteUnbound(true));
	}

	function get_mouseClip() : Bool {
		return false;
	}

	function set_mouseClip( v : Bool ) : Bool {
		if ( v ) throw "Not implemented";
		return false;
	}

	function set_mouseMode( v : MouseMode ) : MouseMode {
		if ( v != Absolute ) throw "Not implemented";
		return Absolute;
	}

	function get_vsync() : Bool return true;

	function set_vsync( b : Bool ) : Bool {
		if( !b ) throw "Can't disable vsync on this platform";
		return true;
	}

	function get_isFocused() : Bool return true;

	function get_displayMode() : DisplayMode {
		return Windowed;
	}
	function set_displayMode( m : DisplayMode ) : DisplayMode {
		return m;
	}

	function get_title() : String {
		return "";
	}
	function set_title( t : String ) : String {
		return t;
	}

	/**
		Enables or disables the mouse capture: while enabled, the window keeps receiving mouse events when the cursor leaves it.
	**/
	public function captureMouseEvents(enable: Bool) : Void {
	}
}
