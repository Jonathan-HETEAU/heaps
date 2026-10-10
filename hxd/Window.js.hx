package hxd;

import js.Browser;
import hxd.impl.MouseMode;

/**
	How the window is displayed (see `Window.displayMode`). On HashLink, it is the display mode type of the native library (SDL or DirectX) when one is used.
**/
enum DisplayMode {
	/**
		The canvas is displayed in the page.
	**/
	Windowed;
	/**
		The browser is in fullscreen mode.
	**/
	Borderless;
	/**
		The browser is in fullscreen mode.
	**/
	Fullscreen;
	/**
		The browser is in fullscreen mode.
	**/
	FullscreenResize;
}

private class NativeDroppedFile extends hxd.DropFileEvent.DroppedFile {

	public function new( native : js.html.File ) {
		super(native.name);
		this.native = native;
	}

	public function getBytes( callback : ( data : haxe.io.Bytes ) -> Void ) {
		var reader = new js.html.FileReader();
		reader.onload = (_) -> callback(haxe.io.Bytes.ofData(reader.result));
		reader.onerror = (_) -> callback(null);
		reader.readAsArrayBuffer(native);
	}

}

/**
	The application window, which receives the input events and resize notifications.
	On JS, it is a canvas of the page. Use `Window.getInstance()` to get the current window.
	Each target has its own implementation (`Window.hl.hx`, `Window.js.hx`).
**/
class Window {

	var resizeEvents : List<Void -> Void>;
	var eventTargets : List<Event -> Void>;
	var dropTargets : List<DropFileEvent -> Void>;

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
		If set, key events are not stopped by the canvas and propagate to the rest of the page. Set from the `globalEvents` constructor argument, or the `propagateKeyEvents` canvas attribute.
	**/
	public var propagateKeyEvents : Bool;

	/**
		The title of the window (of the page on JS).
	**/
	public var title(get, set) : String;
	/**
		The display mode of the window: windowed, borderless or fullscreen. On JS, any mode other than `Windowed` requests the browser fullscreen.
	**/
	public var displayMode(get, set) : DisplayMode;

	var curMouseX : Float = 0.;
	var curMouseY : Float = 0.;
	var pointerLockTarget : js.html.Element;

	var canvas : js.html.CanvasElement;
	var element : js.html.EventTarget;
	var canvasPos : { var width(default, never) : Float; var height(default, never) : Float; var left(default, never) : Float; var top(default, never) : Float; };

	var curW : Int;
	var curH : Int;

	var focused : Bool;
	var observer : Dynamic;

	var lastPointerId : Int;

	/**
		When enabled, the browser zoom does not affect the canvas.
		(default : true)
	**/
	public var useScreenPixels : Bool = js.Browser.supported;
	/**
		Sets the maximum pixel ratio that will be used (only applicable with useScreenPixels enabled).
		(default : Browser.window.devicePixelRatio)
	**/
	public var maxPixelRatio : Float = js.Browser.window.devicePixelRatio;
	/**
		When enabled, the user click event on the canvas that would trigger mouse capture to be enabled would be discarded.
		(default : true)
	**/
	public var discardMouseCaptureEvent : Bool = true;
	var discardMouseUp : Int = -1;
	var canLockMouse : Bool = true;

	/**
		Creates a window. On HashLink: with the given title and size; flags: `fixed` disables resizing, `hidden` creates it hidden, `background` (DirectX) creates it without activating it. The main window is created by `hxd.System.createWindow`.
		On JS: for the given canvas, or for the `#webgl` canvas of the page. If `globalEvents` is set (or the canvas has the `globalEvents="1"` attribute), events are captured on the whole page instead of only the canvas.
	**/
	public function new( ?canvas : js.html.CanvasElement, ?globalEvents ) : Void {
		var customCanvas = canvas != null;
		eventTargets = new List();
		resizeEvents = new List();
		dropTargets = new List();

		if( !js.Browser.supported ) {
			canvasPos = { "width":0, "top":0, "left":0, "height":0 };
			return;
		}

		if( canvas == null ) {
			canvas = cast js.Browser.document.getElementById("webgl");
			if( canvas == null ) throw "Missing canvas #webgl";
			if( canvas.getAttribute("globalEvents") == "1" )
				globalEvents = true;
		}

		this.canvas = canvas;
		this.propagateKeyEvents = globalEvents;

		var propagate = canvas.getAttribute("propagateKeyEvents");
		if (propagate != null) {
			this.propagateKeyEvents = propagate != "0" && propagate != "false";
		}

		focused = globalEvents;
		element = globalEvents ? js.Browser.window : canvas;
		canvasPos = canvas.getBoundingClientRect();
		// add mousemove on window (track mouse even when outside of component)
		// unless we're having a custom canvas (prevent leaking the listener)
		if( customCanvas ) {
			canvas.addEventListener("mousemove", onMouseMove);
		}

		else {
			js.Browser.window.addEventListener("mousemove", onMouseMove);
		}


		element.addEventListener("mousedown", onMouseDown);
		element.addEventListener("mouseup", onMouseUp);
		element.addEventListener("mouseleave", onMouseLeave);
		element.addEventListener("wheel", onMouseWheel);
		element.addEventListener("touchstart", onTouchStart);
		element.addEventListener("touchmove", onTouchMove);
		element.addEventListener("touchend", onTouchEnd);
		element.addEventListener("keydown", onKeyDown);
		element.addEventListener("keyup", onKeyUp);
		element.addEventListener("keypress", onKeyPress);
		element.addEventListener("blur", onFocus.bind(false));
		element.addEventListener("focus", onFocus.bind(true));
		element.addEventListener("pointerdown", onPointerDown);
		element.addEventListener("pointerup", onPointerUp);

		if ((js.Browser.window:Dynamic).ResizeObserver != null) {
			// Modern solution for canvas resize monitoring, supported in most browsers, but not Haxe API.
			observer = js.Syntax.construct("ResizeObserver", function(e) {
				checkResize();
			});
			observer.observe(canvas);
		}

		js.Browser.window.addEventListener("resize", checkResize);

		js.Browser.document.addEventListener("pointerlockchange", onPointerLockChange);

		canvas.addEventListener("contextmenu", function(e){
			e.stopPropagation();
			if (e.button == 2) {
				e.preventDefault();
			}
			return false;
		});
		if( globalEvents ) {
			// make first mousedown on canvas trigger event
			canvas.addEventListener("mousedown", function(e) {
				onMouseDown(e);
				e.stopPropagation();
				e.preventDefault();
			});
			element.addEventListener("contextmenu",function(e) {
				e.stopPropagation();
				e.preventDefault();
				return false;
			});
		} else {
			// allow focus
			if( canvas.getAttribute("tabindex") == null )
				canvas.setAttribute("tabindex","1");
			canvas.style.outline = 'none';
		}
		curW = this.width;
		curH = this.height;
	}

	function checkResize() {
		canvasPos = canvas.getBoundingClientRect();
		var cw = this.width, ch = this.height;
		if( curW != cw || curH != ch ) {
			curW = cw;
			curH = ch;
			onResize(null);
		}
	}

	/**
		Stops observing the canvas size and releases the instance.
	**/
	public function dispose() {
		if( inst == this ) inst = null;
		if ((js.Browser.window:Dynamic).ResizeObserver != null) {
			if (observer != null) {
				observer.disconnect();
				observer = null;
			}
		}
	}

	/**
		Sets the icon of the window (not supported on JS).
	**/
	public function setIcon(icon: hxd.BitmapData) : Void {
	}

	/**
		Called when the user asks to close the window. Return `false` to keep it open.
	**/
	public dynamic function onClose() : Bool {
		return true;
	}

	/**
		Called when `mouseMode` changes, including when only the parameters of the mode change.
		Returns a mouse mode to use instead of `to`, or `null` to keep it.
	**/
	public dynamic function onMouseModeChange( from : MouseMode, to : MouseMode ) : Null<MouseMode> {
		return null;
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
		Moves the window on the screen (not supported on JS).
	**/
	public function setPosition(x: Int, y: Int) {
	}


	/**
		Adds a function called when files are dropped on the window.
	**/
	public function addDragAndDropTarget( f : ( event : DropFileEvent ) -> Void ) : Void {
		if( dropTargets.length == 0 ) {
			var element = canvas; // Probably should adhere to `globalEvents`?
			element.addEventListener("dragover", handleDragAndDropEvent);
			element.addEventListener("drop", handleDragAndDropEvent);
		}
		dropTargets.add(f);
	}

	/**
		Removes a function added with `addDragAndDropTarget`.
	**/
	public function removeDragAndDropTarget( f : ( event : DropFileEvent ) -> Void ) : Void {
		for( e in dropTargets )
			if( Reflect.compareMethods(e, f) ) {
				dropTargets.remove(f);
				break;
			}
		if( dropTargets.length == 0 ) {
			var element = canvas; // Probably should adhere to `globalEvents`?
			element.removeEventListener("dragover", handleDragAndDropEvent);
			element.removeEventListener("drop", handleDragAndDropEvent);
		}
	}

	function handleDragAndDropEvent( e : js.html.DragEvent ) {
		e.preventDefault();
		if ( e.type == "dragover" || e.dataTransfer == null || e.dataTransfer.files.length == 0 ) return;
		var ev = new DropFileEvent([
				for ( file in e.dataTransfer.files ) new NativeDroppedFile(file)
			],
			Math.round((e.clientX - canvasPos.left) * getPixelRatio()),
			Math.round((e.clientY - canvasPos.top) * getPixelRatio())
		);
		for( dt in dropTargets ) dt(ev);
	}

	/**
		Enables or disables fullscreen mode. Deprecated: use `displayMode`.
	**/
	@:deprecated("Use the displayMode property instead")
	public function setFullScreen( v : Bool ) : Void {
		var doc = js.Browser.document;
		var elt : Dynamic = doc.documentElement;
		if( (doc.fullscreenElement == elt) == v )
			return;
		if( v )
			elt.requestFullscreen();
		else
			doc.exitFullscreen();
	}


	/**
		Moves the mouse cursor, relative to the window. If `emitEvent` is set, an `EMove` event is sent.
		On JS, the browser can't move the cursor: it is only allowed in relative mouse modes, and sets the mouse position.
	**/
	public function setCursorPos( x : Int, y : Int, emitEvent : Bool = false ) : Void {
		if ( mouseMode == Absolute ) throw "setCursorPos only allowed in relative mouse modes on this platform.";
		curMouseX = x + canvasPos.left;
		curMouseY = y + canvasPos.top;
		if (emitEvent) event(new hxd.Event(EMove, x, y));
	}

	/**
		Enables or disables the mouse capture: while enabled, the window keeps receiving mouse events when the cursor leaves it.
	**/
	public function captureMouseEvents(enable: Bool) : Void {
		if (lastPointerId < 0)
			return;
		if (enable) {
			try {
				canvas.setPointerCapture(lastPointerId);
			} catch(e) {};
		} else {
			try {
				canvas.releasePointerCapture(lastPointerId);
			} catch(e) {};
		}
	}

	/**
		Makes this window the current one, returned by `getInstance`.
	**/
	public function setCurrent() {
		inst = this;
	}

	static var inst : Window = null;
	/**
		Returns the current window (on JS, it is created for the `#webgl` canvas if needed).
	**/
	public static function getInstance() : Window {
		if( inst == null ) inst = new Window();
		return inst;
	}

	function getPixelRatio() {
		return useScreenPixels ? Math.min(js.Browser.window.devicePixelRatio, maxPixelRatio) : 1;
	}

	function get_x() : Int {
		return Math.round(canvasPos.left);
	}

	function get_y() : Int {
		return Math.round(canvasPos.top);
	}

	function get_width() {
		return Math.round(canvasPos.width * getPixelRatio());
	}

	function get_height() {
		return Math.round(canvasPos.height * getPixelRatio());
	}

	function get_mouseX() {
		return Math.round((curMouseX - canvasPos.left) * getPixelRatio());
	}

	function get_mouseY() {
		return Math.round((curMouseY - canvasPos.top) * getPixelRatio());
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
		if ( v ) throw "Can't clip cursor on this platform.";
		return false;
	}

	function set_mouseMode( v : MouseMode ) : MouseMode {
		if ( v.equals(mouseMode) ) return v;

		var forced = onMouseModeChange(mouseMode, v);
		if (forced != null) v = forced;
		var target = this.pointerLockTarget = canvas != null ? canvas : Browser.window.document.documentElement;

		if ( v == Absolute ) {
			if ( target.ownerDocument.pointerLockElement == target ) target.ownerDocument.exitPointerLock();
		} else if ( canLockMouse ) {
			if ( target.ownerDocument.pointerLockElement != target ) target.requestPointerLock();
		}
		return mouseMode = v;
	}

	function get_vsync() : Bool return true;

	function set_vsync( b : Bool ) : Bool {
		if( !b ) throw "Can't disable vsync on this platform";
		return true;
	}

	function onPointerLockChange( e : js.html.Event ) {
		if ( mouseMode != Absolute && pointerLockTarget.ownerDocument.pointerLockElement != pointerLockTarget ) {
			// Firefox: Do not instantly re-lock the mouse if user altered mouseMode via `onMouseMouseChange` back into relative.
			canLockMouse = false;
			// User cancelled out of the pointer lock by pressing escape or by other means: Switch to Absolute mode
			mouseMode = Absolute;
			canLockMouse = true;
		}
	}

	function onMouseDown(e:js.html.MouseEvent) {
		if ( mouseMode == Absolute ) {
			if ( e.clientX != curMouseX || e.clientY != curMouseY ) onMouseMove(e);
		} else {
			// If we attempted to enter locked mode when browser didn't let us - try to enter locked mode on user click.
			if ( pointerLockTarget.ownerDocument.pointerLockElement != pointerLockTarget ) {
				pointerLockTarget.requestPointerLock();
				if (discardMouseCaptureEvent) {
					// Avoid stray ERelease due to discarded EPush event.
					discardMouseUp = e.button;
					return;
				}
			}
			if ( e.movementX != 0 || e.movementY != 0 ) onMouseMove(e);
		}
		var ev = new Event(EPush, mouseX, mouseY);
		ev.button = switch( e.button ) {
			case 1: 2;
			case 2: 1;
			case x: x;
		};
		event(ev);
	}

	function onMouseUp(e:js.html.MouseEvent) {
		if ( discardMouseUp == e.button ) {
			discardMouseUp = -1;
			return;
		}
		if ( mouseMode == Absolute ? (e.clientX != curMouseX || e.clientY != curMouseY) : (e.movementX != 0 || e.movementY != 0) ) {
			onMouseMove(e);
		}
		var ev = new Event(ERelease, mouseX, mouseY);
		ev.button = switch( e.button ) {
			case 1: 2;
			case 2: 1;
			case x: x;
		};
		event(ev);
	}

	function onMouseLeave(e:js.html.MouseEvent) {
		var ev = new Event(EReleaseOutside, mouseX, mouseY);
		ev.button = switch( e.button ) {
			case 1: 2;
			case 2: 1;
			case x: x;
		};
		event(ev);
	}

	function onMouseMove(e:js.html.MouseEvent) {
		switch (mouseMode) {
			case Absolute:
				curMouseX = e.clientX;
				curMouseY = e.clientY;
				event(new Event(EMove, mouseX, mouseY));
			case Relative(callback, _):
				if (pointerLockTarget.ownerDocument.pointerLockElement != pointerLockTarget) return;
				var ev = new Event(EMove, e.movementX, e.movementY);
				callback(ev);
				if (!ev.cancel && ev.propagate) {
					ev.cancel = false;
					ev.propagate = false;
					ev.relX = curMouseX;
					ev.relY = curMouseY;
					event(ev);
				}
			case AbsoluteUnbound(_):
				if (pointerLockTarget.ownerDocument.pointerLockElement != pointerLockTarget) return;
				curMouseX += e.movementX;
				curMouseY += e.movementY;
				event(new Event(EMove, mouseX, mouseY));
		}
	}

	function onMouseWheel(e:js.html.WheelEvent) {
		e.preventDefault();
		var ev = new Event(EWheel, mouseX, mouseY);
		ev.wheelDelta = e.deltaY / 120; // browser specific?
		event(ev);
	}

	function onTouchStart(e:js.html.TouchEvent) {
		e.preventDefault();
		var x, y, ev;
		for (touch in e.changedTouches) {
			x = Math.round((touch.clientX - canvasPos.left) * getPixelRatio());
			y = Math.round((touch.clientY - canvasPos.top) * getPixelRatio());
			ev = new Event(EPush, x, y);
			ev.touchId = touch.identifier;
			event(ev);
		}
	}

	function onTouchMove(e:js.html.TouchEvent) {
		e.preventDefault();
		var x, y, ev;
		for (touch in e.changedTouches) {
			x = Math.round((touch.clientX - canvasPos.left) * getPixelRatio());
			y = Math.round((touch.clientY - canvasPos.top) * getPixelRatio());
			ev = new Event(EMove, x, y);
			ev.touchId = touch.identifier;
			event(ev);
		}
	}

	function onTouchEnd(e:js.html.TouchEvent) {
		e.preventDefault();
		var x, y, ev;
		for (touch in e.changedTouches) {
			x = Math.round((touch.clientX - canvasPos.left) * getPixelRatio());
			y = Math.round((touch.clientY - canvasPos.top) * getPixelRatio());
			ev = new Event(ERelease, x, y);
			ev.touchId = touch.identifier;
			event(ev);
		}
	}

	function onKeyUp(e:js.html.KeyboardEvent) {
		var ev = new Event(EKeyUp, mouseX, mouseY);
		ev.keyCode = e.keyCode;
		event(ev);
		if( !propagateKeyEvents ) {
			e.preventDefault();
			e.stopPropagation();
		}
	}

	function onKeyDown(e:js.html.KeyboardEvent) {
		var ev = new Event(EKeyDown, mouseX, mouseY);
		ev.keyCode = e.keyCode;
		event(ev);
		if( !propagateKeyEvents ) {
			switch ev.keyCode {
				case 37, 38, 39, 40, // Arrows
					33, 34, // Page up/down
					35, 36, // Home/end
					8, // Backspace
					9, // Tab
					16, // Shift
					17 : // Ctrl
						e.preventDefault();
				case _ :
			}
			e.stopPropagation();
		}
	}

	function onKeyPress(e:js.html.KeyboardEvent) {
		var ev = new Event(ETextInput, mouseX, mouseY);
		ev.charCode = e.charCode;
		event(ev);
		if( !propagateKeyEvents ) {
			e.preventDefault();
			e.stopPropagation();
		}
	}

	function onFocus(b: Bool) {
		event(new Event(b ? EFocus : EFocusLost));
		focused = b;
	}

	function onPointerDown(e:js.html.PointerEvent) {
		lastPointerId = e.pointerId;
	}

	function onPointerUp(e:js.html.PointerEvent) {
		lastPointerId = -1;
	}

	function get_isFocused() : Bool return focused;

	function get_displayMode() : DisplayMode {
		var doc = js.Browser.document;
		if ( doc.fullscreenElement != null) {
			return Borderless;
		}

		return Windowed;
	}

	function set_displayMode( m : DisplayMode ) : DisplayMode {
		if( !js.Browser.supported )
			return m;
		var doc = js.Browser.document;
		var elt : Dynamic = doc.documentElement;
		var fullscreen = m != Windowed;
		if( (doc.fullscreenElement == elt) == fullscreen )
			return Windowed;
		if( m != Windowed )
			elt.requestFullscreen();
		else
			doc.exitFullscreen();

		return m;
	}

	function get_title() : String {
		return js.Browser.document.title;
	}
	function set_title( t : String ) : String {
		return js.Browser.document.title = t;
	}
}
