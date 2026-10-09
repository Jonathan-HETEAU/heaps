package h3d;

/**
	A GPU index buffer: the vertex indexes of the triangles of a primitive (16-bit, or 32-bit with `is32`).
**/
@:forward(isDisposed, dispose, uploadBytes)
abstract Indexes(Buffer) to Buffer {

	/**
		The number of indexes.
	**/
	public var count(get,never) : Int;

	/**
		Allocates an index buffer of `count` indexes.
		@param is32 Uses 32-bit indexes, needed for more than 65536 vertexes.
	**/
	public function new(count:Int,is32=false) {
		this = new Buffer(count,is32 ? hxd.BufferFormat.INDEX32 : hxd.BufferFormat.INDEX16, [IndexBuffer]);
	}

	/**
		Uploads `indices` indexes of `ibuf`, starting at `bufPos`, to the position `startIndice` of the buffer (16-bit only).
	**/
	public function uploadIndexes( ibuf : hxd.IndexBuffer, bufPos : Int, indices : Int, startIndice = 0 ) {
		if( startIndice < 0 || indices < 0 || startIndice + indices > this.vertices )
			throw "Invalid indices count";
		if( @:privateAccess this.format.inputs[0].precision != F16 )
			throw "Can't upload indexes on a 32-bit buffer";
		if( indices == 0 )
			return;
		h3d.Engine.getCurrent().driver.uploadIndexData(this, startIndice, indices, ibuf, bufPos);
	}

	inline function get_count() return this.vertices;

	/**
		Creates a 16-bit index buffer from the content of `i`.
	**/
	public static function alloc( i : hxd.IndexBuffer, startPos = 0, length = -1 ) : Indexes {
		if( length < 0 ) length = i.length;
		var idx = new Indexes(length);
		idx.uploadIndexes(i, 0, length);
		return idx;
	}

	/**
		Uses a buffer created with an index format as index buffer.
	**/
	public static function ofBuffer( b : Buffer ) : Indexes {
		return cast b;
	}

}