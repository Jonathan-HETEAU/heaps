package h3d.prim;

/**
	A primitive whose vertex inputs can be spread over several buffers (for instance a base geometry buffer plus an
	extra buffer of tangents or per-vertex colors added later).
**/
class MeshPrimitive extends Primitive {

	var buffers : Array<h3d.Buffer>;
	var formats : hxd.BufferFormat.MultiFormat;

	/**
		Tells if one of the buffers provides the vertex input `name` (such as `"normal"` or `"uv"`).
	**/
	public function hasInput( name : String ) {
		return resolveBuffer(name) != null;
	}

	/**
		Returns the buffer providing the vertex input `name`, or `null`.
	**/
	public function resolveBuffer( name : String ) {
		if( buffers != null ) {
			for( b in buffers )
				if( b.format.hasInput(name) )
					return b;
			return null;
		}
		if( buffer != null && buffer.format.hasInput(name) )
			return buffer;
		return null;
	}

	/**
		Removes an additional buffer.
	**/
	public function removeBuffer( buf : h3d.Buffer ) {
		if( buffers != null ) {
			buffers.remove(buf);
			if( buf == buffer )
				buffer = buffers[buffers.length - 1];
			if( buffers.length == 1 ) {
				buffers = null;
				formats = null;
			}
		} else if( buffer == buf ) {
			buffer = null;
		}
	}

	/**
		Adds a buffer providing additional vertex inputs (with the same number of vertexes).
	**/
	public function addBuffer( buf : h3d.Buffer ) {
		if( buffer == null )
			buffer = buf;
		else {
			if( buffers == null ) {
				if( buf == buffer ) throw "Duplicate addBuffer()";
				buffers = [buffer];
			} else if( buffers.indexOf(buf) >= 0 )
				throw "Duplicate addBuffer()";
			buffers.unshift(buf);
			formats = hxd.BufferFormat.MultiFormat.make([for( b in buffers ) b.format]);
		}
	}


	override public function dispose() {
		super.dispose();
		if( buffers != null ) {
			for( b in buffers )
				b.dispose();
			buffers = null;
			formats = null;
		}
	}

	override function render( engine : h3d.Engine ) {
		if( indexes == null || indexes.isDisposed() || buffer == null || buffer.isDisposed() )
			alloc(engine);
		if( buffers != null )
			engine.renderMultiBuffers(formats, buffers, indexes);
		else
			engine.renderIndexed(buffer, indexes);
	}

}