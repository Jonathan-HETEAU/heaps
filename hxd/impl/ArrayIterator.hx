package hxd.impl;

/**
	An inlined iterator over an array.
**/
@:generic class ArrayIterator<T> {
	var i : Int;
	var l : Int;
	var a : Array<T>;
	/**
		Creates an iterator over the array.
	**/
	public inline function new(a) {
		this.i = 0;
		this.a = a;
		this.l = this.a.length;
	}
	/**
		Tells if there is an element left.
	**/
	public inline function hasNext() {
		return i < l;
	}
	/**
		Returns the next element.
	**/
	public inline function next() : T {
		return a[i++];
	}
}