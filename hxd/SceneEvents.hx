package hxd;

/**
	A scene which can receive events from `SceneEvents`, such as `h2d.Scene` and `h3d.scene.Scene`.
**/
interface InteractiveScene {
	/**
		Called when the scene is added to or removed (with `null`) from a `SceneEvents`.
	**/
	public function setEvents( s : SceneEvents ) : Void;
	/**
		Returns the next interactive under the event position after `last` (or the first one if `last` is `null`), and sets the event position relative to it.
	**/
	public function handleEvent( e : Event, last : Interactive ) : Interactive;
	/**
		Sends the event to the interactive, with its position relative to it.
	**/
	public function dispatchEvent( e : Event, to : Interactive ) : Void;
	/**
		Sends the event to the event listeners of the scene, when no interactive handled it.
	**/
	public function dispatchListeners( e : Event ) : Void;
	/**
		Tells if the interactive is visible in the scene.
	**/
	public function isInteractiveVisible( i : Interactive ) : Bool;
}

/**
	An object which can receive events from `SceneEvents`, such as `h2d.Interactive` and `h3d.scene.Interactive`.
**/
interface Interactive {
	/**
		If set, events are also sent to the interactives below this one.
	**/
	public var propagateEvents : Bool;
	/**
		The cursor displayed when the mouse is over the interactive.
	**/
	public var cursor(default, set) : hxd.Cursor;
	/**
		Handles an event sent to the interactive.
	**/
	public function handleEvent( e : Event ) : Void;
	/**
		Returns the scene of the interactive.
	**/
	public function getInteractiveScene() : InteractiveScene;
}

/**
	Dispatches the window input events to the interactives of one or more scenes.
	It handles the focus, the over/out events, the mouse capture and the cursor.
	`hxd.App` creates one as `sevents`, with `s2d` and `s3d` added.
**/
class SceneEvents {

	var window : hxd.Window;
	var scenes : Array<InteractiveScene>;

	var overList : Array<Interactive>;
	// Indexes and rel position in overList of Interactives that received EOver this frame.
	// This array is never cleared apart from nulling Interactive, because internal counter is used, so those values are meaningless on practice.
	var overCandidates : Array<{ i : Interactive, s : InteractiveScene, x : Float, y : Float, z : Float }>;
	var overIndex : Int = -1;
	var currentFocus : Interactive;

	var pendingEvents : Array<hxd.Event>;
	var pushList : Array<Interactive>;
	var currentDrag : { f : hxd.Event -> Void, onCancel : Void -> Void, ref : Null<Int> };
	var mouseX = -1.;
	var mouseY = -1.;
	var lastTouch = 0;

	var focusLost = new hxd.Event(EFocusLost);
	var checkPos = new hxd.Event(ECheck);
	var onOut = new hxd.Event(EOut);
	var onOver = new hxd.Event(EOver);
	var isOut = false;

	/**
	 * enablePhysicalMouse : enable mouse movements of system mouse, set it to false anse use setMousePos instead to manually set mouse position
	 */
	public var enablePhysicalMouse = true;

	/**
	 * enable/disable per frame check of elements under mouse (default:true)
	 */
	public var mouseCheckMove = true;

	/**
	 * Default cursor when there is no Interactive present under cursor.
	 */
	public var defaultCursor(default,set) : Cursor = Default;

	/**
		Creates an event dispatcher listening to the window (the current one by default).
	**/
	public function new( ?window ) {
		scenes = [];
		pendingEvents = [];
		pushList = [];
		overList = [];
		overCandidates = [];
		if( window == null ) window = hxd.Window.getInstance();
		this.window = window;
		window.addEventTarget(onEvent);
	}

	/**
		Sets the mouse position, used when `enablePhysicalMouse` is disabled.
	**/
	public function setMousePos( xPos, yPos ) {
		mouseX = xPos;
		mouseY = yPos;
	}

	function onRemove(i) {
		if( i == currentFocus )
			currentFocus = null;
		if( overIndex >= 0 ) {
			var index = overList.indexOf(i);
			if( index >= 0 ) {
				// onRemove is triggered which we are dispatching events
				// let's carefully update indexes
				overList.remove(i);
				if( index < overIndex ) overIndex--;
			}
		} else {
			overList.remove(i);
			selectCursor();
		}
		pushList.remove(i);
	}

	/**
		Adds a scene, at the end of the list or at `index`. The scenes receive events in list order.
	**/
	public function addScene( s : InteractiveScene, ?index : Int ) {
		s.setEvents(this);
		if( index == null ) scenes.push(s) else scenes.insert(index, s);
	}

	/**
		Removes a scene.
	**/
	public function removeScene( s : InteractiveScene ) {
		if( scenes.remove(s) ) s.setEvents(null);
	}

	/**
		Stops listening to the window events.
	**/
	public function dispose() {
		window.removeEventTarget(onEvent);
	}

	/**
		Gives the focus to the interactive, which then receives the key, text and wheel events. The interactive can refuse it by cancelling the `EFocus` event.
	**/
	public function focus( i : Interactive ) {
		if( currentFocus == i )
			return;
		if( i == null ) {
			blur();
			return;
		}
		if( currentFocus != null ) {
			blur();
			if( currentFocus != null ) return;
		}
		var e = new hxd.Event(EFocus);
		i.handleEvent(e);
		if( !e.cancel )
			currentFocus = i;
	}

	/**
		Removes the focus from the current interactive. It can refuse it by cancelling the `EFocusLost` event.
	**/
	public function blur() {
		if( currentFocus == null )
			return;
		focusLost.cancel = false;
		currentFocus.handleEvent(focusLost);
		if( !focusLost.cancel )
			currentFocus = null;
	}

	function checkFocus() {
		if( currentFocus == null ) return;
		var s = currentFocus.getInteractiveScene();
		if( s == null ) {
			currentFocus = null;
			return;
		}
		if( !s.isInteractiveVisible(currentFocus) )
			blur();
	}

	function emitEvent( event : hxd.Event ) {
		var oldX = event.relX, oldY = event.relY, overCandidateCount = 0;
		var handled = false;
		var checkOver = false, fillOver = false, checkPush = false, cancelFocus = false, updateCursor = false;
		overIndex = 0;
		switch( event.kind ) {
		case EMove, ECheck:
			checkOver = true;
			fillOver = true;
		case EPush: cancelFocus = true; checkPush = true;
		case ERelease: checkPush = true;
		case EKeyUp, EKeyDown, ETextInput, EWheel:
			if( currentFocus != null ) {
				event.relX = event.relY = 0;
				currentFocus.handleEvent(event);
				event.relX = oldX;
				event.relY = oldY;
				if( !event.propagate && !event.cancel )
					return;
				event.propagate = false;
				event.cancel = false;
			}
		default:
		}

		for( s in scenes ) {
			var last = null;
			while( true ) {
				var i = s.handleEvent(event, last);

				if( i == null ) {
					event.relX = oldX;
					event.relY = oldY;
					break;
				}

				if( checkOver ) {
					if ( fillOver ) {
						var idx = overList.indexOf(i);
						if ( idx == -1 ) {
							if ( overCandidates.length == overCandidateCount ) {
								overCandidates[overCandidateCount] = {
									i : i,
									s : s,
									x : event.relX,
									y : event.relY,
									z : event.relZ
								};
							} else {
								var info = overCandidates[overCandidateCount];
								info.i = i;
								info.s = s;
								info.x = event.relX;
								info.y = event.relY;
								info.z = event.relZ;
							}
							overCandidateCount++;
							overList.insert(overIndex++, i);
							updateCursor = true;
						} else {
							if ( idx < overIndex ) {
								do {
									overList[idx] = overList[idx + 1];
									idx++;
								} while ( idx < overIndex );
								overList[overIndex] = i;
								updateCursor = true;
							} else if ( idx > overIndex ) {
								do {
									overList[idx] = overList[idx - 1];
									idx--;
								} while ( idx > overIndex );
								overList[overIndex] = i;
								updateCursor = true;
							}
							overIndex++;
						}
						fillOver = event.propagate;
					}
				} else {
					if( checkPush ) {
						if( event.kind == EPush )
							pushList.push(i);
						else
							pushList.remove(i);
					}
					if( cancelFocus && i == currentFocus )
						cancelFocus = false;
				}

				event.relX = oldX;
				event.relY = oldY;

				if( !event.propagate ) {
					handled = true;
					break;
				}

				last = i;
				event.propagate = false;
			}
			if( handled )
				break;
		}

		if( cancelFocus && currentFocus != null )
			blur();

		if ( checkOver ) {
			if ( overIndex < overList.length ) {
				while( overIndex < overList.length ) {
					var e = overList.pop();
					e.handleEvent(onOut);
				}
				updateCursor = true;
			}
			if ( overCandidateCount != 0 ) {
				var i = 0, ev = onOver;
				do {
					var info = overCandidates[i++];
					ev.relX = info.x;
					ev.relY = info.y;
					ev.relZ = info.z;
					if( info.s.isInteractiveVisible(info.i) )
						info.i.handleEvent(ev);
					else
						overList.remove(info.i);
					info.i = null;
					info.s = null;
				} while ( i < overCandidateCount );
			}
		}
		overIndex = -1;

		if ( updateCursor )
			selectCursor();

		if( !handled && event != checkPos ) {
			if( event.kind == EPush )
				pushList.push(null);
			else if( event.kind == ERelease )
				pushList.remove(null);
			dispatchListeners(event);
		}

		/*
			We want to make sure that after we have pushed, we send a release even if the mouse
			has been outside of the Interactive (release outside). We don't generate a click in that case.
		*/
		if( event.kind == ERelease && pushList.length > 0 ) {
			for( i in pushList ) {
				if( i == null ) {
					event.kind = EReleaseOutside;
					dispatchListeners(event);
					event.kind = ERelease;
				} else {
					var s = i.getInteractiveScene();
					if( s == null ) continue;
					event.kind = EReleaseOutside;
					s.dispatchEvent(event,i);
					event.kind = ERelease;
					event.relX = oldX;
					event.relY = oldY;
				}
			}
			pushList = new Array();
		}
	}

	/**
		Dispatches the pending events. Called every frame by `hxd.App`.
	**/
	public function checkEvents() {
		var old = pendingEvents;
		var checkMoved = !mouseCheckMove;
		var checkFocused = currentFocus == null;
		if( old.length > 0 ) {
			pendingEvents = [];
			for( e in old ) {
				var ox = e.relX, oy = e.relY;

				switch( e.kind ) {
				case EMove:
					checkMoved = true;
					mouseX = e.relX;
					mouseY = e.relY;
					lastTouch = e.touchId;
				case EPush, ERelease:
					// on mobile, the mouse teleports
					mouseX = e.relX;
					mouseY = e.relY;
					lastTouch = e.touchId;
				case EKeyUp, EKeyDown, ETextInput, EWheel:
					if( !checkFocused ) {
						checkFocused = true;
						checkFocus();
					}
				case EOver:
					isOut = false;
					selectCursor();
					continue;
				case EOut:
					// leave window
					isOut = true;
					if ( overList.length > 0 ) {
						var i = overList.length - 1;
						while ( i >= 0 ) {
							onOut.cancel = false;
							overList[i].handleEvent(onOut);
							overList.remove(overList[i]);
							i--;
						}
						selectCursor();
					}
					continue;
				default:
				}

				if( currentDrag != null && (currentDrag.ref == null || currentDrag.ref == e.touchId) ) {
					e.propagate = true;
					e.cancel = false;
					currentDrag.f(e);
					e.relX = ox;
					e.relY = oy;
					if( !e.propagate )
						continue;
					e.propagate = false;
				}

				emitEvent(e);
			}
		}

		if( !checkFocused )
			checkFocus();

		if( !checkMoved && !isOut && currentDrag == null ) {
			checkPos.relX = mouseX;
			checkPos.relY = mouseY;
			checkPos.touchId = lastTouch;
			checkPos.cancel = false;
			checkPos.propagate = false;
			emitEvent(checkPos);
		}
	}

	/**
		Sends all the following events to `f` until `stopCapture` is called, such as for a drag operation.
		`onCancel` is called when the capture stops. If `touchId` is set, only the events of this touch are captured.
	**/
	public function startCapture( f : hxd.Event -> Void, ?onCancel : Void -> Void, ?touchId : Int ) {
		if ( currentDrag != null && currentDrag.onCancel != null )
			currentDrag.onCancel();
		currentDrag = { f: f, ref: touchId, onCancel: onCancel };
		window.captureMouseEvents(true);
	}

	/**
		Stops the current capture.
	**/
	public function stopCapture() {
		if ( currentDrag != null && currentDrag.onCancel != null )
			currentDrag.onCancel();
		currentDrag = null;
		window.captureMouseEvents(false);
	}

	@:deprecated("Renamed to startCapture") @:dox(hide)
	public inline function startDrag( f : hxd.Event -> Void, ?onCancel : Void -> Void, ?refEvent : hxd.Event ) {
		startCapture(f, onCancel, refEvent != null ? refEvent.touchId : null);
	}

	@:deprecated("Renamed to stopCapture") @:dox(hide)
	public inline function stopDrag() {
		stopCapture();
	}

	/**
		Returns the interactive which has the focus.
	**/
	public function getFocus() {
		return currentFocus;
	}

	/**
		Updates the displayed cursor after the cursor of the interactive changed.
	**/
	public function updateCursor( i : Interactive ) {
		if ( overList.indexOf(i) != -1 ) selectCursor();
	}

	function set_defaultCursor(c) {
		if( Type.enumEq(c,defaultCursor) )
			return c;
		defaultCursor = c;
		selectCursor();
		return c;
	}

	function selectCursor() {
		var cur : hxd.Cursor = defaultCursor;
		for ( o in overList ) {
			if ( o.cursor != null ) {
				cur = o.cursor;
				break;
			}
		}
		switch( cur ) {
		case Callback(f): f();
		default: hxd.System.setCursor(cur);
		}
	}

	function onEvent( e : hxd.Event ) {
		if( !enablePhysicalMouse && e.kind == EMove ) return;
		pendingEvents.push(e);
	}

	function dispatchListeners( event : hxd.Event ) {
		var ox = event.relX, oy = event.relY;
		event.propagate = true;
		for( s in scenes ) {
			event.cancel = false;
			s.dispatchListeners(event);
			event.relX = ox;
			event.relY = oy;
			if( !event.propagate ) break;
		}
	}

}