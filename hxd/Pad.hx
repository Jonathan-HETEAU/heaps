package hxd;

#if hl
#if hlsdl
import sdl.Event;
import sdl.GameController;
#elseif (usesys && !hlmesa)
import haxe.GameController;
#elseif hldx
import dx.GameController;
#else
private typedef Event = {
}
private class GameController {
	public static var NUM_AXES = 0;
	public static var NUM_BUTTONS = 0;
	public static var CONFIG : Dynamic = {};
	public var name : String;
	public var index : Int;
	public function getButtons() return 0;
	public function getAxis(i:Int) return 0;
	public function update() {}
	public function rumble( strength : Float, time : Float ) {}
	public static function init() {}
	public static function detect(_) {}
}
#end
#end

/**
	The mapping of the buttons and axes of a game pad: each field is the index of the button or axis in `Pad.buttons` and `Pad.values`.
	`names` gives a display name for each index.
**/
typedef PadConfig = {
	/**
		The axis of the left stick, horizontal.
	**/
	var analogX : Int;
	/**
		The axis of the left stick, vertical.
	**/
	var analogY : Int;
	/**
		The axis of the right stick, horizontal.
	**/
	var ranalogX : Int;
	/**
		The axis of the right stick, vertical.
	**/
	var ranalogY : Int;
	/**
		The A button (cross on DualShock).
	**/
	var A : Int;
	/**
		The B button (circle on DualShock).
	**/
	var B : Int;
	/**
		The X button (square on DualShock).
	**/
	var X : Int;
	/**
		The Y button (triangle on DualShock).
	**/
	var Y : Int;
	/**
		The left bumper (L1).
	**/
	var LB : Int;
	/**
		The right bumper (R1).
	**/
	var RB : Int;
	/**
		The left trigger (L2).
	**/
	var LT : Int;
	/**
		The right trigger (R2).
	**/
	var RT : Int;
	/**
		The back button (select, share).
	**/
	var back : Int;
	/**
		The start button (options).
	**/
	var start : Int;
	/**
		The click of the left stick (L3).
	**/
	var analogClick : Int;
	/**
		The click of the right stick (R3).
	**/
	var ranalogClick : Int;
	/**
		The up button of the directional pad.
	**/
	var dpadUp : Int;
	/**
		The down button of the directional pad.
	**/
	var dpadDown : Int;
	/**
		The left button of the directional pad.
	**/
	var dpadLeft : Int;
	/**
		The right button of the directional pad.
	**/
	var dpadRight : Int;
	/**
		The display names, by index.
	**/
	var names : Array<String>;
}

/**
	A game pad (controller). Use `Pad.wait` to be notified of connected pads, and read `buttons`, `values` and the axes every frame.
	`Pad.createDummy` returns an unconnected pad that can be used before a real one is connected.
**/
class Pad {

	#if hlsdl
	/**
		Works with both DualShock and XBox controllers
	**/
	public static var CONFIG_SDL = {
		analogX : 0,
		analogY : 1,
		ranalogX : 2,
		ranalogY : 3,
		A : 6,
		B : 7,
		X : 8,
		Y : 9,
		LB : 15,
		RB : 16,
		LT : 4,
		RT : 5,
		back : 10,
		start : 12,
		analogClick : 13,
		ranalogClick : 14,
		dpadUp : 17,
		dpadDown : 18,
		dpadLeft : 19,
		dpadRight : 20,
		names : ["LX","LY","RX","RY","LT","RT","A","B","X","Y","Back",null,"Start","LCLK","RCLK","LB","RB","DUp","DDown","DLeft","DRight"],
	};
	#end

	#if js
	/**
	 	Standard mapping
	**/
	public static var CONFIG_JS_STD = {
		A : 0,
		B : 1,
		X : 2,
		Y : 3,
		LB : 4,
		RB : 5,
		LT : 6,
		RT : 7,
		back : 8,
		start : 9,
		analogClick : 10,
		ranalogClick : 11,
		dpadUp : 12,
		dpadDown : 13,
		dpadLeft : 14,
		dpadRight : 15,
		analogX : 17,
		analogY : 18,
		ranalogX : 19,
		ranalogY : 20,
		names : ["A","B","X","Y","LB","RB","LT","RT","Select","Start","LCLK","RCLK","DUp","DDown","DLeft","DRight","LX","LY","RX","RY"],
	};
	/**
	  	Mapping for Dualshock 4
	**/
	public static var CONFIG_JS_DS4 = {
		A : 0,
		B : 1,
		X : 2,
		Y : 3,
		LB : 4,
		RB : 5,
		LT : 6,
		RT : 7,
		back : 8,
		start : 9,
		analogClick : 10,
		ranalogClick : 11,
		dpadUp : 12,
		dpadDown : 13,
		dpadLeft : 14,
		dpadRight : 15,
		analogX : 18,
		analogY : 19,
		ranalogX : 20,
		ranalogY : 21,
		names : ["A","B","X","Y","LB","RB","LT","RT","Select","Start","LCLK","RCLK","DUp","DDown","DLeft","DRight","LX","LY","RX","RY"],
	};
	/**
	  	Mapping for Dualshock 4 (Firefox)

		D-Pad isn't working
	**/
	public static var CONFIG_JS_DS4_FF = {
		A : 1,
		B : 2,
		X : 0,
		Y : 3,
		LB : 4,
		RB : 5,
		LT : 6, //21 for analog
		RT : 7, //22 for analog
		back : 8,
		start : 9,
		analogClick : 10,
		ranalogClick : 11,
		//touchpad button : 13
		dpadUp : 9000,
		dpadDown : 9000,
		dpadLeft : 9000,
		dpadRight : 9000,
		analogX : 18,
		analogY : 19,
		ranalogX : 20,
		ranalogY : 23,
		names : ["A","B","X","Y","LB","RB","LT","RT","Select","Start","LCLK","RCLK","DUp","DDown","DLeft","DRight","LX","LY","RX","RY"],
	};

	/**
		Returns the configuration matching the pad name reported by the browser.
	**/
	public static function pickConfig( name : String ) : PadConfig {
		return switch ( name ){
			//Chrome, DS4 - both revs
			case "Wireless Controller (STANDARD GAMEPAD Vendor: 054c Product: 05c4)" |
			"Wireless Controller (STANDARD GAMEPAD Vendor: 054c Product: 09cc)":
				return CONFIG_JS_DS4;
			//Firefox, DS4 - both revs
			case "054c-05c4-Wireless Controller" | "054c-09cc-Wireless Controller":
				return CONFIG_JS_DS4_FF;
			default:
				return CONFIG_JS_STD;
		}
	}
	#end

	#if hl
	/**
		The values at which an analog input (trigger or axis) is considered as pressed and released in `buttons`.
	**/
	public static var ANALOG_BUTTON_THRESHOLDS = { press: 0.3, release: 0.25 };
	#end

	/**
		The default configuration for the current platform.
	**/
	public static var DEFAULT_CONFIG : PadConfig =
		#if hlsdl CONFIG_SDL
		#elseif (hldx || usesys) GameController.CONFIG
		#elseif js  CONFIG_JS_STD
		#else ({}:Dynamic) #end;

	/**
		Tells if the pad is connected. It is `false` for a dummy pad and after a disconnection.
	**/
	public var connected(default, null) = true;
	/**
		The name of the pad, as reported by the system.
	**/
	public var name(get, never) : String;
	/**
		The index of the pad, or `-1` for a dummy pad.
	**/
	public var index : Int = -1;
	/**
		The mapping of the buttons and axes, used to read `buttons` and `values` by name, as in `pad.isDown(pad.config.A)`.
	**/
	public var config : PadConfig = DEFAULT_CONFIG;
	/**
		The X axis of the left stick, from `-1` to `1`. It is `0` when the stick is inside `axisDeadZone`.
	**/
	public var xAxis(get,never) : Float;
	/**
		The Y axis of the left stick, from `-1` to `1`. It is `0` when the stick is inside `axisDeadZone`.
	**/
	public var yAxis(get,never) : Float;
	/**
		The X axis of the right stick, from `-1` to `1`. It is `0` when the stick is inside `axisDeadZone`.
	**/
	public var rxAxis(get,never) : Float;
	/**
		The Y axis of the right stick, from `-1` to `1`. It is `0` when the stick is inside `axisDeadZone`.
	**/
	public var ryAxis(get,never) : Float;
	/**
		The radius around the center under which the sticks report `0`.
	**/
	public var axisDeadZone : Float = 0.1;
	/**
		The state of each button, indexed as in `config`.
	**/
	public var buttons : Array<Bool> = [];
	/**
		The value of each button (`0` to `1`) or axis (`-1` to `1`), indexed as in `config`.
	**/
	public var values : Array<Float> = [];
	/**
		The values of the previous frame.
	**/
	public var prevValues : Array<Float> = [];
	var prevButtons : Array<Bool> = [];
	var rawXAxis : Float = 0.;
	var rawYAxis : Float = 0.;
	var rawRXAxis : Float = 0.;
	var rawRYAxis : Float = 0.;

	function get_xAxis() {
		if( rawXAxis*rawXAxis + rawYAxis*rawYAxis < axisDeadZone*axisDeadZone ) return 0.;
		return rawXAxis;
	}

	function get_yAxis() {
		if( rawXAxis*rawXAxis + rawYAxis*rawYAxis < axisDeadZone*axisDeadZone ) return 0.;
		return rawYAxis;
	}

	function get_rxAxis() {
		if( rawRXAxis*rawRXAxis + rawRYAxis*rawRYAxis < axisDeadZone*axisDeadZone ) return 0.;
		return rawRXAxis;
	}

	function get_ryAxis() {
		if( rawRXAxis*rawRXAxis + rawRYAxis*rawRYAxis < axisDeadZone*axisDeadZone ) return 0.;
		return rawRYAxis;
	}

	/**
		Called when the pad is disconnected.
	**/
	public dynamic function onDisconnect(){
	}

	/**
		Tells if the button is down.
	**/
	public function isDown( button : Int ) {
		return buttons[button];
	}

	/**
		Tells if the button was pressed since the previous frame.
	**/
	public function isPressed( button : Int ) {
		return buttons[button] && !prevButtons[button];
	}

	/**
		Tells if the button was released since the previous frame.
	**/
	public function isReleased( button : Int ) {
		return !buttons[button] && prevButtons[button];
	}

	/**
		Resets all buttons and axes to their released state.
	**/
	public function reset() {
		rawXAxis = rawYAxis = 0;
		rawRXAxis = rawRYAxis = 0;
		for( i in 0...buttons.length ) buttons[i] = false;
		for( i in 0...buttons.length ) prevButtons[i] = false;
		for( i in 0...values.length ) values[i] = 0;
		for( i in 0...values.length ) prevValues[i] = 0;
	}

	/**
		Makes the pad vibrate with the given `strength` (`0` to `1`) for `time_s` seconds, if supported.
	**/
	public function rumble( strength : Float, time_s : Float ){
		#if hlsdl
		d.rumble( strength, Std.int(time_s*1000.) );
		#elseif (hldx || usesys)
		d.rumble( strength, time_s );
		#elseif js
		var d: Dynamic = d;
		var time = Std.int(time_s * 1000.);

		// FF and Safari
		if (d.hapticActuators != null && d.hapticActuators.length > 0) {
			d.hapticActuators[0].pulse(strength, time);
			return;
		}

		// Chrome
		if (d.vibrationActuator != null) {
			d.vibrationActuator.playEffect('dual-rumble', {
				duration: time,
				strongMagnitude: strength,
				weakMagnitude: strength,
			});
		}
		#end
	}

	function new() {
	}

	function get_name() {
		if( index < 0 ) return "Dummy GamePad";
		#if (hldx || hlsdl || usesys)
		return d.name;
		#elseif js
		return d.id;
		#else
		return "GamePad";
		#end
	}

	/**
		Creates a new dummy unconnected game pad, which can be used instead of checking for null everytime. Use wait() to get real physical game pad access.
	**/
	public static function createDummy() {
		var p = new Pad();
		p.connected = false;
		return p;
	}

	static var waitPad : Pad -> Void;
	static var initDone = false;

	#if js
	var d : js.html.Gamepad;
	static var pads : Map<Int, hxd.Pad> = new Map();
	#elseif (hldx || hlsdl || usesys)
	var d : GameController;
	static var pads : Map<Int, hxd.Pad> = new Map();
	#end

	/**
		Wait until a gamepad gets connected. On some platforms, this might require the user to press a button until it activates
	**/
	public static function wait( onPad : Pad -> Void ) {
		#if js
		if( !js.Browser.supported )
			return;
		#end
		waitPad = onPad;
		#if hlsdl
		if( !initDone ) {
			initDone = true;
			#if (hlsdl >= version("1.16.0"))
			var sticks = sdl.Sdl.getJoysticks();
			for( stick in sticks )
				initPad( stick );
			#else
			var c = @:privateAccess GameController.gctrlCount();
			for( idx in 0...c )
				initPad( idx );
			#end
			haxe.MainLoop.add(syncPads, -1);
		}
		#elseif (hldx || usesys)
		if( !initDone ){
			initDone = true;
			GameController.init();
			haxe.MainLoop.add(syncPads, -1);
		}
		#elseif js
		if( !initDone ) {
			initDone = true;
			js.Browser.window.addEventListener("gamepadconnected", function(p) {
				var pad = new hxd.Pad();
				pad.d = p.gamepad;
				pad.config = pickConfig(pad.d.id);
				pad.index = pad.d.index;
				pads.set(pad.d.index, pad);
				waitPad(pad);
			});
			js.Browser.window.addEventListener("gamepaddisconnected", function(p) {
				var pad = pads.get(p.gamepad.index);
				if( pad == null ) return;
				pads.remove(p.gamepad.index);
				pad.connected = false;
				pad.onDisconnect();
			});
			#if !manual_sync_pad
			haxe.MainLoop.add(syncPads, -1);
			#end
		}
		#end
	}

	#if hl
	inline function _setButton( btnId : Int, down : Bool ){
		buttons[ btnId ] = down;
		values[ btnId ] = down ? 1 : 0;
	}

	function _detectAnalogButton(index: Int, v: Float) {
		v = Math.abs(v);
		var absValue = Math.abs(values[index]);
		if(v > ANALOG_BUTTON_THRESHOLDS.press && v > absValue) {
			buttons[ index ] = true;
		}
		if(v < ANALOG_BUTTON_THRESHOLDS.release && v < absValue) {
			buttons[ index ] = false;
		}
	}
	#end

	#if hlsdl

	inline function _setAxis( axisId : Int, value : Int ){
		var v = value / 0x7FFF;

		_detectAnalogButton(axisId, v);

		// Invert Y axis
		if( axisId == 1 || axisId == 3 )
			values[ axisId ] = -v;
		else
			values[ axisId ] = v;

		if( axisId == 0 )
			rawXAxis = v;
		else if( axisId == 1 )
			rawYAxis = v;
		else if( axisId == 2 )
			rawRXAxis = v;
		else if( axisId == 3 )
			rawRYAxis = v;
	}

	static function initPad( index ){
		var sp = new GameController( index );
		if( @:privateAccess sp.ptr == null )
			return;
		var p = new hxd.Pad();
		p.index = sp.id;
		p.d = sp;
		var prev = pads.get( p.index );
		if (prev != null) {
			pads.remove( p.index );
			prev.d.close();
			prev.connected = false;
			prev.onDisconnect();
		}
		pads.set( p.index, p );
		for( axis in 0...6 )
			p._setAxis( axis, sp.getAxis(axis) );
		for( button in 0...15 )
			p._setButton( button + 6, sp.getButton(button) );
		waitPad( p );
	}

	static function onEvent( e : Event ){
		var p = pads.get( e.controller );
		switch( e.type ){
			case GControllerAdded:
				if( initDone )
					initPad(e.controller);
			case GControllerRemoved:
				if( p != null ){
					pads.remove( p.index );
					p.d.close();
					p.connected = false;
					p.onDisconnect();
				}
			case GControllerDown:
				if( p != null && e.button > -1 )
					p._setButton( e.button + 6, true );
			case GControllerUp:
				if( p != null && e.button > -1 )
					p._setButton( e.button + 6, false );
			case GControllerAxis:
				if( p != null && e.button > -1 && e.button < 6 )
					p._setAxis( e.button, e.value );
			default:
		}
	}

	static function syncPads(){
		for( p in pads ) {
			for( i in 0...p.buttons.length )
				p.prevButtons[i] = p.buttons[i];
			for( i in 0...p.values.length )
				p.prevValues[i] = p.values[i];
		}
	}

	#elseif (hldx || usesys)

	static function syncPads(){
		GameController.detect(onDetect);
		for( p in pads ){
			p.d.update();
			var k = p.d.getButtons();
			for( i in 0...GameController.NUM_BUTTONS ){
				p.prevButtons[i] = p.buttons[i];
				p.prevValues[i] = p.values[i];
				p._setButton(i, k & (1 << i) != 0);
			}

			for( i in 0...GameController.NUM_AXES ){
				var ii = GameController.NUM_BUTTONS + i;
				var v = p.d.getAxis(i);
				p.prevButtons[ii] = p.buttons[ii];
				p._detectAnalogButton(ii, v);
				p.prevValues[ii] = p.values[ii];
				p.values[ii] = v;
				if( ii == GameController.CONFIG.analogX )
					p.rawXAxis = v;
				else if( ii == GameController.CONFIG.analogY )
					p.rawYAxis = -v;
				else if( ii == GameController.CONFIG.ranalogX )
					p.rawRXAxis = v;
				else if( ii == GameController.CONFIG.ranalogY )
					p.rawRYAxis = -v;
			}
		}
	}

	static function onDetect( d : GameController, active : Bool ){
		if( active ){
			var p = new hxd.Pad();
			p.d = d;
			p.index = p.d.index;
			pads.set(p.index, p);
			waitPad(p);
		}else{
			for( p in pads ){
				if( p.d == d ){
					pads.remove(p.index);
					p.connected = false;
					p.onDisconnect();
					break;
				}
			}
		}
	}

	#elseif js

	static function syncPads() {
		var freshPads : Array<js.html.Gamepad> = [];
		try freshPads = js.Browser.navigator.getGamepads() catch( e : Dynamic ) {};
		if ( freshPads.length > 0 ) {
			for ( i in 0...freshPads.length ) {
				if ( pads[i] != null ) {
					pads[i].d = freshPads[i];
				}
			}
		}
		for( p in pads ) {
			for( i in 0...p.d.buttons.length ) {
				p.prevButtons[i] = p.buttons[i];
				p.buttons[i] = p.d.buttons[i].pressed;
				p.prevValues[i] = p.values[i];
				p.values[i] = p.d.buttons[i].value;
			}
			for( i in 0...p.d.axes.length >> 1 ) {
				var x = p.d.axes[i << 1];
				var y = p.d.axes[(i << 1) + 1]; // y neg !;
				var ii = (i << 1) + p.d.buttons.length;
				p.prevValues[ii] = p.values[ii];
				p.prevValues[ii + 1] = p.values[ii + 1];
				p.values[ii] = x;
				p.values[ii + 1] = -y;
				if( i == 0 ) {
					p.rawXAxis = x;
					p.rawYAxis = y;
				}
				else if( i == 1 ) {
					p.rawRXAxis = x;
					p.rawRYAxis = y;
				}
			}
		}
	}

	#end

}
