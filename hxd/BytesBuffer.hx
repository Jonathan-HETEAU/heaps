package hxd;

/**
	A growable byte buffer for writing binary data.
**/
abstract BytesBuffer(haxe.io.BytesOutput) {

	/**
		The number of bytes written.
	**/
	public var length(get, never) : Int;

	/**
		Creates an empty buffer.
	**/
	public inline function new() {
		this = new haxe.io.BytesOutput();
	}

	/**
		Creates a buffer from an array of bytes.
	**/
	public static inline function fromU8Array(arr:Array<Int>) {
		var v = new BytesBuffer();
		for ( i in 0...arr.length)
			v.writeByte( arr[i] );
		return v;
	}

	/**
		Creates a buffer from an array of 32-bit integers.
	**/
	public static inline function fromIntArray(arr:Array<Int>) {
		var v = new BytesBuffer();
		for ( i in 0...arr.length)
			v.writeInt32(arr[i]);
		return v;
	}

	/**
		Writes a byte.
	**/
	public inline function writeByte( v : Int ) {
		this.writeByte(v&255);
	}

	/**
		Writes a 32-bit float.
	**/
	public inline function writeFloat( v : Float ) {
		this.writeFloat(v);
	}

	/**
		Writes a 32-bit integer.
	**/
	public inline function writeInt32( v : Int ) {
		this.writeInt32(v);
	}

	/**
		Returns the bytes written.
	**/
	public inline function getBytes() : haxe.io.Bytes {
		return this.getBytes();
	}

	inline function get_length() {
		return this.length;
	}

}

