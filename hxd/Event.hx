package hxd;

/**
	The kinds of `Event`.
**/
enum EventKind {
	/**
		A mouse button or a touch is pressed.
	**/
	EPush;
	/**
		A mouse button or a touch is released.
	**/
	ERelease;
	/**
		The mouse or a touch moves.
	**/
	EMove;
	/**
		The cursor enters an interactive.
	**/
	EOver;
	/**
		The cursor leaves an interactive.
	**/
	EOut;
	/**
		The mouse wheel is used (see `Event.wheelDelta`).
	**/
	EWheel;
	/**
		An interactive gets the focus.
	**/
	EFocus;
	/**
		An interactive loses the focus.
	**/
	EFocusLost;
	/**
		A key is pressed (see `Event.keyCode`).
	**/
	EKeyDown;
	/**
		A key is released (see `Event.keyCode`).
	**/
	EKeyUp;
	/**
		A button pressed on an interactive is released outside of it.
	**/
	EReleaseOutside;
	/**
		A character is typed (see `Event.charCode`).
	**/
	ETextInput;
	/**
		Used to check if we are still on the interactive if no EMove was triggered this frame.
	**/
	ECheck;
}

/**
	An input event, sent by the window and dispatched to the interactives by `SceneEvents`.
**/
class Event {

	/**
		The kind of event.
	**/
	public var kind : EventKind;
	/**
		The X position of the event. It is in window coordinates when sent by the window, and relative to the interactive when it receives it (the hit point in 3D).
	**/
	public var relX : Float;
	/**
		The Y position of the event (see `relX`).
	**/
	public var relY : Float;
	/**
		The Z position of the hit point, for 3D interactives.
	**/
	public var relZ : Float;
	/**
		Will propagate the event to other interactives that are below the current one.
	**/
	public var propagate : Bool;
	/**
		Will cancel the default behavior for this event as if it had happen outside of the interactive zone.
	**/
	public var cancel : Bool;
	/**
		The mouse button of `EPush`, `ERelease` and `EReleaseOutside` (see `hxd.Key.MOUSE_LEFT`).
	**/
	public var button : Int = 0;
	/**
		The identifier of the touch, for touch events.
	**/
	public var touchId : Int;
	/**
		The key code of `EKeyDown` and `EKeyUp` (see `hxd.Key`).
	**/
	public var keyCode : Int;
	/**
		The unicode character of `ETextInput`.
	**/
	public var charCode : Int;
	/**
		The wheel movement of `EWheel`.
	**/
	public var wheelDelta : Float;

	/**
		Creates an event of kind `k` at the given position.
	**/
	public function new(k,x=0.,y=0.) {
		kind = k;
		this.relX = x;
		this.relY = y;
	}

	/**
		Returns a description of the event with its kind, position and relevant field.
	**/
	public function toString() {
		return kind + "[" + Std.int(relX) + "," + Std.int(relY) + "]" + switch( kind ) {
		case EPush, ERelease, EReleaseOutside: ",button=" + button;
		case EMove, EOver, EOut, EFocus, EFocusLost, ECheck: "";
		case EWheel: ",wheelDelta=" + wheelDelta;
		case EKeyDown, EKeyUp: ",keyCode=" + keyCode;
		case ETextInput: ",charCode=" + charCode;
		}
	}

}