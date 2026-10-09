package h3d.prim;

/**
	A primitive whose geometry is rebuilt often (for instance every frame, see `h3d.scene.Trail`): fill the buffers
	returned by `getBuffer` and `getIndexes`, then call `flush` to upload them.
**/
class DynamicPrimitive extends Primitive {

	var vbuf : hxd.FloatBuffer;
	var ibuf : hxd.IndexBuffer;
	var vsize : Int;
	var isize : Int;
	var format : hxd.BufferFormat;

	/** Minimum number of elements in vertex buffer **/
	public var minVSize = 0;
	/** Minimum number of elements in index index buffer **/
	public var minISize = 0;

	/**
		The bounds of the geometry, to be updated by the user.
	**/
	public var bounds = new h3d.col.Bounds();

	/**
		Creates an empty dynamic primitive with the given vertex format.
	**/
	public function new( format ) {
		this.format = format;
	}

	override function getBounds() {
		return bounds;
	}

	/**
		Returns a vertex buffer large enough for `vertices` vertexes, to fill before `flush`.
	**/
	public function getBuffer( vertices : Int ) {
		if( vbuf == null ) vbuf = hxd.impl.Allocator.get().allocFloats(vertices * format.stride) else vbuf.grow(vertices * format.stride);
		vsize = vertices;
		return vbuf;
	}

	/**
		Returns an index buffer large enough for `count` indexes, to fill before `flush`.
	**/
	public function getIndexes( count : Int ) {
		if( ibuf == null ) ibuf = hxd.impl.Allocator.get().allocIndexes(count) else ibuf.grow(count);
		isize = count;
		return ibuf;
	}

	/**
		Uploads the vertexes and indexes filled since the last call.
	**/
	public function flush() {
		var alloc = hxd.impl.Allocator.get();
		if( vsize == 0 || isize == 0 ) {
			if( buffer != null ) {
				alloc.disposeBuffer(buffer);
				buffer = null;
			}
			if( indexes != null ) {
				alloc.disposeIndexBuffer(indexes);
				indexes = null;
			}
			return;
		}

		if( buffer != null && (buffer.isDisposed() || buffer.vertices < vsize) ) {
			alloc.disposeBuffer(buffer);
			buffer = null;
		}
		if( indexes != null && (indexes.isDisposed() || indexes.count < isize) ) {
			alloc.disposeIndexBuffer(indexes);
			indexes = null;
		}

		if( buffer == null )
			buffer = alloc.allocBuffer(hxd.Math.imax(minVSize, vsize), format, Dynamic);
		if( indexes == null )
			indexes = alloc.allocIndexBuffer(hxd.Math.imax(minISize, isize));

		buffer.uploadFloats(vbuf, 0, vsize);
		indexes.uploadIndexes(ibuf, 0, isize);
	}

	override function dispose() {
		var alloc = hxd.impl.Allocator.get();
		if( buffer != null ) {
			alloc.disposeBuffer(buffer);
			buffer = null;
		}
		if( vbuf != null ) {
			alloc.disposeFloats(vbuf);
			vbuf = null;
		}
		if( ibuf != null ) {
			alloc.disposeIndexes(ibuf);
			ibuf = null;
		}
		super.dispose();
	}

	override function triCount() {
		return Std.int(isize / 3);
	}

	override public function render(engine:h3d.Engine) {
		if( buffer != null ) engine.renderIndexed(buffer, indexes, 0, triCount());
	}

}