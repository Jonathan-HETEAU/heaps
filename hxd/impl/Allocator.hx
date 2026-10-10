package hxd.impl;

/**
	The kind of buffer requested from an `Allocator`.
**/
enum abstract BufferFlags(Int) {
	/**
		A vertex buffer updated often.
	**/
	public var Dynamic = 0;
	/**
		A vertex buffer uploaded once.
	**/
	public var Static = 1;
	/**
		A uniform buffer updated often.
	**/
	public var UniformDynamic = 2;
	/**
		A uniform buffer that shaders can write.
	**/
	public var UniformReadWrite = 3;
	/**
		A uniform buffer.
	**/
	public var Uniform = 4;
	/**
		Returns the integer value of the flags.
	**/
	public inline function toInt() : Int {
		return this;
	}
}

/**
	Allocates the GPU buffers and CPU arrays used by the engine. The default implementation creates new ones every time; subclasses such as `CacheAllocator` reuse them.
	Use `Allocator.set` to change the allocator used by the engine.
**/
class Allocator {

	/**
		Creates an allocator.
	**/
	public function new() {
	}

	// GPU

	function toBufferFlags(flags : BufferFlags) : Array<h3d.Buffer.BufferFlag> {
		return switch( flags ) {
		case Static: null;
		case Dynamic: [Dynamic];
		case UniformDynamic: [UniformBuffer,Dynamic];
		case UniformReadWrite: [UniformBuffer, ReadWriteBuffer];
		case Uniform: [UniformBuffer];
		}
	}

	function fromBufferFlags(flags : haxe.EnumFlags<h3d.Buffer.BufferFlag>) : BufferFlags {
		if ( flags.toInt() == 0 )
			return Static;
		if ( flags == Dynamic )
			return Dynamic;
		if ( flags == haxe.EnumFlags.ofInt((1 << h3d.Buffer.BufferFlag.UniformBuffer.getIndex()) | (1 << h3d.Buffer.BufferFlag.Dynamic.getIndex())) )
			return UniformDynamic;
		if ( flags == haxe.EnumFlags.ofInt((1 << h3d.Buffer.BufferFlag.UniformBuffer.getIndex()) | (1 << h3d.Buffer.BufferFlag.ReadWriteBuffer.getIndex())) )
			return UniformReadWrite;
		if ( flags == UniformBuffer )
			return Uniform;
		return Dynamic;
	}

	/**
		Allocates a GPU buffer of `vertices` vertices of the given format.
	**/
	public function allocBuffer( vertices : Int, format, flags : BufferFlags = Dynamic ) : h3d.Buffer {
		return new h3d.Buffer(vertices, format, toBufferFlags(flags));
	}

	/**
		Allocates a GPU buffer and uploads all the floats to it.
	**/
	public function ofFloats( v : hxd.FloatBuffer, format : hxd.BufferFormat, flags : BufferFlags = Dynamic ) {
		var nvert = Math.ceil(v.length / format.stride);
		return ofSubFloats(v, nvert, format, flags);
	}

	/**
		Allocates a GPU buffer of `vertices` vertices and uploads them from the floats.
	**/
	public function ofSubFloats( v : hxd.FloatBuffer, vertices : Int, format, flags : BufferFlags = Dynamic ) {
		var b = allocBuffer(vertices, format, flags);
		b.uploadFloats(v, 0, vertices);
		return b;
	}

	/**
		Releases a GPU buffer allocated by this allocator.
	**/
	public function disposeBuffer( b : h3d.Buffer ) {
		b.dispose();
	}

	/**
		Allocates a GPU index buffer of `count` indexes (16 or 32 bits).
	**/
	public function allocIndexBuffer( count : Int, is32 : Bool = false ) {
		return new h3d.Indexes(count, is32);
	}

	/**
		Allocates a GPU index buffer and uploads `length` indexes to it (all by default).
	**/
	public function ofIndexes( ib: hxd.IndexBuffer, length = -1) {
		if( length < 0 && ib != null ) length = ib.length;
		var idx = allocIndexBuffer( length );
		idx.uploadIndexes(ib, 0, length);
		return idx;
	}

	/**
		Releases a GPU index buffer allocated by this allocator.
	**/
	public function disposeIndexBuffer( i : h3d.Indexes ) {
		i.dispose();
	}

	/**
		Called when the GPU context is lost: the cached buffers are no longer valid.
	**/
	public function onContextLost() {
	}

	// CPU

	/**
		Allocates a CPU float buffer.
	**/
	public function allocFloats( count : Int ) : hxd.FloatBuffer {
		return new hxd.FloatBuffer(count);
	}

	/**
		Releases a CPU float buffer.
	**/
	public function disposeFloats( f : hxd.FloatBuffer ) {
	}

	/**
		Allocates a CPU index buffer.
	**/
	public function allocIndexes( count : Int ) {
		return new hxd.IndexBuffer(count);
	}

	/**
		Releases a CPU index buffer.
	**/
	public function disposeIndexes( i : hxd.IndexBuffer ) {
	}

	static var inst : Allocator;
	/**
		Sets the allocator used by the engine.
	**/
	public static function set( a : Allocator ) {
		inst = a;
	}
	/**
		Returns the allocator used by the engine (a default `Allocator` if none was set).
	**/
	public static function get() : Allocator {
		if( inst == null ) inst = new Allocator();
		return inst;
	}

	/**
		Rounds `v` up to a power of two, or to a multiple of `limit` above it. Used to reduce the number of different buffer sizes.
	**/
	public static function roundPOT(v: Int, limit=1024*1024) {
		return if(v < limit)
			hxd.Math.nextPOT(v);
		else
			Math.ceil(v / limit) * limit;
	}
}
