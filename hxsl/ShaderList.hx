package hxsl;

/**
	A linked list of shaders.
**/
class ShaderList {
	/**
		The shader.
	**/
	public var s : hxsl.Shader;
	/**
		The next element, or `null`.
	**/
	public var next : ShaderList;
	/**
		Creates an element for the shader, followed by `n`.
	**/
	public function new(s, ?n) {
		this.s = s;
		this.next = n;
	}
	/**
		Returns a copy of the list with cloned shaders, up to `last` (excluded).
	**/
	public function clone( ?last : ShaderList ) {
		if ( this == last )
			return null;
		return new ShaderList(s.clone(), next == null ? null : next.clone( last ));
	}
	/**
		Iterates over the shaders.
	**/
	public inline function iterator() {
		return new ShaderIterator(this,null);
	}
	/**
		Iterates over the shaders, up to the element `s` (excluded).
	**/
	public inline function iterateTo(s) {
		return new ShaderIterator(this,s);
	}

	/**
		Inserts the shader in the list sorted by ascending priority, and returns the new head of the list.
	**/
	public static function addSort( s : Shader, shaders : ShaderList ) {
		var prev = null;
		var hd = shaders;
		// sort by ascending priority
		while( hd != null && hd.s.priority < s.priority ) {
			prev = hd;
			hd = hd.next;
		}
		if( prev == null ) {
			var l = new ShaderList(s, shaders);
			checkSize(l);
			return l;
		}
		prev.next = new ShaderList(s, prev.next);
		checkSize(shaders);
		return shaders;
	}

	/**
		If greater than `0`, `addSort` throws when a list exceeds this size (to detect shader leaks).
	**/
	public static var MAX_LIST_SIZE = 0;
	/**
		When `MAX_LIST_SIZE` is set, `addSort` throws if this is disabled and the list contains the same shader twice in a row.
	**/
	public static var ALLOW_DUPLICATES = true;
	static function checkSize(list : ShaderList) {
		if(MAX_LIST_SIZE <= 0)
			return;
		var hd = list;
		var count = 0;
		while(hd != null) {
			if(!ALLOW_DUPLICATES && hd.next != null && hd.next.s == hd.s)
				throw "Duplicate shader " + Std.string(hd.s);
			++count;
			hd = hd.next;
		}
		if(count > MAX_LIST_SIZE)
			throw "Too many shaders";
	}
}

private class ShaderIterator {
	var l : ShaderList;
	var last : ShaderList;
	public inline function new(l,last) {
		this.l = l;
		this.last = last;
	}
	public inline function hasNext() {
		return l != last;
	}
	public inline function next() {
		var s = l.s;
		l = l.next;
		return s;
	}
}
