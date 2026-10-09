package hxd;

/**
	A list of callbacks updated every frame, to run code after a delay or until a condition is met.
	Call `update` every frame.

	```haxe
	var waits = new hxd.WaitEvent();
	waits.wait(2.0, () -> trace("2 seconds later"));
	// in update: waits.update(dt);
	```
**/
class WaitEvent {

	var updateList : Array<Float -> Bool> ;

	/**
		Creates an empty list.
	**/
	public function new() {
		updateList = [];
	}

	/**
		Tells if there are callbacks waiting.
	**/
	public inline function hasEvent() {
		return updateList.length > 0;
	}

	/**
		Removes all the callbacks.
	**/
	public function clear() {
		updateList = [];
	}

	/**
		Adds a callback called every update with the elapsed time; it is removed when it returns `true`.
	**/
	public function add( callb ) {
		updateList.push(callb);
	}

	/**
		Removes a callback added with `add`.
	**/
	public function remove( callb : Float->Bool ) {
		for( e in updateList )
			if( Reflect.compareMethods(e, callb) ) {
				updateList.remove(e);
				return true;
			}
		return false;
	}

	/**
		Calls `callb` once after `time` seconds.
	**/
	public function wait( time : Float, callb : Void -> Void ) {
		function tmp(dt:Float) {
			time -= dt;
			if( time < 0 ) {
				callb();
				return true;
			}
			return false;
		}
		updateList.push(tmp);
	}

	/**
		Same as `add`: `callb` is called every update until it returns `true`.
	**/
	public function waitUntil( callb ) {
		updateList.push(callb);
	}

	/**
		Updates the callbacks with the elapsed time `dt`, in seconds.
	**/
	public function update(dt:Float) {
		var i = 0;
		var max = updateList.length;
		while (i < updateList.length) {
			if( i == max ) break;
			var f = updateList[i];
			if(f(dt)) {
				updateList.remove(f);
				max--;
			} else
				++i;
		}
	}
}