package h3d;

/**
	The flags of a `Buffer`, given at creation.
**/
enum BufferFlag {
	/**
		Indicate that the buffer content will be often modified.
	**/
	Dynamic;
	/**
		Used internaly
	**/
	NoAlloc;
	/**
		Used for shader input buffer
	**/
	UniformBuffer;
	/**
		Can be written
	**/
	ReadWriteBuffer;
	/**
		Used as index buffer
	**/
	IndexBuffer;
}

/**
	A GPU buffer: vertex data (with the layout given by `format`), index data, or data read by shaders.

	```haxe
	var buf = h3d.Buffer.ofFloats(floats, hxd.BufferFormat.POS3D_NORMAL_UV);
	```
**/
@:allow(h3d.impl.MemoryManager)
class Buffer {
	/**
		The counter used to give each buffer an `id`.
	**/
	public static var GUID = 0;
	/**
		A unique identifier of the buffer.
	**/
	public var id : Int;
	var allocPos : hxd.impl.AllocPos;
	var engine : h3d.Engine;
	var lastFrame : Int;

	@:allow(h3d.impl.Driver) var vbuf : h3d.impl.Driver.GPUBuffer;
	/**
		The number of elements (vertexes) of the buffer.
	**/
	public var vertices(default,null) : Int;
	/**
		The layout of one element.
	**/
	public var format(default,null) : hxd.BufferFormat;
	/**
		The flags given at creation.
	**/
	public var flags(default, null) : haxe.EnumFlags<BufferFlag>;

	/**
		Allocates a buffer of `vertices` elements of the given format (unless `NoAlloc` is set).
	**/
	public function new(vertices, format : hxd.BufferFormat, ?flags : Array<BufferFlag> ) {
		id = GUID++;
		this.vertices = vertices;
		this.format = format;
		this.flags = new haxe.EnumFlags();
		this.allocPos = hxd.impl.AllocPos.make();
		if( flags != null )
			for( f in flags )
				this.flags.set(f);
		engine = h3d.Engine.getCurrent();
		if( !this.flags.has(NoAlloc) )
			@:privateAccess engine.mem.allocBuffer(this);
	}

	/**
		Returns the size of the buffer, in bytes.
	**/
	public inline function getMemSize() {
		return vertices * format.strideBytes;
	}

	/**
		Tells if the GPU memory of the buffer is released.
	**/
	public inline function isDisposed() {
		return vbuf == null;
	}

	/**
		Releases the GPU memory of the buffer.
	**/
	public function dispose() {
		if( vbuf != null ) {
			@:privateAccess engine.mem.freeBuffer(this);
			vbuf = null;
		}
	}

	/**
		Uploads `vertices` elements from `buf`, starting at the float `bufPos`, to the element `startVertice` of the buffer.
		Values are converted for the low precision inputs of the format.
	**/
	public function uploadFloats( buf : hxd.FloatBuffer, bufPos : Int, vertices : Int, startVertice = 0 ) {
		if( startVertice < 0 || vertices < 0 || startVertice + vertices > this.vertices )
			throw "Invalid vertices count";
		if( vertices == 0 )
			return;
		if( format.hasLowPrecision ) {
			var bytes = haxe.io.Bytes.alloc(vertices * format.strideBytes);
			var bytesPos : Int = 0;
			var index : Int = bufPos;

			var inputs = format.getInputs();
			for ( _ in 0...vertices ) {
				@:privateAccess inputs.current = 0;
				for ( input in inputs ) {
					var elementCount = input.type.getSize();
					var step = 0;
					switch ( input.precision ) {
						case F32 :
							for ( i in 0...elementCount ) {
								bytes.setFloat( bytesPos + step, buf[index++] );
								step += 4;
							}
						case F16 :
							for ( i in 0...elementCount ) {
								var f = hxd.BufferFormat.float32to16(buf[index++]);
								bytes.setUInt16( bytesPos + step, f );
								step += 2;
							}
						case U8 :
							for ( i in 0...elementCount ) {
								var f = hxd.BufferFormat.float32toU8(buf[index++]);
								bytes.set( bytesPos + step, f );
								step++;
							}
						case S8 :
							for ( i in 0...elementCount ) {
								var f = hxd.BufferFormat.float32toS8(buf[index++]);
								bytes.set( bytesPos + step, f );
								step++;
							}
					}
					// 4 bytes align
					bytesPos += input.getBytesSize();
					if ( bytesPos & 3 != 0 ) bytesPos += ( 4 - (bytesPos & 3) );
				}
			}
			uploadBytes(bytes, 0, vertices, startVertice);
			return;
		}
		engine.driver.uploadBufferData(this, startVertice, vertices, buf, bufPos);
	}

	/**
		Uploads `vertices` elements from `data`, starting at the byte `dataPos`, to the element `startVertice` of the buffer.
	**/
	public function uploadBytes( data : haxe.io.Bytes, dataPos : Int, vertices : Int, startVertice : Int = 0 ) {
		if( startVertice < 0 || vertices < 0 || startVertice + vertices > this.vertices )
			throw "Invalid vertices count";
		if( vertices == 0 )
			return;
		engine.driver.uploadBufferBytes(this, startVertice, vertices, data, dataPos);
	}

	/**
		Reads `vertices` elements from the GPU (synchronous) into `bytes`.
	**/
	public function readBytes( bytes : haxe.io.Bytes, bytesPosition : Int, vertices : Int, startVertice : Int = 0 ) {
		if( startVertice < 0 || vertices < 0 || startVertice + vertices > this.vertices )
			throw "Invalid vertices count";
		engine.driver.readBufferBytes(this, startVertice, vertices, bytes, bytesPosition);
	}

	/**
		Reads `vertices` elements from the GPU into `bytes` asynchronously, then calls `callback`.
	**/
	public function readBytesAsync( bytes : haxe.io.Bytes, bytesPosition : Int, vertices : Int, startVertice : Int = 0, callback : Void -> Void ) {
		if( startVertice < 0 || vertices < 0 || startVertice + vertices > this.vertices )
			throw "Invalid vertices count";
		engine.driver.readBufferBytesAsync(this, startVertice, vertices, bytes, bytesPosition, callback);
	}

	/**
		Returns the bindless handle of the buffer (requires a driver supporting it).
	**/
	public function getHandle() : h3d.BufferHandle {
		return engine.driver.getBufferHandle(this);
	}

	/**
		Creates a buffer holding the floats of `v`.
	**/
	public static function ofFloats( v : hxd.FloatBuffer, format : hxd.BufferFormat, ?flags ) {
		var nvert = Math.ceil(v.length / format.stride);
		var b = new Buffer(nvert, format, flags);
		b.uploadFloats(v, 0, nvert);
		return b;
	}

	/**
		Creates a buffer holding the first `vertices` elements of `v`.
	**/
	public static function ofSubFloats( v : hxd.FloatBuffer, vertices : Int, format : hxd.BufferFormat, ?flags ) {
		var b = new Buffer(vertices, format, flags);
		b.uploadFloats(v, 0, vertices);
		return b;
	}

}
