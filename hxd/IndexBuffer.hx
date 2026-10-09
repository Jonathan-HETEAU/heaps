package hxd;

private typedef InnerData = Array<hxd.impl.UInt16>;

private class InnerIterator {
	var b : InnerData;
	var len : Int;
	var pos : Int;
	public inline function new( b : InnerData )  {
		this.b = b;
		this.len = this.b.length;
		this.pos = 0;
	}
	public inline function hasNext() {
		return pos < len;
	}
	public inline function next() : Int {
		return b[pos++];
	}
}

/**
	A growable array of integer indexes, used to build index data.
**/
abstract IndexBuffer(InnerData) {

	/**
		The number of indexes.
	**/
	public var length(get, never) : Int;

	/**
		Creates a buffer of `length` zeros.
	**/
	public inline function new(length = 0) {
		#if js
		this = js.Syntax.construct(Array, length);
		#else
		this = new InnerData();
		if( length > 0 ) grow(length);
		#end
	}

	/**
		Adds an index at the end.
	**/
	public inline function push( v : Int ) {
		this.push(v);
	}

	/**
		Makes the buffer at least `v` indexes long, filling with zeros.
	**/
	public inline function grow( v : Int ) {
		#if js
		while( this.length < v ) this.push(0);
		#else
		if( v > this.length ) this[v - 1] = 0;
		#end
	}

	/**
		Changes the length to `v`, truncating or filling with zeros.
	**/
	public inline function resize( v : Int ) {
		#if js
		this.resize(v);
		#else
		if( this.length > v ) this.resize(v) else grow(v);
		#end
	}

	@:arrayAccess inline function arrayRead(key:Int) : Int {
		return this[key];
	}

	@:arrayAccess inline function arrayWrite(key:Int, value : Int) : Int {
		return this[key] = value;
	}

	/**
		Returns the native array.
	**/
	public inline function getNative() : InnerData {
		return this;
	}

	/**
		Returns an iterator on the indexes.
	**/
	public inline function iterator() {
		return new InnerIterator(this);
	}

	inline function get_length() : Int {
		return this.length;
	}

}