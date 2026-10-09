package h3d;

/**
	A buffer of integer counters written by compute shaders and read back on the CPU.
**/
class GPUCounter {
	/**
		The GPU buffer, to bind to the compute shader.
	**/
	public var buffer(default, null) : h3d.Buffer;
	var accessor : haxe.io.Bytes;
	var size : Int;

	/**
		Allocates `size` counters.
	**/
	public function new( size : Int = 1 ) {
		this.size = size;
		var alloc = hxd.impl.Allocator.get();
		buffer = alloc.allocBuffer(size, hxd.BufferFormat.INDEX32, UniformReadWrite);
		accessor = haxe.io.Bytes.alloc(size << 2);
	}

	/**
		Releases the GPU buffer.
	**/
	public function dispose(){
		var alloc = hxd.impl.Allocator.get();
		alloc.disposeBuffer(buffer);
	}

	/**
		Reads all the counters from the GPU (synchronous, stalls until the GPU is done).
	**/
	public function getAll() : Array<Int> {
		buffer.readBytes(accessor, 0, size, 0);
		var res = [];
		res.resize(size);
		for ( i in 0...size )
			res[i] = accessor.getInt32(i << 2);
		return res;
	}

	/**
		Reads all the counters asynchronously and calls `callback` with their values.
	**/
	public function getAllAsync(callback : Array<Int> -> Void) {
		buffer.readBytesAsync(accessor, 0, size, 0, () -> {
			var res = [];
			res.resize(size);
			for ( i in 0...size )
				res[i] = accessor.getInt32(i << 2);

			callback(res);
		});
	}

	/**
		Reads the counter `index` from the GPU (synchronous).
	**/
	public function get( index : Int = 0 ) : Int {
		buffer.readBytes(accessor, 0, 1, index);
		return accessor.getInt32(0);
	}

	/**
		Sets all the counters to 0.
	**/
	public function reset() {
		for ( i in 0...size )
			accessor.setInt32(i << 2, 0);
		buffer.uploadBytes(accessor, 0, size);
	}
}