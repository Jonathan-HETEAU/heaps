package hxd.impl;

/**
	The code position where a GPU resource (buffer, texture) was allocated, recorded to track memory leaks.
	Enabled with `h3d.impl.MemoryManager.enableTrackAlloc`.
**/
class AllocPos {

	static var ENABLED : Bool = false;

	/**
		The first position of the call stack outside of the engine packages (`file:line`).
	**/
	public var position : String;
	/**
		The positions of the call stack.
	**/
	public var stack : Array<String> = [];
	/**
		The packages skipped to find `position` (`hrt` is the Hide runtime).
	**/
	public static var ENGINE_PACKAGES = ["h3d","hxd","h2d","haxe","sys","hrt"];

	/**
		Records the current position, or returns `null` if the tracking is disabled.
	**/
	public static function make() {
		if ( !ENABLED )
			return null;
		return new AllocPos();
	}
	
	function new() {
		var curStack = haxe.CallStack.callStack();
		curStack.shift();
		for( s in curStack ) {
			switch( s ) {
			case FilePos(_,file,line,_):
				var idx = file.indexOf("\\std/");
				if( idx > 0 )
					file = file.substr(idx + 5);
				var pos = file+":"+line;
				stack.push(pos);
				if( position == null ){
					var p = file.indexOf("/");
					var pack = p < 0 ? "" : file.substr(0,p);
					if( ENGINE_PACKAGES.indexOf(pack) < 0 ) position = pos;
				}
			case Method(cl,meth):
				// TODO
			case CFunction, Module(_), LocalFunction(_):
				// skip
			}
		}
		if( position == null ) position = stack[0];
	}

}